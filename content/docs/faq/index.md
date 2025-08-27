---
title: "FAQ"
description: "Frequently asked questions about Reliant"
weight: 60
icon: "help"
---

# Frequently Asked Questions

Find quick answers to the most common questions about Reliant.

## Installation & Setup

### Q: What operating systems does Reliant support?

**A**: Reliant supports:
- **macOS**: 10.15 (Catalina) and later

### Q: How much disk space do I need?

**A**: You need at least 2GB of free disk space for:
- Application installation
- AI model storage
- Project indexing
- Temporary files and cache

### Q: Can I run Reliant without internet access?

**A**: Reliant requires internet access for:
- Initial download and installation
- AI model updates
- Some AI processing features

However, once installed, many features work offline with locally cached models.

### Q: Why won't Reliant launch on macOS?

**A**: Common causes and solutions:
- **Gatekeeper**: Right-click the app and select "Open"
- **Security Settings**: Check System Preferences > Security & Privacy
- **Quarantine**: Remove quarantine attribute with `xattr -d com.apple.quarantine /Applications/Reliant.app`
- **Permissions**: Ensure the app has necessary file system permissions

## Usage & Features

### Q: How do I start a conversation with the AI?

**A**:
1. Click "New Chat" in the sidebar
2. Type your question in the chat input area
3. Press Enter to send your message
4. Wait for the AI response

### Q: Can Reliant understand my entire codebase?

**A**: Yes! Reliant can:
- Index and analyze your project structure
- Understand file relationships and dependencies
- Provide context-aware responses
- Navigate through your codebase

Open a project first to give Reliant full context.

### Q: What programming languages does Reliant support?

**A**: Reliant supports most popular programming languages including:
- JavaScript/TypeScript, Python, Go, Java, C++, C#
- Web technologies (HTML, CSS, React, Vue)
- Database languages (SQL, NoSQL)
- Configuration files (YAML, JSON, TOML)

### Q: How accurate are Reliant's AI responses?

**A**: Reliant provides high-quality responses by:
- Using advanced language models
- Understanding your specific codebase context
- Providing explanations and reasoning
- Suggesting improvements and alternatives

Always review and test AI-generated code before using it in production.

## Performance & Resources

### Q: Why is Reliant running slowly?

**A**: Common causes:
- **Large projects**: Very large codebases take longer to index
- **Multiple projects**: Having many projects open simultaneously
- **System resources**: Insufficient RAM or CPU
- **Background processes**: Other applications consuming resources

Try closing unused projects and restarting Reliant.

### Q: How much RAM does Reliant use?

**A**: Reliant typically uses:
- **Minimum**: 2-4GB RAM
- **Recommended**: 8-16GB RAM
- **Large projects**: May require additional memory

Close other applications if you experience memory issues.

### Q: Can I limit what gets indexed in my project?

**A**: Yes! You can:
- Use `.gitignore` patterns to exclude files
- Configure project-specific indexing rules
- Exclude specific directories or file types
- Set custom ignore patterns in project settings

## Security & Privacy

### Q: Does Reliant send my code to external servers?

**A**: **No**. Reliant runs completely locally:
- All AI processing happens on your machine
- Your code never leaves your computer
- No data is sent to external servers
- Complete privacy and security

### Q: What permissions does Reliant need?

**A**: Reliant requires:
- **File system access**: To read and analyze your projects
- **Network access**: For local communication between components
- **System integration**: To work with development tools

All permissions are for local functionality only.

### Q: Can I control which files Reliant can access?

**A**: Yes, you can:
- Set file access permissions in settings
- Exclude specific directories or files
- Use project-specific access controls
- Configure security restrictions for sensitive projects

## Troubleshooting

### Q: The backend won't connect. What should I do?

**A**: Try these steps:
1. Close Reliant completely
2. Wait 10-15 seconds
3. Check if ports 8080/3000 are in use
4. Restart the application
5. Check firewall settings
6. Restart your computer if needed

### Q: Why can't Reliant find my project files?

**A**: Common causes:
- **Path issues**: Ensure the project path is correct
- **Permissions**: Check file and folder permissions
- **Hidden files**: Some files may be hidden or system-protected
- **Path length**: Very long file paths may cause issues

### Q: The AI keeps giving incorrect answers. What can I do?

**A**: Try these approaches:
- **Provide more context**: Show more of your code and requirements
- **Be specific**: Ask targeted questions instead of broad ones
- **Use examples**: Show what you've tried and what didn't work
- **Rephrase**: Try asking the same question differently
- **Check project context**: Ensure Reliant has access to relevant files

## Updates & Maintenance

### Q: How often is Reliant updated?

**A**: Reliant receives regular updates:
- **Bug fixes**: As needed
- **Feature updates**: Monthly or quarterly
- **Major releases**: Every few months
- **Security updates**: Immediately when needed

### Q: Will updating Reliant affect my projects and conversations?

**A**: **No**. Updates preserve:
- All your projects and conversations
- Project indexes and settings
- User preferences and configurations
- Local data and cache

### Q: How do I check for updates?

**A**: Reliant automatically:
- Checks for updates on startup
- Notifies you when updates are available
- Provides update information and release notes

You can also manually check in the application settings.

## Support & Community

### Q: Where can I get help if I have issues?

**A**: Multiple support options:
- **Documentation**: This comprehensive guide
- **GitHub Issues**: Report bugs and request features
- **GitHub Discussions**: Community support and questions
- **Email Support**: support@reliantlabs.com
- **Community Forums**: User discussions and tips

### Q: Can I contribute to Reliant's development?

**A**: Yes! Reliant is open source:
- **GitHub Repository**: View and contribute to the code
- **Issue Reports**: Help identify bugs and improvements
- **Feature Requests**: Suggest new functionality
- **Documentation**: Help improve user guides
- **Community**: Share knowledge and help other users

### Q: Is there a community of Reliant users?

**A**: Yes! Connect with other users:
- **GitHub Discussions**: Ask questions and share tips
- **Community Forums**: User discussions and best practices
- **Social Media**: Follow for updates and community news
- **Contributor Guidelines**: Learn how to contribute

---

**Still have questions?** Check the [Troubleshooting section]({{< relref "troubleshooting" >}}) or [contact support](mailto:support@reliantlabs.com).
