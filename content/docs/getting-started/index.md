---
title: "Getting Started"
description: "First launch and basic setup of Reliant"
weight: 20
icon: "play_arrow"
---

Welcome to Reliant! This guide will help you set up and start using your AI-powered coding assistant in just a few minutes.

## Essential Setup

### Step 1: Configure Your API Key

{{< figure src="/images/screenshots/configured-providers.png" alt="Placeholder: Settings screen showing AI provider configuration with API key input field, provider dropdown (showing Anthropic, OpenAI, OpenRouter options), and Test Connection button" caption="Configure your AI provider and API key">}}

Before you can use AI features, you need an API key:

**Option A: Use Your Claude Code Subscription**

If you have an existing Claude Code subscription, you can use it with Reliant:

1. Open your terminal
2. Run: `claude setup-token`
3. Copy the API key that's displayed
4. In Reliant, click **Settings** in the sidebar (or press `Cmd+,`)
5. Go to **AI**
6. Select **Anthropic** as your provider
7. Paste your API key
8. Click **"Test Connection"**
9. Click **"+ Add Provider"** when successful

**Option B: Use Another Provider**

1. Click **Settings** in the sidebar (or press `Cmd+,`)
2. Go to **AI**
3. Select your provider
4. Enter your API key
5. Click **"Test Connection"**
6. Click **"+ Add Provider"** when successful

### Step 2: Open or Create a Project

{{< figure src="/images/screenshots/recent-projects.png" alt="Placeholder: Project selection screen showing Open Existing Project and Create New Project buttons, with recent projects list below" caption="Choose to open an existing project or create a new one">}}

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

{{< figure src="/images/screenshots/new-chat-session-info.png" alt="Placeholder: Chat interface showing the message input box at bottom with example prompt 'Explain the structure of this project', send button, and empty conversation area above" caption="Start chatting with AI about your code">}}

1. With your project selected, click in the chat input
2. Try one of these starter prompts:
   - "Explain the structure of this project"
   - "What does the main file do?"
   - "How can I run this project?"
3. Press `Enter` to send
4. Watch as Reliant analyzes and responds

## Understanding the Interface

{{< figure src="/images/screenshots/chat-interface.png" alt="Placeholder: Full Reliant interface showing three-panel layout - navigation bar on far left with icons for Chats, Worktrees, Agents, Flows, Settings; sidebar showing chat history list; main chat area in center with conversation and input box" caption="The Reliant interface with navigation, sidebar, and chat area">}}

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

## Optional: Set Up Memory Files

For better AI assistance, create memory files with your coding guidelines:

**Global Memory (applies to all projects)**:
```bash
mkdir -p ~/.reliant
cat > ~/.reliant/reliant.md << 'EOF'
# My Coding Guidelines
- Always write tests
- Use descriptive variable names
- Follow clean code principles
EOF
```

**Project Memory (in your project root)**:
```bash
cat > reliant.md << 'EOF'
# Project Context
- This is a [language] project
- Uses [framework/tools]
- Follow [specific conventions]
EOF
```

The AI will automatically use these guidelines in every conversation!

Learn more: [Context Files & Agent Memory]({{< relref "settings/context-files" >}})

## What's Next?

### Explore Features

- **[Chat]({{< relref "chat" >}})** - Master the chat interface
- **[Worktrees]({{< relref "worktrees" >}})** - Work on multiple branches simultaneously
- **[Agents]({{< relref "agents" >}})** - Use specialized AI assistants
- **[Context Files]({{< relref "settings/context-files" >}})** - Provide persistent context

### Customize Your Experience

- **[Settings]({{< relref "settings" >}})** - Configure preferences

### Get Help

- **Support** - support@reliantlabs.com

---

**Ready to code?** Open a project and start chatting with Reliant. The more you use it, the more you'll discover how it can accelerate your development workflow.