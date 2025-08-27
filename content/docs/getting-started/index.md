---
title: "Getting Started"
description: "First launch and basic setup of Reliant"
weight: 20
icon: "play_arrow"
---

# Getting Started with Reliant

Welcome to Reliant! This guide will help you get up and running with your AI-powered coding assistant.

## First Launch

### Launching Reliant

1. **Find Reliant** in your Applications folder
2. **Double-click to launch** the application
3. **Wait for initialization** - Reliant will start its local backend services
4. **Grant permissions** if prompted by your operating system

### What Happens During Launch

When you first launch Reliant, the application:

1. **Starts the local backend** - A Go-based server that handles AI processing
2. **Initializes the web interface** - The React-based frontend loads
3. **Establishes connection** - Frontend connects to the local backend
4. **Loads AI models** - Prepares the AI assistant for use

**Note**: The first launch may take longer as Reliant sets up its environment and loads necessary components.

## Initial Setup

### First-Time Configuration

On your first launch, Reliant may ask for:

- **File system permissions** - To access your projects and code
- **Network permissions** - For local communication between components
- **System integration** - To work with your development tools

### Backend Connection

Reliant automatically:
- Finds available ports for backend services
- Configures the web interface to connect to the correct backend
- Establishes WebSocket connections for real-time communication
- Handles any port conflicts automatically

## Understanding the Interface

### Main Components

### 🗂️ Sidebar
- **Chats**: Access your conversation history
- **Projects**: Manage your development projects
- **Worktrees**: Navigate Git worktrees
- **Settings**: Configure the application

### 💬 Chat Interface
- **Message Input**: Type your questions and requests
- **Conversation History**: View ongoing discussions
- **AI Responses**: See AI-generated code and explanations
- **Tool Results**: View results from AI tool executions

### 🔧 Project Panel
- **File Browser**: Navigate your project structure
- **Code Context**: AI understands your codebase
- **Git Integration**: Work with version control

### Navigation

- **Tabs**: Switch between different views and conversations
- **Breadcrumbs**: Navigate through project structure
- **Search**: Find files and content quickly
- **Keyboard Shortcuts**: Use `Cmd/Ctrl + K` for quick actions

## Your First Chat

### Starting a Conversation

1. **Click "New Chat"** in the sidebar or use the chat input area
2. **Type your question** about your code or development task
3. **Press Enter** to send your message
4. **Wait for the AI response** - Reliant will process your request

### Example First Questions

Try asking Reliant:

- "What does this function do?"
- "How can I improve this code?"
- "Explain this error message"
- "Help me refactor this method"
- "What are the best practices for this pattern?"

### Understanding AI Responses

Reliant's responses include:
- **Code explanations** with detailed comments
- **Suggestions** for improvements and alternatives
- **Tool executions** when needed (file operations, code analysis)
- **Context-aware** recommendations based on your project

## Project Integration

### Opening Your First Project

1. **Click "Open Project"** in the sidebar
2. **Navigate to your project folder** and select it
3. **Wait for indexing** - Reliant analyzes your codebase
4. **Start coding** with AI assistance

### What Reliant Learns

When you open a project, Reliant:
- **Scans your codebase** for structure and patterns
- **Understands dependencies** and imports
- **Recognizes frameworks** and libraries
- **Builds context** for better AI responses

## Basic Workflow

### Typical Development Session

1. **Open Reliant** and your project
2. **Ask questions** about your code as you work
3. **Get AI assistance** for debugging and improvements
4. **Save and test** your changes
5. **Continue the conversation** for ongoing development

### Best Practices

- **Be specific** in your questions for better responses
- **Provide context** about what you're trying to achieve
- **Use the project panel** to help Reliant understand your code
- **Review AI suggestions** before implementing them

## Next Steps

Now that you're familiar with the basics:

1. **[Using the App]({{< relref "using-the-app" >}})** - Learn advanced features and workflows
2. **[Settings & Configuration]({{< relref "settings-configuration" >}})** - Customize your experience
3. **[Troubleshooting]({{< relref "troubleshooting" >}})** - Solve common issues

---

**Tip**: Don't hesitate to experiment! Reliant is designed to help you learn and improve your coding skills through interactive AI assistance.
