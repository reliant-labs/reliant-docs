---
title: "Appearance"
description: "Customize themes and visual preferences"
weight: 65
icon: "palette"
---

Customize Reliant's appearance with different themes and modes to match your preferences and reduce eye strain during long coding sessions.

## Theme Configuration

### Appearance Settings

Access theme settings:
1. Navigate to **Settings** → **Appearance**
2. Configure three options:
   - **Mode**: How themes are applied
   - **Default Light**: Your preferred light theme
   - **Default Dark**: Your preferred dark theme

### Mode Options

Choose how Reliant determines which theme to use:

- **System**: Follows macOS appearance settings automatically
- **Light**: Always use your selected light theme
- **Dark**: Always use your selected dark theme

### Available Themes

**Light Themes**
- **Light**: Default clean light theme
- **GitHub Light**: GitHub-inspired light theme
- **Solarized Light**: Popular Solarized color palette
- **One Light**: Atom One Light theme

**Dark Themes**
- **Dark**: Default dark theme
- **Dracula**: Popular Dracula theme with vibrant colors
- **Tokyo Night**: Modern Tokyo Night theme
- **Nord**: Arctic-inspired Nord color palette

## Quick Theme Toggle

### Header Toggle Button

Quickly switch between light and dark themes:
- Click the **sun/moon icon** in the header
- Toggles between your default light and dark themes
- When in System mode, switches to explicit light/dark mode

### Toggle Behavior

The theme toggle works differently based on current mode:
- **System Mode**: Switches to the opposite of current system preference
- **Light Mode**: Switches to your default dark theme
- **Dark Mode**: Switches to your default light theme

## How Themes Work

### Theme Application

When you change appearance settings:
1. Changes apply immediately (live preview)
2. Settings save to local storage
3. Syncs with backend for persistence
4. Theme persists across app restarts

### System Mode Behavior

When using System mode:
- Follows macOS Light/Dark appearance
- Updates automatically when macOS changes
- Uses your selected default themes for each mode
- Respects system preference changes in real-time

### Theme Persistence

Your theme preferences are stored:
- **Locally**: In browser local storage for instant access
- **Backend**: Synced to backend for cross-session persistence
- **Priority**: Local settings used first, backend settings for recovery

## Tips for Using Themes

### Choosing the Right Mode

- **System Mode**: Best for following your daily routine
- **Light Mode**: When working in bright environments
- **Dark Mode**: For low-light conditions or reducing eye strain

### Theme Recommendations

**For Long Coding Sessions**
- Dark themes reduce eye strain in dim lighting
- Tokyo Night and Nord offer good contrast without being harsh
- Dracula provides vibrant colors that are easy to distinguish

**For Documentation Work**
- Light themes often better for reading/writing docs
- GitHub Light familiar for documentation
- Solarized Light offers excellent readability

**For Presentations**
- Use explicit Light or Dark mode (not System)
- Choose high-contrast themes for visibility
- Light theme often better for projectors

## Troubleshooting

### Theme Not Changing

- Check that settings saved properly
- Try refreshing the application
- Verify System mode isn't overriding manual selection

### System Mode Not Following macOS

- Ensure macOS appearance settings are configured
- Check that Reliant has necessary permissions
- Try toggling between modes manually first

### Theme Toggle Not Working

- The toggle cycles through modes based on current state
- In System mode, it switches to explicit opposite theme
- Settings are saved automatically when toggling