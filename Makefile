.PHONY: help dev build clean serve install setup setup-submodules

# Default target
help:
	@echo "Available commands:"
	@echo "  make setup       - Initial setup (install Hugo + init submodules)"
	@echo "  make dev         - Start Hugo development server with dev config"
	@echo "  make serve       - Start Hugo development server with production config"
	@echo "  make build       - Build site for production"
	@echo "  make clean       - Clean build artifacts"
	@echo "  make install     - Install Hugo if not present"
	@echo "  make setup-submodules - Initialize Git submodules (theme)"
	@echo "  make help        - Show this help message"
	@echo ""
	@echo "Testing:"
	@echo "  make preview     - Build + serve production locally"
	@echo "  make test-build  - Quick production build test"
	@echo "  make pr-check    - Full PR build check (CI simulation)"
	@echo ""
	@echo "Assets:"
	@echo "  make icons       - Generate favicon and icons from logo"

# Initial setup for new users
setup: install setup-submodules
	@echo "🎉 Setup complete! You can now run 'make dev' to start the development server"

# Initialize Git submodules (required for theme)
setup-submodules:
	@echo "🔧 Initializing Git submodules..."
	@if [ ! -d ".git" ]; then \
		echo "❌ Error: Not in a Git repository. Please run 'git init' first."; \
		exit 1; \
	fi
	@git submodule update --init --recursive
	@if [ ! -d "themes/lotusdocs/layouts" ]; then \
		echo "❌ Error: LotusDocs theme not found. Check submodule configuration."; \
		exit 1; \
	fi
	@echo "✅ Submodules initialized successfully!"

# Development server (uses hugo.dev.toml)
dev: setup-submodules
	@echo "🚀 Starting Hugo development server..."
	@echo "📖 Site will be available at: http://localhost:1313/"
	@echo "📁 Using development configuration (hugo.dev.toml)"
	@echo "🔄 Press Ctrl+C to stop"
	@hugo server --config hugo.dev.toml --port 1313

# Development server with production config (for testing production build locally)
serve: setup-submodules
	@echo "🚀 Starting Hugo server with production config..."
	@echo "📖 Site will be available at: http://localhost:1313/reliant-docs/"
	@echo "📁 Using production configuration (hugo.toml)"
	@echo "🔄 Press Ctrl+C to stop"
	@hugo server --port 1313

# Build for production
build: setup-submodules
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
	@cd public && python3 -m http.server 1313

# Quick build test (no server)
test-build: setup-submodules
	@echo "🧪 Testing production build..."
	@hugo --config hugo.toml
	@echo "✅ Build test successful!"
	@echo "📁 Output in: public/"

# PR build check (simulates CI build)
pr-check: setup-submodules
	@echo "🔍 Running PR build check..."
	@echo "📁 This simulates what GitHub Actions will do"
	@hugo --config hugo.toml --gc --minify --baseURL "/reliant-docs/"
	@echo "✅ Build completed successfully!"
	@echo ""
	@echo "📊 Build statistics:"
	@echo "Total files: $(find public/ -type f | wc -l)"
	@echo "HTML files: $(find public/ -name "*.html" | wc -l)"
	@echo "CSS files: $(find public/ -name "*.css" | wc -l)"
	@echo "JS files: $(find public/ -name "*.js" | wc -l)"
	@echo ""
	@echo "🧪 Verifying build artifacts..."
	@if [ ! -f "public/index.html" ]; then echo "❌ Error: Homepage not generated"; exit 1; fi
	@if [ ! -f "public/docs/index.html" ]; then echo "❌ Error: Docs index not generated"; exit 1; fi
	@echo "✅ All build artifacts verified!"
	@echo "🎉 PR build check passed!"

# Generate icons from logo
icons:
	@echo "🎨 Generating icons from logo..."
	@./tools/generate-icons.sh
