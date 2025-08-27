# Reliant AI Chat Documentation

A comprehensive documentation site built with Hugo and the LotusDocs theme for Reliant AI Chat - a powerful AI chat application for macOS.

## 🚀 Quick Start

### Prerequisites

- **Hugo Extended**: Version 0.146.0 or higher (you have v0.148.2+extended ✅)
- **Git**: For version control

### Local Development

1. **Clone the repository** (if you haven't already):
   ```bash
   git clone https://github.com/reliant-labs/reliant-docs.git
   cd reliant-docs
   ```

2. **Start the development server**:
   ```bash
   hugo server --buildDrafts --port 1313
   ```

3. **Open your browser** and navigate to `http://localhost:1313`

## 🏗️ Project Structure

```
reliant-docs/
├── content/                    # Documentation content
│   ├── docs/                  # Main documentation section
│   │   ├── _index.md         # Documentation overview
│   │   ├── getting-started/   # Getting started guides
│   │   ├── installation/      # Installation instructions
│   │   ├── using-the-app/    # Usage documentation
│   │   ├── settings-configuration/ # Configuration guides
│   │   ├── troubleshooting/   # Troubleshooting guides
│   │   ├── faq/              # Frequently asked questions
│   │   └── legal/            # Legal information
├── themes/                    # Hugo themes
│   └── lotusdocs/            # LotusDocs theme
├── static/                    # Static assets (images, logos)
├── layouts/                   # Custom layout templates
├── hugo.toml                 # Hugo configuration
└── README.md                 # This file
```

## 📚 Documentation Sections

### 🏠 Homepage (`layouts/index.html`)
- Overview of Reliant AI Chat
- Quick start guide with navigation cards
- Key features and capabilities
- Professional landing page design

### 📖 Documentation (`content/docs/`)
- **Getting Started**: First steps with Reliant
- **Installation**: macOS installation guide
- **Using the App**: Core functionality and features
- **Settings & Configuration**: App customization
- **Troubleshooting**: Common issues and solutions
- **FAQ**: Frequently asked questions
- **Legal**: Licensing and legal information

## 🎨 Theme Features

This site uses the **LotusDocs theme** which provides:

- **Responsive Design**: Works on all devices
- **Search Functionality**: Full-text search across all content
- **Dark Mode Toggle**: Switch between light and dark themes
- **Table of Contents**: Automatic TOC generation
- **Sidebar Navigation**: Easy navigation through sections
- **Material Design Icons**: Visual navigation cues
- **Professional Styling**: Clean, modern documentation design

## 🛠️ Customization

### Adding New Content

1. **Create new markdown files** in the appropriate `content/docs/` subdirectory
2. **Use Hugo front matter** for metadata:
   ```yaml
   ---
   title: "Your Page Title"
   description: "Page description for search engines"
   weight: 10
   icon: "icon_name"
   ---
   ```

3. **Use Hugo shortcodes** for enhanced content:
   - `{{< tabs >}}` for tabbed content
   - `{{< cards >}}` for card layouts
   - `{{< relref >}}` for internal links

### Modifying the Theme

- **Custom CSS**: Add to `assets/css/landing.css`
- **Custom layouts**: Create in `layouts/` directory
- **Custom shortcodes**: Add to `layouts/shortcodes/`

### Configuration

Edit `hugo.toml` to modify:
- Site title and description
- Menu structure
- Theme parameters
- Output formats

## 🚀 Deployment

### GitHub Pages

This project is configured for GitHub Pages deployment. The site will automatically build and deploy when you push to the main branch.

#### Automatic Deployment (Recommended)

1. **Push your changes** to the main branch:
   ```bash
   git add .
   git commit -m "Update documentation"
   git push origin main
   ```

2. **GitHub Actions** will automatically:
   - Build the Hugo site
   - Deploy to GitHub Pages
   - Update the live site

#### Manual Deployment

If you prefer manual deployment:

1. **Build the site**:
   ```bash
   hugo --minify
   ```

2. **Deploy to GitHub Pages**:
   ```bash
   git add .
   git commit -m "Update documentation"
   git push origin main
   ```

### GitHub Pages Configuration

1. **Repository Settings**: Go to Settings > Pages
2. **Source**: Select "GitHub Actions"
3. **Branch**: Main branch
4. **Custom Domain** (optional): Add your domain if you have one

## 🔧 Development Commands

```bash
# Start development server
hugo server --buildDrafts --port 1313

# Build for production
hugo --minify

# Build with drafts
hugo --buildDrafts

# Check for broken links
hugo --minify --gc --i18n-warnings --path-warnings

# Create new content
hugo new content/docs/section-name/page-name.md
```

## 📝 Content Guidelines

### Writing Style
- **Clear and concise**: Use simple, direct language
- **macOS-focused**: All instructions are for macOS users
- **Step-by-step**: Break complex processes into clear steps
- **Visual aids**: Use screenshots and diagrams when helpful

### Markdown Best Practices
- **Headers**: Use proper heading hierarchy (H1 → H2 → H3)
- **Links**: Use relative links with `{{< relref >}}` for internal content
- **Code blocks**: Specify language for syntax highlighting
- **Images**: Include alt text and captions

### SEO Optimization
- **Descriptive titles**: Clear, keyword-rich page titles
- **Meta descriptions**: Compelling summaries for search results
- **Internal linking**: Connect related content
- **Structured data**: Use appropriate HTML semantics

## 🤝 Contributing

### How to Contribute

1. **Fork the repository**
2. **Create a feature branch**: `git checkout -b feature/your-feature`
3. **Make your changes** following the content guidelines
4. **Test locally**: Ensure the site builds and displays correctly
5. **Submit a pull request** with a clear description of changes

### Content Types We Need

- **Tutorials**: Step-by-step guides for common tasks
- **Examples**: Real-world use cases and code samples
- **Troubleshooting**: Common issues and solutions
- **Configuration**: Advanced settings and customization

## 🆘 Getting Help

### Documentation Issues
- **GitHub Issues**: [Create an issue](https://github.com/reliant-labs/reliant-docs/issues)
- **Content Problems**: Report broken links, typos, or unclear content
- **Feature Requests**: Suggest new documentation sections or improvements

### Technical Support
- **Hugo Documentation**: [gohugo.io](https://gohugo.io)
- **LotusDocs Theme**: [GitHub repository](https://github.com/themefisher/lotusdocs)
- **Community**: [Hugo Discourse](https://discourse.gohugo.io)

## 📊 Site Statistics

- **Built with**: Hugo v0.148.2+extended
- **Theme**: LotusDocs (Professional documentation theme)
- **Content**: Markdown with Hugo shortcodes
- **Styling**: SCSS with Bootstrap 5
- **Search**: Full-text search functionality
- **Responsive**: Mobile-first design
- **Icons**: Material Design Icons

## 🔄 Updates and Maintenance

### Regular Tasks
- **Content updates**: Keep information current and accurate
- **Dependency updates**: Update Hugo and theme versions
- **Link checking**: Ensure all internal and external links work
- **Performance monitoring**: Optimize build times and site speed

### Version History
- **v1.0.0**: Initial documentation site setup with LotusDocs theme
- **Theme**: LotusDocs (Professional documentation theme)
- **Last updated**: August 2024

## 🌐 Live Site

The documentation site is automatically deployed to GitHub Pages and available at:
- **GitHub Pages URL**: `https://reliant-labs.github.io/reliant-docs/`
- **Local Development**: `http://localhost:1313`

---

## 🎉 Congratulations!

You now have a fully functional Hugo documentation site for Reliant AI Chat! The site includes:

✅ **Modern Hugo setup** with the latest stable version
✅ **LotusDocs theme** for professional documentation
✅ **Comprehensive content structure** for AI chat documentation
✅ **Development server** running on localhost:1313
✅ **Responsive design** that works on all devices
✅ **Search functionality** for easy content discovery
✅ **Dark mode toggle** for user preference
✅ **Professional styling** with Bootstrap 5
✅ **GitHub Pages deployment** ready
✅ **Custom company branding** with your logos

**Next steps:**
1. **Customize content** for your specific AI chat application
2. **Add your branding** and company information
3. **Expand sections** with detailed documentation
4. **Deploy to GitHub Pages** automatically

The site is now running at `http://localhost:1313` - open your browser to see it in action!
