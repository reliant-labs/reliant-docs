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
- **Supported**: Both Intel and Apple Silicon (M1/M2/M3/M4)

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

- [Apple Silicon](https://downloads.reliantlabs.io/Reliant-latest-mac-arm64.dmg) **(M1/M2/M3/M4)**
- [Intel](https://downloads.reliantlabs.io/Reliant-latest-mac-x64.dmg)

Not sure which version you need? Check Apple menu → About This Mac → Chip

## Post-Installation Setup


## Updating Reliant

To manually check for updates:
1. Go to **Reliant** → **Check for Updates**
2. Or download from [here]({{< relref "installation#download-reliant" >}})
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
   rm -rf ~/Library/Application\ Support/reliant
   rm -rf ~/Library/Logs/Reliant
   ```
4. **Remove preferences**:
   ```bash
   defaults delete com.reliantlabs.reliant
   ```

Your projects and code remain untouched

### Getting Help

If you encounter installation issues contact support at support@reliantlabs.com

---

**Next**: [Getting Started]({{< relref "getting-started" >}}) - Learn how to launch and use Reliant for the first time.
