---
title: "Installation"
description: "Download and install Reliant on macOS and Linux"
weight: 10
icon: "download_for_offline"
---

Get Reliant up and running on your system with these simple installation steps.

## Install via Homebrew (Recommended)

The easiest way to install Reliant is via Homebrew:

```bash
brew install --cask reliant-labs/reliant/reliant
```

Or add the tap first, then install:

```bash
brew tap reliant-labs/reliant
brew install --cask reliant
```

Homebrew automatically downloads the correct version for your Mac (Apple Silicon or Intel).

## System Requirements

Before installing Reliant, ensure your system meets these requirements:

### Operating System
**macOS**
- **Minimum**: macOS 11.0 (Big Sur)
- **Recommended**: macOS 13.0 (Ventura) or later
- **Supported**: Both Intel and Apple Silicon

**Linux**
- **Supported**: x86_64 and ARM64 architectures
- **Format**: AppImage (compatible with most distributions)

### Hardware Requirements
- **RAM**: Minimum 8GB, recommended 16GB+
- **Storage**: At least 4GB of free disk space
- **Processor**: Intel x86-64, Apple Silicon, or ARM64

### Additional Requirements
- **Internet Connection**: Required for AI features and updates
- **API Key**: Required for AI functionality (see options below)
- **Git**: Optional but recommended for version control features

#### Getting an API Key

**Option 1: Use Your Claude Code Subscription**

If you have a Claude Code subscription, you can use it with Reliant:
- Run `claude setup-token` in your terminal
- Copy the displayed API key
- Use it with the Anthropic provider in Reliant

**Option 2: Get a Provider API Key**

Sign up directly with any supported provider (Anthropic, OpenAI, etc.) and generate an API key from their dashboard.

## Direct Download

Alternatively, you can download Reliant directly.

### macOS

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

### Linux

Choose the version for your Linux system:

<div class="row g-3 mb-4">
   <div class="col-md-6">
      <a href="https://downloads.reliantlabs.io/Reliant-latest-linux-x86_64.AppImage" class="btn btn-outline-primary d-flex align-items-center justify-content-center">
         <span class="material-icons me-2">download</span>
         Reliant for x86_64
      </a>
      <p class="text-muted small mt-2 mb-0">For Intel/AMD 64-bit systems</p>
   </div>
   <div class="col-md-6">
      <a href="https://downloads.reliantlabs.io/Reliant-latest-linux-arm64.AppImage" class="btn btn-outline-primary d-flex align-items-center justify-content-center">
         <span class="material-icons me-2">download</span>
         Reliant for ARM64
      </a>
      <p class="text-muted small mt-2 mb-0">For ARM 64-bit systems</p>
   </div>
</div>

<div class="alert alert-info">
   <strong>Linux installation:</strong> After downloading, make the AppImage executable with <code>chmod +x Reliant-latest-linux-*.AppImage</code> and run it.
</div>

## Post-Installation Setup

After installation, you'll need to:
1. **Launch Reliant** (from Applications on macOS, or run the AppImage on Linux)
2. **Choose a project folder** to work with
3. **Select your preferred AI provider**
4. **Configure API Key** in the settings

## Updating Reliant

### Via Homebrew

If you installed via Homebrew:

```bash
brew upgrade --cask reliant
```

### Manual Update

To manually check for updates:
1. Go to **Reliant** → **Check for Updates**
2. Or download from [here]({{< relref "installation#direct-download" >}})
3. Install over existing version
4. Restart Reliant

## Uninstalling Reliant

### Via Homebrew

If you installed via Homebrew:

```bash
brew uninstall --cask reliant
```

To also remove settings and logs:

```bash
brew uninstall --cask reliant --zap
```

### macOS (Manual Removal)

To fully uninstall Reliant manually on macOS:

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

### Linux

To fully uninstall Reliant on Linux:

1. **Quit Reliant** if it's running
2. **Delete the AppImage** file
3. **Remove settings** (optional):
   ```bash
   rm -rf ~/.config/reliant
   rm -rf ~/.local/share/reliant
   ```

Your projects and code remain untouched

### Getting Help

If you encounter installation issues contact support at support@reliantlabs.com

---

**Next**: [Getting Started]({{< relref "getting-started" >}}) - Learn how to launch and use Reliant for the first time.