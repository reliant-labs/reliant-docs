---
title: "Settings"
description: "Configure Reliant to work seamlessly with your development workflow"
weight: 55
icon: "settings"
---

Configure Reliant to work seamlessly with your development workflow. Access settings through the **Settings** tab in the left navigation.

## Configuration Overview

Reliant can be configured through:
- **Settings UI** - User-friendly interface for common settings
- **Configuration File** - `.reliant.json` in application data directory for advanced settings
- **Environment Variables** - For temporary or CI/CD configurations

See detailed guides for:
- **[API Keys & Model Providers]({{< relref "api-keys" >}})** - Configure AI models and authentication
- **[Context Files & Agent Memory]({{< relref "context-files" >}})** - Auto-include project context in every chat
- **[MCP Servers]({{< relref "mcp-servers" >}})** - Extend capabilities with external tools

## Quick Links

### Essential Configuration

**Set Up AI Providers**: Configure API keys for Claude, GPT, Gemini, and other models
→ [API Keys Guide]({{< relref "api-keys" >}})

**Configure Context Files**: Automatically include project conventions and patterns in every chat
→ [Context Files Guide]({{< relref "context-files" >}})

**Extend with MCP Servers**: Add external tools and data sources
→ [MCP Servers Guide]({{< relref "mcp-servers" >}})

**Customize Agents**: Create specialized AI assistants for your workflow  
→ [Custom Agents Guide]({{< relref "/docs/agents/custom-agents" >}})

**Build Taskforces**: Coordinate multiple agents for complex workflows  
→ [Custom Taskforces Guide]({{< relref "../agents/custom-taskforces" >}})

**Privacy Settings**: Control data collection and security
→ [Privacy & Security]({{< relref "privacy" >}})

## Default Keyboard Shortcuts

{{< figure src="/images/screenshots/keyboard-shortcuts.png" alt="Placeholder: Keyboard shortcuts settings panel showing searchable list of actions with current key bindings, edit buttons, and reset to default option" caption="Customize keyboard shortcuts to your preference">}}

All shortcuts can be customized in the Keyboard Shortcuts settings.

#### **File & Window Management**

| Action | Shortcut | Description |
|--------|----------|-------------|
| New Chat | `Cmd+N` | Create a new chat tab |
| New Window | `Cmd+Shift+N` | Create a new application window |
| Close Tab | `Cmd+W` | Close the current tab |
| Close All Tabs | `Cmd+Shift+W` | Close all open tabs |
| Reopen Last Tab | `Cmd+Shift+T` | Reopen the last closed tab |

#### **Tab Navigation**

| Action | Shortcut | Description |
|--------|----------|-------------|
| Next Tab | `Cmd+Shift+]` | Switch to the next tab |
| Previous Tab | `Cmd+Shift+[` | Switch to the previous tab |
| Next Tab (Alt) | `Cmd+Tab` | Alternative: Switch to next tab |
| Previous Tab (Alt) | `Cmd+Shift+Tab` | Alternative: Switch to previous tab |

#### **Search & Navigation**

| Action | Shortcut | Description |
|--------|----------|-------------|
| Focus Search | `Cmd+P` | Focus the global search bar |
| Advanced Search | `Cmd+Shift+F` | Open advanced search dialog |
| Search in Chat | `Cmd+F` | Search within the current chat |

#### **Interface**

| Action | Shortcut | Description |
|--------|----------|-------------|
| Toggle Settings | `Cmd+,` | Open or close the settings panel |
| Toggle Sidebar | `Cmd+B` | Show or hide the sidebar |

#### **Chat Control**

| Action | Shortcut | Description |
|--------|----------|-------------|
| Stop AI Response | `Esc` | Stop the current AI response generation |
