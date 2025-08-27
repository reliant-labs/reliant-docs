.PHONY: help dev build clean serve install

# Default target
help:
	@echo "Available commands:"
	@echo "  make dev         - Start Hugo development server with dev config"
	@echo "  make serve       - Start Hugo development server with production config"
	@echo "  make build       - Build site for production"
	@echo "  make clean       - Clean build artifacts"
	@echo "  make install     - Install Hugo if not present"
	@echo "  make help        - Show this help message"
	@echo ""
	@echo "PR Preview Testing:"
	@echo "  make preview     - Build + serve production locally"
	@echo "  make preview-pr  - Test PR preview build locally"
	@echo "  make test-build  - Quick production build test"

# Development server (uses hugo.dev.toml)
dev:
	@echo "🚀 Starting Hugo development server..."
	@echo "📖 Site will be available at: http://localhost:1313/"
	@echo "📁 Using development configuration (hugo.dev.toml)"
	@echo "🔄 Press Ctrl+C to stop"
	@hugo server --config hugo.dev.toml --port 1313

# Development server with production config (for testing production build locally)
serve:
	@echo "🚀 Starting Hugo server with production config..."
	@echo "📖 Site will be available at: http://localhost:1313/reliant-docs/"
	@echo "📁 Using production configuration (hugo.toml)"
	@echo "🔄 Press Ctrl+C to stop"
	@hugo server --bind 0.0.0.0 --port 1313

# Build for production
build:
	@echo "🔨 Building site for production..."
	@hugo --config hugo.toml
	@echo "✅ Build complete! Site is in the 'public/' directory"
	@echo "🌐 Deploy to: https://reliant-labs.github.io/reliant-docs/"

# Clean build artifacts
clean:
	@echo "🧹 Cleaning build artifacts..."
	@rm -rf public/
	@rm -rf resources/
	@rm -rf .hugo_cache/
	@echo "✅ Clean complete!"

# Install Hugo if not present
install:
	@if ! command -v hugo &> /dev/null; then \
		echo "📦 Installing Hugo..."; \
		if command -v brew &> /dev/null; then \
			brew install hugo; \
		elif command -v snap &> /dev/null; then \
			sudo snap install hugo; \
		else \
			echo "❌ Please install Hugo manually: https://gohugo.io/installation/"; \
			exit 1; \
		fi \
	else \
		echo "✅ Hugo is already installed: $(hugo version)"; \
	fi

# Quick check if Hugo is working
check:
	@echo "🔍 Checking Hugo installation..."
	@hugo version
	@echo "✅ Hugo is working correctly!"

# Build and serve production locally (for final testing)
preview: build
	@echo "🔍 Starting preview server..."
	@echo "📖 Production build available at: http://localhost:1313/reliant-docs/"
	@cd public && python3 -m http.server 1313 --bind 0.0.0.0

# Test PR preview build locally (simulates GitHub Pages preview)
preview-pr:
	@echo "🔍 Building PR preview locally..."
	@echo "📁 This simulates what will be deployed for PR previews"
	@hugo --config hugo.toml --baseURL "/preview-test/"
	@echo "✅ PR preview build complete!"
	@echo "📖 Test at: http://localhost:1313/preview-test/"
	@cd public && python3 -m http.server 1313 --bind 0.0.0.0

# Quick build test (no server)
test-build:
	@echo "🧪 Testing production build..."
	@hugo --config hugo.toml
	@echo "✅ Build test successful!"
	@echo "📁 Output in: public/"
