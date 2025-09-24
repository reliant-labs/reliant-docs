---
title: "Getting Started"
description: "First launch and basic setup of Reliant"
weight: 20
icon: "play_arrow"
---

Welcome to Reliant! This guide will help you set up and start using your AI-powered coding assistant in just a few minutes.

## First Launch

### Starting Reliant

1. **Open Reliant** from your Applications folder
2. **Wait for initialization**
3. **Welcome screen** appears when ready

### What's Happening Behind the Scenes

When Reliant starts:
- Local Go backend launches on an available port
- Electron app connects to the backend
- WebSocket connection established for real-time chat
- Everything runs locally on your Mac

## Essential Setup

### Step 1: Configure Your API Key

Before you can use AI features, you need an API key:

1. Click **Settings** in the sidebar (or press `Cmd+,`)
2. Go to **API Configuration**
3. Select your provider:
   - **OpenAI** - GPT-4, GPT-3.5 ([Get API Key](https://platform.openai.com/api-keys))
   - **Anthropic** - Claude models ([Get API Key](https://console.anthropic.com/))
   - **Local Models** - Ollama, LM Studio
4. Enter your API key
5. Click **"Test Connection"**
6. Click **"+ Add Provider"** when successful

### Step 2: Open or Create a Project

**Option A: Open Existing Project**
1. Click **"Open Existing Project"** in the menu
2. Navigate to your project folder
3. Select the folder containing your code
4. Reliant indexes your code (takes a few seconds)

**Option B: Create New Project**
1. Click **"Create New Project"** if starting fresh
2. Give your project a name
3. Click **"Select Folder"** and choose where to create it
4. Click **"Create"**
5. Reliant sets up and indexes the project

### Step 3: Start Your First Chat

1. With your project selected, click in the chat input
2. Try one of these starter prompts:
   - "Explain the structure of this project"
   - "What does the main file do?"
   - "How can I run this project?"
3. Press `Enter` to send
4. Watch as Reliant analyzes and responds

## Understanding the Interface

### Main Areas

**Navigation Bar (Far Left)**
- **Chats**: Your AI conversations
- **Worktrees**: Git branch management
- **Agents**: Specialized AI assistants
- **Flows**: Automated workflows
- **Settings**: Configuration

**Sidebar (Context Panel)**
- Shows content based on selected navigation item
- In Chats: List of all conversations
- Search and filter capabilities
- Quick actions

**Chat Area (Center)**
- Message input at bottom
- Conversation history above

### Key Features

**Chat**
- Type naturally - no special syntax needed
- Use the paperclip icon or drag files into the chat box to attach them.
- Stop generation with `Esc` key or by clicking `Stop`

**Code Handling**
- Automatic syntax highlighting
- One-click copy for code blocks
- Direct file editing from chat
- Git-aware operations

## Common First Tasks

### Understanding Your Code

Ask Reliant to explain your project:
```
"Give me an overview of this codebase"
"What are the main components?"
"How is the project structured?"
```

### Getting Help with Code

Get assistance with specific files:
```
"Explain what this function does" (with file attached)
"How can I improve this code?"
"Are there any bugs in this file?"
```

### Writing New Code

Generate code with context:
```
"Create a new component that does X"
"Write a test for this function"
"Add error handling to this method"
```

### Debugging

Get help fixing issues:
```
"Why is this throwing an error?" (paste error)
"Help me debug this function"
"What's causing this bug?"
```

## Quick Tips

### Effective Prompting

✅ **Do:**
- Be specific about what you want
- Provide context and examples
- Attach relevant files
- Ask follow-up questions

❌ **Don't:**
- Use vague descriptions
- Assume Reliant knows unstated requirements
- Forget to review generated code
- Skip testing suggestions

### Keyboard Shortcuts

Essential shortcuts to remember:

| Action | Shortcut |
|--------|----------|
| New Chat | `Cmd+N` |
| Settings | `Cmd+,` |
| Search | `Cmd+P` |
| Search in Chat | `Cmd+F` |
| Stop AI Response | `Esc` |
| Send Message | `Enter` |
| New Line in Input | `Shift+Enter` |

### Best Practices

1. **Start Simple**: Begin with basic questions before complex tasks
2. **Iterate**: Refine responses with follow-up questions
3. **Review Carefully**: Always review AI-generated code
4. **Use Projects**: Keep code organized in projects

## What's Next?

### Explore Features

- **[Chat]({{< relref "chat" >}})** - Master the chat
- **[Worktrees]({{< relref "worktrees" >}})** - Work on multiple branches
- **[Agents]({{< relref "agents" >}})** - Use specialized assistants

### Customize Your Experience

- **[Settings]({{< relref "settings" >}})** - Configure preferences
- **[Appearance]({{< relref "appearance" >}})** - Choose your theme
- **[Prompts]({{< relref "prompts" >}})** - Create templates

### Get Help

- **[Troubleshooting]({{< relref "troubleshooting" >}})** - Solve issues
- **[FAQ]({{< relref "faq" >}})** - Common questions
- **GitHub Issues** - Report bugs
- **Support** - support@reliantlabs.com

---

**Ready to code?** Open a project and start chatting with Reliant. The more you use it, the more you'll discover how it can accelerate your development workflow.