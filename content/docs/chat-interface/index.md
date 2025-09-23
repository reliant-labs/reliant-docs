---
title: "Chat Interface"
description: "Complete guide to using Reliant's AI-powered chat interface"
weight: 35
icon: "chat"
---

The chat interface is where you interact with Reliant's AI assistant. It provides a powerful, context-aware conversation experience designed specifically for software development tasks.

## Starting a Chat

### New Chat
- Click the **"New Chat"** button or press `Cmd+N`
- Each new chat starts with a fresh context
- Previous chats are saved in your history

### Chat Input
- Type your message in the input field at the bottom
- Press `Enter` to send (or `Shift+Enter` for new line)
- Support for markdown formatting in your messages

## Chat Features

### Message Actions

Each message in the chat has action buttons that appear on hover:

- **Copy**: Copy the message content to clipboard
- **Branch**: Continue conversation from this message in a new chat window
- **Upvote**: AI provided a good response
- **Downvote**: AI provided a bad response

### Code Blocks

When the AI provides code:
- **Syntax Highlighting**: Automatic language detection and highlighting
- **Copy Button**: Quick copy entire code block
- **Apply Changes**: Directly apply suggested code changes to your files

### File Attachments

Attach files to provide context:
1. Click the **paperclip icon** or drag files into the chat
2. Supported formats:
   - Code files (`.js`, `.py`, `.java`, etc.)
   - Text documents (`.txt`, `.md`, `.json`)
   - Images for visual context (`.png`, `.jpg`, `.svg`)
3. Attached files appear as chips above the input field
4. Click the X on a chip to remove an attachment

### Context Awareness

The chat automatically includes:
- **Current Project**: Active project files and structure
- **Open Files**: Currently opened files in your editor
- **Recent Changes**: Git diff and recent modifications
- **Terminal Output**: Recent command outputs when relevant

## Chat Management

### Chat History

Access your chat history from the sidebar:
- All chats are automatically saved
- Search through past conversations

## Interface Controls

### Toolbar Actions

The chat toolbar provides quick access to:
- **Stop Generation**: Halt the current AI response
- **Chat Settings**: Configure chat-specific preferences

### Split View

Work with multiple chats simultaneously:
1. Right-click on a chat tab
2. Select **"Split Right"** or **"Split Down"**
3. Drag tabs between panes
4. Adjust pane sizes by dragging borders

### Focus Mode

Minimize distractions with a cleaner interface:
- Hides unnecessary UI elements
- Centers content for better focus
- Maximizes chat area

## Chat Settings

Configure chat behavior:
- **Model Selection**: Choose AI model for responses
- **Temperature**: Adjust creativity vs. consistency
- **Max Tokens**: Set response length limits
- **System Prompt**: Customize AI behavior
- **Auto-save**: Enable/disable automatic saving

## Tips for Effective Chats

1. **Be Specific**: Provide clear, detailed descriptions
2. **Include Context**: Attach relevant files or code snippets
3. **Use Examples**: Show what you want with examples
4. **Iterative Refinement**: Build on previous responses
5. **Save Templates**: Create reusable prompts for common tasks

## Keyboard Shortcuts

| Action | Shortcut |
|--------|----------|
| New Chat | `Cmd+N` |
| Send Message | `Enter` |
| New Line | `Shift+Enter` |
| Search in Chat | `Cmd+F` |
| Advanced Search | `Cmd+Shift+F` |
| Quick Commands | `/` |
| Mentions | `@` |
| Stop AI Response | `Esc` |