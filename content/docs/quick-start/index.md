---
title: "Quick Start"
description: "Get up and running with Reliant in 5 minutes"
weight: 15
icon: "rocket_launch"
---

Get Reliant running in just a few steps. This guide covers the essentials to start coding with AI assistance immediately.

## 1. Download & Install

**Download for your Mac:**
- [Apple Silicon (M1/M2/M3/M4)](https://downloads.reliantlabs.io/Reliant-latest-mac-arm64.dmg)
- [Intel Mac](https://downloads.reliantlabs.io/Reliant-latest-mac-x64.dmg)

**Install:**
1. Open the downloaded DMG
2. Drag Reliant to Applications
3. Launch Reliant from Applications
4. If macOS blocks it: Right-click → Open → Open

## 2. Add Your API Key

You need an API key from one of these providers:
- [Anthropic](https://console.anthropic.com/) (Claude)
- [OpenAI](https://platform.openai.com/) (GPT-5)
- [OpenRouter](https://openrouter.ai/) (Multiple models)

**Configure in Reliant:**
1. Open **Settings** (`Cmd+,`)
2. Go to **AI** section
3. Select your provider
4. Paste your API key
5. Click **Test Connection**
6. Click **+ Add Provider**

## 3. Open Your Project

**For existing code:**
1. Click **Open Project**
2. Select your project folder
3. Wait for indexing (few seconds)

**For new projects:**
1. Click **Create Project**
2. Name your project
3. Choose location
4. Click **Create**

## 4. Start Chatting

Type in the chat box and press Enter. Try these:

**Understand your code:**
```
What does this project do?
Explain the main components
How do I run this?
```

**Write code:**
```
Create a function that [describe what you need]
Add error handling to [file name]
Write tests for [component]
```

**Debug issues:**
```
Why is this error happening? [paste error]
Fix this bug: [describe problem]
```

**Refactor code:**
```
Improve this function [attach file]
Make this code more efficient
Add TypeScript types
```

## Essential Shortcuts

| Action | Shortcut | Use For |
|--------|----------|---------|
| New Chat | `Cmd+N` | Start fresh conversation |
| Stop AI | `Esc` | Cancel current response |
| Settings | `Cmd+,` | Configure API keys |
| Search | `Cmd+P` | Find files quickly |
| Toggle Sidebar | `Cmd+B` | More screen space |

## Key Features

### Chat Controls
- **Attach Files**: Click the paperclip icon or drag files into chat
- **Auto-approval**: Toggle the checkmark for automatic tool execution
- **Models**: Select different AI models per chat
- **Agents**: Use specialized assistants (testing, docs, etc.)

### Working with Code
- Reliant can read, analyze, and edit your files
- Review changes before applying
- Git-aware - understands your branches
- Works with any language or framework

### Multiple Branches (Worktrees)
Work on different features simultaneously:
1. Go to **Worktrees** tab
2. Click **+ New Worktree**
3. Each branch gets its own directory
4. Switch instantly without stashing

## Tips for Success

**DO:**
- Be specific about what you want
- Attach relevant files for context
- Review AI suggestions before applying
- Use agents for specialized tasks

**DON'T:**
- Assume Reliant knows unspecified requirements
- Apply changes without reviewing
- Forget to save your work

## Need Help?

- **Full Guide**: [Getting Started]({{< relref "getting-started" >}})
- **Troubleshooting**: [Common Issues]({{< relref "troubleshooting" >}})
- **Support**: support@reliantlabs.com

---

**Ready?** Open a project and start chatting. The more specific you are, the better Reliant can help.