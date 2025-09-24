---
title: "Settings"
description: "Configure API keys, customize preferences, and set up keyboard shortcuts"
weight: 55
icon: "settings"
---

Configure Reliant to work seamlessly with your development workflow. Access settings through the **Settings** tab in the left navigation.

## AI Settings

### API Provider Configuration

Configure your AI provider API keys to enable Reliant's AI features:

1. Navigate to **Settings** → **AI**
2. Select your provider from the dropdown
3. Enter your API key
4. Click **"Test Connection"** to test the connection
5. Click **"+ Add Provider"** when validation succeeds

### Supported Providers

Reliant supports multiple AI providers:

- **Anthropic** - Claude 4, Claude 3.5, Claude 3, and other Anthropic models
- **OpenAI** - GPT-5, GPT-4, GPT-3.5, and other OpenAI models
- **Google Gemini** - Gemini Pro, Gemini Ultra models
- **OpenRouter** - Access to OpenRouter supported models
- **Azure OpenAI** - OpenAI models hosted on Azure
- **AWS Bedrock** - Claude, Llama, and other models on AWS
- **GitHub Copilot** - GitHub Copilot API access
- **Groq** - Fast inference with Groq LPU
- **Vertex AI** - Google Cloud AI models
- **xAI** - Grok and other xAI models
- **Local Models** - Ollama, llama.cpp, and other local models

### Managing API Keys

**Configured Providers**
- View all configured providers with masked API keys
- Edit existing API keys
- Delete provider configurations
- Test connection status

**Multiple Providers**
- Configure multiple providers simultaneously
- Switch between providers in chat
- Different models available per provider

### Streaming Preference

Toggle response streaming on/off:
- **Enabled**: See AI responses as they're generated
- **Disabled**: Wait for complete response before display

## Prompts

### Managing Prompt Templates

Create reusable preambles and instructions for your messages:

1. Navigate to **Settings** → **Prompts**
2. Select scope using the dropdown:
   - **Global**: Available across all projects
   - **Worktree**: Specific to selected worktree
3. Click **"+ New"** to add a prompt
4. Configure each prompt:
   - **Title**: Display name (required)
   - **Category**: Optional grouping
   - **Content**: The actual prompt text
   - **Default**: Auto-select when opening chat
5. Click **"Save Changes"** to persist

### Prompt Features

- **Multi-select**: Choose multiple prompts to combine
- **Search**: Filter by title, content, or category
- **Scope Control**: Global or worktree-specific
- **Default Selection**: Auto-select marked prompts
- **Live Editing**: See unsaved changes indicator
- **Batch Operations**: Save or discard all changes at once

## Keyboard Shortcuts

### Customizing Shortcuts

Modify keyboard shortcuts to match your workflow:

1. Navigate to **Settings** → **Keyboard Shortcuts**
2. Find the action you want to customize
3. Click the **Edit** button (pencil icon)
4. Press your desired key combination
5. Click the **checkmark** to save
6. Click **X** to cancel

### Shortcut Features

- **Live Capture**: Press keys to set new combination
- **Conflict Detection**: Warns about duplicate shortcuts
- **Reset to Default**: Restore original key bindings

### Default Keyboard Shortcuts

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

## Appearance

### Theme Settings

Customize Reliant's visual appearance:

1. Go to **Settings** → **Appearance**
2. Configure theme options:
   - **Mode**: System, Light, or Dark
   - **Default Light Theme**: Theme for light mode
   - **Default Dark Theme**: Theme for dark mode

### Available Themes

**Light Themes**
- Light (Default)
- GitHub Light
- Solarized Light
- One Light

**Dark Themes**
- Dark (Default)
- Dracula
- Tokyo Night
- Nord

### Theme Behavior

- **System Mode**: Follows macOS appearance settings
- **Manual Mode**: Fixed light or dark theme
- **Theme Toggle**: Quick switch in header between light/dark defaults
- **Live Preview**: Changes apply immediately

## About

### Version Information

View current Reliant version and check for updates:

- **Version Number**: Current installed version
- **Documentation Link**: Access online docs
- **Copyright**: Legal information

### Updates

- **Check for Updates**: Manual update check
- **Auto-update**: Automatic update notifications

## Settings Storage

### Local Storage

All settings are stored locally:
- **API Keys**: Secure storage in system keychain
- **Preferences**: Stored in app data directory
- **Prompts**: Saved per project/worktree
- **Shortcuts**: User-specific customizations

### Privacy

- No cloud sync or external storage
- All data remains on your device
- Settings persist across app restarts

## Troubleshooting

### Common Issues

**API Key Not Working**
- Verify key is entered correctly
- Check provider service status
- Ensure correct provider selected
- Test with validation button

**Shortcuts Not Responding**
- Check for conflicts with system shortcuts
- Ensure app has accessibility permissions
- Try resetting to defaults
- Restart app after changes

**Theme Not Changing**
- Clear app cache
- Check system appearance settings
- Try manual mode instead of system
- Restart app if needed
