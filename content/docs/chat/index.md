---
title: "Chat"
description: "Complete guide to using Reliant's AI-powered chat"
weight: 35
icon: "chat"
---

The chat is where you interact with Reliant's AI assistant. It provides a powerful, context-aware conversation experience designed specifically for software development tasks.

## Starting a Chat

### New Chat
- Click the **"New Chat"** button or press `Cmd+N`
- Each new chat opens in a new tab
- Multiple chat tabs can be open simultaneously
- Previous chats are saved in your history

### Chat Tabs
- Work with multiple chats at once using tabs
- Click the **+** button or press `Cmd+N` for a new tab
- Close tabs with the **X** button or `Cmd+W`
- Switch between tabs by clicking on them or `Cmd + Shift + ]`
- Tabs show attention indicators for pending approvals or completed tasks

## Chat Input

### Message Input
- Type your message in the text area at the bottom
- Press `Enter` to send (or `Shift+Enter` for new line)
- Supports markdown formatting in your messages
- Auto-saves drafts as you type

### Input Controls
- **Model Selector**: Choose which AI model to use (GPT-5, Claude, etc.)
- **Agent/Flow Selector**: Select specialized agents or multi-agent flows
- **Worktree Selector**: Choose which Git worktree context to use
- **Prompts**: Access saved prompt templates
- **Auto-Approve Toggle**: Enable/disable automatic approval of tool executions (see Auto-Approval section below)
- **Attach Files**: Click paperclip or drag & drop files
- **Save Draft**: Manually save current message as draft
- **View Drafts**: Access previously saved drafts
- **Tasks Panel**: View active tasks and background processes

## Message Features

### Message Actions

Each message has action buttons that appear on hover:

- **Copy**: Copy the message content to clipboard
- **Branch**: Start a new chat branching from this message
- **Thumbs Up**: Mark response as helpful
- **Thumbs Down**: Mark response as not helpful

### Code Blocks

When the AI provides code:
- **Syntax Highlighting**: Automatic language detection and highlighting
- **Copy Button**: Quick copy entire code block
- **Line Numbers**: Optional line numbers for reference
- **Language Label**: Shows detected programming language

### Tool Executions

The AI can execute various tools:
- **File Operations**: Read, write, and edit files
- **Code Search**: Search for patterns in your codebase
- **Terminal Commands**: Execute shell commands
- **Web Search**: Search for information online
- Each tool execution shows its status and results
- **Requires Approval**: By default, all tool executions require your approval (see Auto-Approval section)

### File Attachments

Attach files to provide context:
1. **Drag & Drop**: Drag files directly into the chat
2. **Click to Upload**: Click the paperclip icon
4. Supported formats:
   - Images (`.png`, `.jpg`, `.gif`, `.webp`, `.svg`)
   - Text files (`.txt`, `.md`, `.json`, `.csv`)
   - Documents (`.pdf`, `.doc`, `.docx`)
   - Code files (any text-based format)
5. Attached files appear as preview chips
6. Click the **X** to remove an attachment
7. Maximum file size: 50MB
8. Maximum files per message: 10

## Context Awareness

The chat automatically includes:
- **Current Worktree**: Active Git worktree and branch
- **Project Context**: Project structure and configuration
- **Recent Changes**: Git status and recent modifications
- **Session State**: Maintains context across messages

## Chat Management

### Chat History

Access your chat history from the sidebar:
- All chats are automatically saved locally
- Search through past conversations
- Chats persist across app restarts
- Filter by worktree

### Auto-Approval Mode

**Speed up your workflow** by enabling auto-approval:
- **Toggle Auto-Approve** in the chat input controls (lightning bolt icon)
- When enabled, the AI executes tools without waiting for your approval
- **Perfect for**:
  - Trusted operations like reading files
  - Repetitive tasks
  - When you want the AI to work autonomously
- **Stay in Control**: Disable anytime to review tool executions again
- Auto-approval is **per-chat session** - each new chat starts with approvals required

### Manual Approvals

When auto-approve is disabled (default):
- Approval requests appear inline in the chat
- Review the proposed action carefully
- Click **Approve** to execute or **Deny** to skip
- Gives you full control over what the AI does to your codebase

### Tasks List

View and track the AI's current tasks:
- Click the **Tasks List** button in the chat input area to open the panel
- Shows current tasks and their status (pending, in_progress, completed, failed, blocked, skipped, cancelled)
- Displays progress percentage for overall task completion
- Tasks grouped by status for easy overview
- Each task shows title and optional description
- Tasks automatically update as the AI works
- Switch to **Processes** tab to view background terminal processes

### Session Info Panel

View current session details and settings:
- Click the **history icon** in the header to toggle session info
- Shows current model and agent being used
- Displays context tokens used and window size
- Shows temperature and thinking mode settings
- Displays current worktree and project
- View session-specific configuration
- Monitor token usage in real-time

## Tips for Effective Chats

1. **Be Specific**: Provide clear, detailed descriptions of what you need
2. **Include Context**: Attach relevant files or code snippets
3. **Use Examples**: Show what you want with concrete examples
4. **Select the Right Model**: Different models excel at different tasks
5. **Use Agents**: Select specialized agents for specific domains
6. **Branch Conversations**: Branch from any message to explore alternatives
7. **Save Useful Prompts**: Create reusable prompt templates

## Keyboard Shortcuts

| Action | Shortcut |
|--------|----------|
| New Chat | `Cmd+N` |
| Close Tab | `Cmd+W` |
| Send Message | `Enter` |
| New Line in Message | `Shift+Enter` |
| Search in Chat | `Cmd+F` |
| Stop AI Response | `Esc` |
| Next Tab | `Cmd+Shift+]` |
| Previous Tab | `Cmd+Shift+[` |