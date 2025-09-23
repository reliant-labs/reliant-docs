---
title: "FAQ"
description: "Frequently asked questions about Reliant"
weight: 75
icon: "help"
---

Quick answers to the most common questions about Reliant.

## General Questions

### Q: What is Reliant?

**A**: Reliant is an AI-powered coding assistant that runs locally on your Mac. It combines powerful language models with your development environment to help you code faster, debug smarter, and build better software.

### Q: How is Reliant different from other AI coding tools?

**A**: Reliant stands out by:
- Running completely locally on your Mac
- Providing deep project context understanding
- Integrating Git worktrees for parallel development
- Offering customizable agents and flows
- Ensuring complete privacy - your code never leaves your machine

### Q: What do I need to use Reliant?

**A**: You need:
- A Mac running macOS 11.0 (Big Sur) or later
- 8GB RAM minimum (16GB recommended)
- 4GB free disk space
- An API key from OpenAI, Anthropic, or a local model provider
- Internet connection for AI features

## Installation & Setup

### Q: Is Reliant available for Windows or Linux?

**A**: Currently, Reliant is **macOS only**. We're focusing on delivering the best experience for Mac users first. Windows and Linux support may come in the future.

### Q: Why does macOS block Reliant from opening?

**A**: macOS security features (Gatekeeper) block unsigned apps. To fix:
1. Right-click Reliant and select "Open"
2. Click "Open" in the dialog
3. Or go to System Settings → Privacy & Security → click "Open Anyway"

### Q: How do I get an API key?

**A**: Get API keys from these providers:
- **OpenAI**: [platform.openai.com/api-keys](https://platform.openai.com/api-keys)
- **Anthropic**: [console.anthropic.com](https://console.anthropic.com)
- **Local Models**: No key needed for Ollama or LM Studio

### Q: Is the API key stored securely?

**A**: Yes! API keys are stored securely in the macOS Keychain, not in plain text files.

## Using Reliant

### Q: How do I start using Reliant?

**A**: Three simple steps:
1. **Configure API key** in Settings → API Configuration
2. **Create a project** by selecting your code folder
3. **Start chatting** - ask questions about your code

### Q: What can I ask Reliant to do?

**A**: Reliant can help with:
- Explaining code and architecture
- Writing new features
- Debugging and fixing errors
- Refactoring and optimization
- Writing tests and documentation
- Code reviews and best practices
- Learning new technologies

### Q: Can Reliant modify my files directly?

**A**: Yes, with your permission. Reliant can:
- Suggest code changes
- Apply modifications when you approve
- Create new files
- Refactor existing code
Always review changes before accepting them.

### Q: How does Reliant understand my project?

**A**: When you open a project, Reliant:
- Indexes all code files
- Analyzes structure and dependencies
- Understands frameworks and patterns
- Builds a context model
- Updates as you make changes

## Features

### Q: What are Worktrees?

**A**: Worktrees let you work on multiple Git branches simultaneously:
- Each branch gets its own working directory
- Switch instantly without stashing changes
- Run builds/tests in parallel
- Keep different versions side-by-side

### Q: What are Agents?

**A**: Agents are specialized AI assistants:
- Pre-configured for specific tasks (testing, docs, reviews)
- Custom system prompts and behaviors
- Can be created and shared
- Maintain consistent interaction patterns

### Q: What are Flows?

**A**: Flows are visual automation workflows:
- Chain multiple operations together
- No coding required
- Reusable templates
- Automate repetitive tasks

### Q: Can I customize the appearance?

**A**: Yes! Reliant offers:
- Multiple built-in themes (light/dark)
- Custom theme creation
- Font and size adjustments
- Layout customization
- System theme following

## Privacy & Security

### Q: Does my code leave my computer?

**A**: **No!** Everything runs locally:
- Backend runs on your Mac
- Code stays on your machine
- No cloud storage or servers
- API calls go directly to your chosen provider

### Q: What data does Reliant collect?

**A**: Reliant collects **no data**:
- No telemetry or analytics
- No usage tracking
- No code uploading
- No user profiling
Everything stays on your Mac.

### Q: Are my conversations saved?

**A**: Yes, locally on your Mac:
- Stored in `~/Library/Application Support/Reliant/`
- Never uploaded anywhere
- You can delete them anytime
- Export for backup if needed

## Performance

### Q: Why is Reliant slow with large projects?

**A**: Large projects take time to index. To improve:
- Add `.reliantignore` file to exclude folders
- Exclude `node_modules`, `build`, `dist`
- Index specific directories only
- Close unused projects

### Q: How much memory does Reliant use?

**A**: Typical usage:
- Base: 500MB - 1GB
- With project: 1-2GB
- Large projects: 2-4GB
- Multiple projects: Add 500MB each

### Q: Can I limit resource usage?

**A**: Yes, in Settings → Performance:
- Set memory limits
- Configure CPU usage
- Limit concurrent operations
- Adjust cache size

## Troubleshooting

### Q: The backend won't connect. What do I do?

**A**: Try these steps:
1. Quit Reliant completely (Cmd+Q)
2. Wait 10 seconds
3. Relaunch Reliant
4. Check Activity Monitor for "reliant" process
5. Restart your Mac if needed

### Q: AI responses are slow or failing

**A**: Check:
- API key is valid and has credits
- Internet connection is stable
- API provider status page
- Rate limits haven't been exceeded

### Q: Reliant crashes on startup

**A**: Solutions:
1. Delete preferences: `defaults delete com.reliantlabs.reliant`
2. Clear cache: `rm -rf ~/Library/Caches/Reliant`
3. Reinstall Reliant
4. Check system requirements

## Updates & Support

### Q: How do I update Reliant?

**A**: Reliant updates automatically:
- Checks on startup
- Notifies when available
- One-click update
- Or manually check: Reliant → Check for Updates

### Q: Will updates break my setup?

**A**: No! Updates preserve:
- All settings and preferences
- Projects and chat history
- Custom agents and prompts
- API keys and configuration

### Q: Where can I get help?

**A**: Multiple support channels:
- This documentation
- [GitHub Issues](https://github.com/reliant-labs/reliant/issues)
- Email: support@reliantlabs.com
- Community discussions on GitHub

### Q: Can I request features?

**A**: Absolutely! We welcome feedback:
- File feature requests on GitHub
- Vote on existing requests
- Contribute to discussions
- Submit pull requests

## Pricing & Licensing

### Q: How much does Reliant cost?

**A**: Reliant itself is free and open source. You only pay for:
- API keys from your chosen provider (OpenAI, Anthropic, etc.)
- Usage is based on your API provider's pricing

### Q: Is Reliant open source?

**A**: No, Reliant is proprietary software owned by Reliant Labs. The source code is not publicly available.

### Q: Can I use Reliant commercially?

**A**: Yes, you can use Reliant for commercial software development. Your usage is governed by Reliant's license terms. Check your API provider's terms for their services.

---

**Don't see your question?** Check [Troubleshooting]({{< relref "troubleshooting" >}}) or [contact support](mailto:support@reliantlabs.com).