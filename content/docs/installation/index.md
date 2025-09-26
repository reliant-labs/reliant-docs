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
- **Supported**: Both Intel and Apple Silicon

### Hardware Requirements
- **RAM**: Minimum 8GB, recommended 16GB+
- **Storage**: At least 4GB of free disk space
- **Processor**: Intel x86-64 or Apple Silicon

### Additional Requirements
- **Internet Connection**: Required for AI features and updates
- **API Key**: Required for AI functionality (OpenAI, Anthropic, etc.)
- **Git**: Optional but recommended for version control features

## Download Reliant

Choose the version for your Mac:

<div class="row g-3 mb-4">
   <div class="col-md-6">
      <a href="https://downloads.reliantlabs.io/Reliant-latest-mac-arm64.dmg" class="btn btn-outline-primary d-flex align-items-center justify-content-center">
         <span class="material-icons me-2">download</span>
         Reliant for Apple Silicon
      </a>
      <p class="text-muted small mt-2 mb-0">For Apple M Series Macs</p>
   </div>
   <div class="col-md-6">
      <a href="https://downloads.reliantlabs.io/Reliant-latest-mac-x64.dmg" class="btn btn-outline-primary d-flex align-items-center justify-content-center">
         <span class="material-icons me-2">download</span>
         Reliant for Intel Macs
      </a>
      <p class="text-muted small mt-2 mb-0">For Intel based Macs</p>
   </div>
</div>

<div class="alert alert-info">
   <strong>Not sure which version?</strong> Check Apple menu → About This Mac → Chip
</div>

## Post-Installation Setup

After installation, you'll need to:
1. **Launch Reliant** from Applications
2. **Choose a project folder** to work with
3. **Select your preferred AI provider**
4. **Configure API Key** in the settings

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