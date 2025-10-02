---
title: "FAQ"
description: "Frequently asked questions about Reliant"
weight: 75
icon: "help"
draft: true
---

Quick answers to the most common questions about Reliant.

## General Questions

### Q: What is Reliant?

**A**: Reliant is an AI-powered coding assistant desktop app for macOS and Linux. It combines powerful language models with your development environment to help you code faster, debug smarter, and build better software.

### Q: How is Reliant different from other AI coding tools?

**A**: Reliant stands out by:
- Native desktop application for macOS and Linux
- Deep project context understanding
- Git worktrees integration for parallel development
- Customizable agents for specialized tasks
- Your code stays on your machine
<!-- - Multi-agent flows for complex workflows -->

### Q: What do I need to use Reliant?

**A**: You need:
- **macOS** 11.0 (Big Sur) or later, or **Linux** with x86_64/ARM64 architecture
- 8GB RAM minimum (16GB recommended)
- 4GB free disk space
- An API key from a supported provider (Anthropic, OpenAI, OpenRouter, etc.)
- Internet connection for AI API calls

## Installation & Setup

### Q: Is Reliant available for Windows?

**A**: Currently, Reliant supports **macOS and Linux**. Windows support may come in the future.

### Q: How do I get an API key?

**A**: You have two options:

**Option 1: Use Your Claude Code Subscription**
- Open your terminal and run: `claude setup-token`
- Copy the API key that's displayed
- Paste it into Reliant's Settings → AI (select Anthropic as provider)

**Option 2: Get a Provider API Key**
- Visit your provider's website (Anthropic, OpenAI, OpenRouter, etc.)
- Create an account and generate an API key
- Add billing information if required
- Copy the key to Reliant's Settings → AI

### Q: Is the API key stored securely?

**A**: Yes! API keys are stored securely in your system's secure storage (macOS Keychain or Linux equivalent), not in plain text files.

## Using Reliant

### Q: How do I start using Reliant?

**A**: Three simple steps:
1. **Configure API key** in Settings → AI
2. **Open a project** by selecting your code folder
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
- Read and analyze your code files
- Suggest code changes
- Apply modifications when you approve tool executions
- Create new files
- Refactor existing code
You control what changes are made through the approval system.

### Q: How does Reliant understand my project?

**A**: When you open a project, Reliant:
- Has access to read files in your project directory
- Can search through code using grep and other tools
- Understands Git status and history
- Maintains context across your conversation
- Can analyze file structure and dependencies on demand

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
- Maintain consistent interaction patterns

### Q: Can I customize the appearance?

**A**: Yes! Reliant offers:
- Multiple built-in themes (Light, Dark, Dracula, Nord, etc.)
- System theme following (automatic light/dark)
- Theme toggle button in header
- Choose default themes for light and dark modes

## Privacy & Security

### Q: Does my code leave my computer?

**A**: Your code stays on your machine:
- Backend runs locally on your system
- Files are read from your local disk
- No cloud storage or servers
- Only your messages and context go to your chosen AI provider's API

### Q: What data does Reliant collect?

**A**: Reliant collects **no data**:
- No telemetry or analytics
- No usage tracking
- No code uploading
- No user profiling
Everything stays on your machine.

### Q: Are my conversations saved?

**A**: Yes, locally on your machine:
- Stored in your application data
- Never uploaded anywhere
- Persist across app restarts
- You can start fresh with a new chat anytime

## Performance

### Q: Why is Reliant slow with large projects?

**A**: Large projects can impact performance. To improve:
- Open specific subdirectories instead of the entire repo
- Avoid folders with large dependencies (node_modules, etc.)
- Close unused chat tabs
- Restart the app periodically

### Q: How much memory does Reliant use?

**A**: Typical usage:
- Base: 500MB - 1GB
- With project: 1-2GB
- Large projects: 2-4GB
- Multiple projects: Add 500MB each

### Q: Can I limit resource usage?

**A**: To reduce resource usage:
- Close unused chat tabs
- Open smaller project directories
- Use simpler themes
- Restart the app periodically to free memory

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
1. Clear app support data (macOS: `rm -rf ~/Library/Application\ Support/reliant`, Linux: `rm -rf ~/.config/reliant`)
2. Reinstall Reliant
3. Check system requirements

## Updates & Support

### Q: How do I update Reliant?

**A**: To update Reliant:
- Check Settings → About for update notifications
- Download the latest version from our [downloads page]({{< relref "installation#download-reliant" >}})
- Replace the old app with the new version
- Your settings and chats are preserved

### Q: Will updates break my setup?

**A**: No! Updates preserve:
- All settings and preferences
- Projects and chat history
- Custom agents and prompts
- API keys and configuration

### Q: Where can I get help?

**A**: Support options:
- This documentation
- Email: support@reliantlabs.com
- We aim to respond within 24-48 hours

### Q: Can I request features?

**A**: Absolutely! We welcome feedback:
- Email your feature requests to support@reliantlabs.com
- Include use cases and examples
- We consider all suggestions for future updates

## Pricing

### Q: How much does Reliant cost?

**A**: Reliant pricing:
- Contact us for pricing details at support@reliantlabs.com
- You also need API keys from your chosen provider
- API usage is billed by your provider based on their pricing

### Q: Is Reliant open source?

**A**: No, Reliant is proprietary software owned by Reliant Labs. The source code is not publicly available.

### Q: Can I use Reliant commercially?

**A**: Yes, you can use Reliant for commercial software development. Check with your API provider about their terms for commercial use.

---

**Don't see your question?** Check [Troubleshooting]({{< relref "troubleshooting" >}}) or [contact support](mailto:support@reliantlabs.com).

<!-- ### Q: What are Flows?

**A**: Flows are multi-agent workflows:
- Chain multiple agents together in sequence
- Each agent handles a specific part of the task
- Context passes between agents
- Useful for complex, multi-step tasks -->