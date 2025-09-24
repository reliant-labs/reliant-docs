---
title: "Installation"
description: "Download and install Reliant on your Mac"
weight: 10
icon: "download_for_offline"
---

Get Reliant up and running on your system with these simple installation steps.

## System Requirements

Before installing Reliant, ensure your Mac meets these requirements:

### macOS Version
- **Minimum**: macOS 11.0 (Big Sur)
- **Recommended**: macOS 13.0 (Ventura) or later
- **Supported**: Both Intel and Apple Silicon (M1/M2/M3)

### Hardware Requirements
- **RAM**: Minimum 8GB, recommended 16GB+
- **Storage**: At least 4GB of free disk space
- **Processor**: Intel x86-64 or Apple Silicon

### Additional Requirements
- **Internet Connection**: Required for AI features and updates
- **API Key**: Required for AI functionality (OpenAI, Anthropic, etc.)
- **Git**: Optional but recommended for version control features

## Download Reliant

### Download Links

Choose the version for your Mac:

- **Apple Silicon (M1/M2/M3/M4)**: [Download Reliant for Apple Silicon](https://downloads.reliantlabs.io/Reliant-latest-mac-arm64.dmg)
- **Intel**: [Download Reliant for Intel](https://downloads.reliantlabs.io/Reliant-latest-mac-x64.dmg)

Not sure which version you need? Check Apple menu → About This Mac → Chip

## Installation Steps

### Installing from DMG

1. **Download the DMG file** using the links above
2. **Open the DMG file** by double-clicking it
3. **Drag Reliant** to your Applications folder
4. **Eject the DMG** once copying is complete

### First Launch

1. **Open Reliant** from your Applications folder
2. **macOS Security**: If you see "Reliant can't be opened":
   - Right-click the app and select **"Open"**
   - Click **"Open"** in the dialog that appears
   - This only needs to be done once
3. **Grant Permissions** when prompted:
   - File system access for project files
   - Network access for API calls

### Apple Silicon Users

If you have an M1/M2/M3 Mac:
- Reliant runs natively on Apple Silicon
- No Rosetta required
- Optimal performance out of the box

## Post-Installation Setup

### Initial Configuration

1. **Launch Reliant** from Applications
2. **Configure API Key**:
   - Go to Settings → API Configuration
   - Select your AI provider
   - Enter your API key
   - Test the connection
3. **Create Your First Project**:
   - Click "New Project"
   - Select your project folder
   - Let Reliant index your code
4. **Customize Settings** (optional):
   - Choose your preferred theme
   - Set keyboard shortcuts

## Updating Reliant

### Automatic Updates

Reliant checks for updates automatically:
- Notification when new version available
- One-click update from within the app
- Your settings and projects are preserved
- Automatic restart after update

### Manual Updates

To manually check for updates:
1. Go to **Reliant** → **Check for Updates**
2. Or download from [GitHub Releases](https://github.com/reliant-labs/reliant/releases)
3. Install over existing version
4. Restart Reliant

## Uninstalling Reliant

### Complete Removal

To fully uninstall Reliant:

1. **Quit Reliant** if it's running
2. **Delete the app**:
   - Drag Reliant from Applications to Trash
   - Empty Trash
3. **Remove settings** (optional):
   ```bash
   rm -rf ~/Library/Application\ Support/Reliant
   rm -rf ~/Library/Caches/Reliant
   rm -rf ~/Library/Logs/Reliant
   ```
4. **Remove preferences**:
   ```bash
   defaults delete com.reliantlabs.reliant
   ```

Your projects and code remain untouched



## Troubleshooting Installation

### Common Issues

**App crashes on launch**
- Ensure you meet minimum system requirements
- Check for conflicting software
- Try deleting preferences: `defaults delete com.reliantlabs.reliant`
- Reinstall the app

**"Reliant is damaged and can't be opened"**
- Remove quarantine attribute:
  ```bash
  xattr -cr /Applications/Reliant.app
  ```
- Redownload from official source

### Verifying Installation

Check that Reliant is working:
1. Launch from Applications
2. Create a test project
3. Send a test message in chat
4. Verify AI responds correctly

### Getting Help

If you encounter installation issues:
1. Check the [Troubleshooting section]({{< relref "troubleshooting" >}})
2. Review the [FAQ]({{< relref "faq" >}})
3. File an issue on [GitHub](https://github.com/reliant-labs/reliant/issues)
4. Contact support at support@reliantlabs.com

---

**Next**: [Getting Started]({{< relref "getting-started" >}}) - Learn how to launch and use Reliant for the first time.
