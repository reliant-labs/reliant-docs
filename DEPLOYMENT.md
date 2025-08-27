# GitHub Pages Deployment Guide

This guide explains how to deploy your Reliant AI Chat documentation site to GitHub Pages.

## 🚀 Automatic Deployment

This project uses two separate GitHub Actions workflows for optimal deployment:

### 1. PR Previews (Automatic)
- **Triggered** on every pull request
- **Creates preview deployments** for code review
- **Does NOT deploy** to main GitHub Pages site
- **Perfect for testing** changes before merging

### 2. Production Deployment (Automatic)
- **Triggered** when merging to main branch
- **Deploys to GitHub Pages** production site
- **Updates the live site** with your changes
- **Only runs after** successful merge

### Workflow Usage

1. **For PRs**: Create pull request → Get automatic preview
2. **For deployment**: Merge to main → Automatic production deployment

### 3. View Your Live Site

Your site will be available at:
`https://reliant-labs.github.io/reliant-docs/`

## ⚙️ GitHub Pages Configuration

### 1. Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** tab
3. Scroll down to **Pages** section
4. Under **Source**, select **GitHub Actions**

### 2. Configure Custom Domain (Optional)

If you have a custom domain:

1. In **Pages** settings, enter your domain
2. Add a `CNAME` file in your repository root:
   ```
   yourdomain.com
   ```
3. Configure DNS with your domain provider

## 🔧 Manual Deployment (Alternative)

If you prefer manual deployment:

### 1. Build the Site

```bash
hugo --minify
```

### 2. Deploy to GitHub Pages

```bash
git add .
git commit -m "Update documentation"
git push origin main
```

## 📁 Repository Structure for GitHub Pages

```
reliant-docs/
├── .github/
│   └── workflows/
│       ├── deploy.yml          # Production deployment workflow
│       └── preview.yml         # PR preview workflow
├── content/                    # Documentation content
├── layouts/                    # Custom layouts
├── static/                     # Static assets
├── themes/                     # Hugo themes
├── hugo.toml                  # Hugo configuration
├── .gitignore                 # Git ignore rules
├── README.md                  # Project documentation
└── DEPLOYMENT.md              # This file
```

## 🚨 Troubleshooting

### Build Failures

1. **Check GitHub Actions logs** for error details
2. **Verify Hugo syntax** in your content files
3. **Check for broken links** or missing files
4. **Ensure all dependencies** are committed

### Site Not Updating

1. **Wait a few minutes** for deployment to complete
2. **Check GitHub Actions** for deployment status
3. **Clear browser cache** and refresh
4. **Verify the correct branch** is being deployed

### Common Issues

- **Missing theme files**: Ensure the theme is properly included
- **Broken shortcodes**: Check Hugo shortcode syntax
- **File permissions**: Ensure GitHub Actions has proper permissions
- **Base URL**: Verify `hugo.toml` configuration

## 📊 Deployment Status

- **Build Status**: Check GitHub Actions tab
- **Deployment Logs**: View detailed build and deployment logs
- **Live Site**: Monitor site availability and performance

## 🔄 Updating the Site

### Content Updates

1. Edit markdown files in `content/docs/`
2. Test locally with `hugo server`
3. Commit and push changes
4. Site automatically deploys

### Theme Updates

1. Update theme files in `themes/lotusdocs/`
2. Test locally for compatibility
3. Commit and push changes
4. Site automatically rebuilds and deploys

### Configuration Changes

1. Modify `hugo.toml` as needed
2. Test configuration locally
3. Commit and push changes
4. Site automatically applies new settings

## 🎯 Best Practices

- **Test locally** before pushing changes
- **Use descriptive commit messages** for better tracking
- **Monitor deployment logs** for any issues
- **Keep dependencies updated** for security and performance
- **Use semantic versioning** for major releases

---

## 🎉 Success!

Your Reliant AI Chat documentation site is now automatically deployed to GitHub Pages!

**Next steps:**
1. **Customize content** for your specific needs
2. **Add your branding** and company information
3. **Monitor deployments** through GitHub Actions
4. **Share your live site** with users and stakeholders

The site will automatically update every time you push changes to the main branch! 🚀
