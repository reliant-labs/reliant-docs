---
title: "Settings & Configuration"
description: "Configure API keys, customize preferences, and set up keyboard shortcuts"
weight: 55
icon: "settings"
---

Configure Reliant to work seamlessly with your development workflow. Access settings through the **Settings** icon in the sidebar or press `Cmd+,`.

## API Configuration

### Setting Up Your API Key

To use Reliant's AI features, you need to configure an API key:

1. Open **Settings** → **API Configuration**
2. Select your AI provider:
   - **OpenAI** (GPT-4, GPT-3.5)
   - **Anthropic** (Claude)
   - **Azure OpenAI**
   - **Local Models** (Ollama, LM Studio)
3. Enter your API key
4. Click **"Test Connection"** to verify
5. Click **"+ Add Provider"**

### Multiple API Keys

Configure different keys for different purposes:
- **Primary Key**: Main API for general use
- **Backup Key**: Fallback when primary limit reached
- **Project Keys**: Different keys per project
- **Model Keys**: Specific keys for certain models

### API Settings

- **Rate Limiting**: Set max requests per minute
- **Token Limits**: Configure max tokens per request
- **Retry Policy**: Auto-retry on failures
- **Timeout**: Request timeout duration

## General Settings

### Application Preferences

**Language & Region**
- Interface language
- Date/time format
- Number format
- Currency display

**Startup & Updates**
- Launch at system startup
- Auto-check for updates
- Update channel (stable/beta)
- Show welcome screen

**File Handling**
- Default file encoding
- Line ending preference
- Auto-save interval
- Backup frequency

### Privacy & Security

**Data Privacy**
- All data stored locally on your Mac
- No cloud storage or external servers
- Clear conversation history
- Export your data anytime

**Security**
- Secure API key storage in macOS Keychain
- Encrypted local storage
- File system permissions
- Application sandboxing

## Keyboard Shortcuts

### Customizing Shortcuts

1. Go to **Settings** → **Keyboard Shortcuts**
2. Search or browse for commands
3. Click on a shortcut to edit
4. Press new key combination
5. Click **"Save"**

### Default Shortcuts

**Essential**
| Action | Shortcut |
|--------|----------|
| Settings | `Cmd+,` |
| New Chat | `Cmd+N` |
| New Window | `Cmd+Shift+N` |
| Search | `Cmd+P` |
| Advanced Search | `Cmd+Shift+F` |

**Tab Management**
| Action | Shortcut |
|--------|----------|
| Close Tab | `Cmd+W` |
| Close All Tabs | `Cmd+Shift+W` |
| Reopen Last Tab | `Cmd+Shift+T` |
| Next Tab | `Cmd+Shift+]` |
| Previous Tab | `Cmd+Shift+[` |

**Interface**
| Action | Shortcut |
|--------|----------|
| Toggle Sidebar | `Cmd+B` |
| Search in Chat | `Cmd+F` |
| Stop AI Response | `Esc` |

### Creating Custom Shortcuts

1. Identify unused key combinations
2. Assign to frequently used actions
3. Export shortcuts for backup
4. Share with team members


## Notification Settings

### System Notifications

Configure when to receive notifications:
- **Task Completion**: Long-running tasks finish
- **Errors**: When operations fail
- **Updates**: New version available
- **Reminders**: Scheduled task reminders

### In-App Notifications

- **Toast Position**: Top-right, bottom-right, etc.
- **Duration**: How long to show
- **Sound**: Enable notification sounds
- **Badge Count**: Show unread count

## Advanced Options

### Developer Settings

**Debug Mode**
- Enable verbose logging
- Show performance metrics
- Display network requests
- Console output

**Experimental Features**
- Beta features opt-in
- A/B testing participation
- Early access programs
- Feature flags

### Data Management

**Import/Export**
- Export all settings
- Import from file
- Sync via cloud
- Version control integration

**Reset Options**
- Reset specific settings
- Clear all preferences
- Factory reset
- Backup before reset

## Backup & Restore

### Export Settings

Save your configuration for backup:
1. Go to **Settings** → **Backup**
2. Click **"Export Settings"**
3. Choose location to save
4. Settings exported as JSON file

### Import Settings

Restore from a backup:
1. Go to **Settings** → **Backup**
2. Click **"Import Settings"**
3. Select your backup file
4. Choose import options:
   - **Merge**: Combine with existing settings
   - **Replace**: Overwrite current settings

## Performance Settings

### Resource Usage

Optimize for your system:
- **Memory Limit**: Max RAM usage
- **CPU Threads**: Parallel processing
- **Cache Size**: Local cache limit
- **Index Size**: Search index limit

### Background Tasks

- **Auto-indexing**: Enable/disable
- **Scheduled Tasks**: Configure timing
- **Priority**: Background task priority
- **Throttling**: Limit resource usage

## Troubleshooting Settings

### Common Issues

**API Key Not Working**
1. Verify key is correct
2. Check provider status
3. Confirm billing is active
4. Test with curl command

**Shortcuts Not Responding**
1. Check for conflicts
2. Restart application
3. Reset to defaults
4. Verify system permissions

**Settings Not Saving**
1. Check write permissions
2. Clear settings cache
3. Try different location
4. Contact support

### Settings Location

Settings are stored locally on your Mac:
- **Configuration**: `~/Library/Application Support/Reliant/`
- **Cache**: `~/Library/Caches/Reliant/`
- **Logs**: `~/Library/Logs/Reliant/`
