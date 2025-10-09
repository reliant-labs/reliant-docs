---
title: "Privacy & Security"
description: "Understand how Reliant handles your data and maintains security"
weight: 80
icon: "shield"
---

Reliant is built with privacy and security as core principles. Your code and conversations belong to you, and we're committed to protecting them.

## Data Ownership

**Your data is yours.** Period.

- We will never sell your data
- We will never use your data to train models across accounts
- We will never share your conversations or code with third parties
- Your data is stored locally and optionally synchronized to your private cloud storage

## What Data is Stored

### Locally Stored Data

Reliant stores the following data on your local machine:

**Conversation History**
- Messages between you and AI agents
- Tool calls and their results
- Agent transitions and state changes
- Session metadata (timestamps, titles, agents used)

Location: Application data directory (e.g., `~/Library/Application Support/Reliant/` on macOS)

**Configuration**
- API keys (encrypted)
- Model preferences
- MCP server configurations

Location: `.reliant.json` in application data directory

**Project Data**
- Custom agent definitions (`.reliant/agents/`)
- Custom taskforce configurations (`.reliant/taskforces/`)
- Project-specific settings

Location: Within your project's `.reliant/` directory

### Optionally Synchronized Data

If you enable remote sessions (for mobile access or multi-device sync):

**Session Synchronization**
- Conversation history (to resume on other devices)
- Tool call records (for context continuity)
- Agent configurations (for consistent experience)

**Not Synchronized**:
- API keys (never leave your device)
- Local file contents (only file paths are stored)
- Git repository data
- Build artifacts or generated files

## Security Modes

### Standard Mode (Default)

In standard mode:
- Conversations are stored locally in SQLite database
- API keys are stored encrypted in configuration files
- Tool calls have access to your file system within project scope
- Network requests go directly to your configured AI providers

### Security Mode

Enable security mode for maximum privacy:

```json
{
  "securityMode": true
}
```

When security mode is enabled:
- All file paths are scrubbed before sending to AI models
- Sensitive patterns (API keys, tokens, passwords) are detected and redacted
- Network requests are logged for audit
- Tool call permissions require explicit confirmation
- Model responses are scanned for potential data leakage

> **Note**: Security mode may impact agent effectiveness as context is more limited.

### Offline Mode

Work completely offline:

```json
{
  "offlineMode": true,
  "providers": {
    "local": {
      "endpoint": "http://localhost:1234/v1"
    }
  }
}
```

In offline mode:
- Only local models are available
- No data leaves your machine
- No internet connection required
- All processing happens locally

## Telemetry and Analytics

### What We Collect

Reliant collects minimal telemetry to improve the product:

**Usage Statistics** (Anonymous):
- Feature usage counts (which tools, agents used)
- Performance metrics (response times, error rates)
- Configuration patterns (which models are popular)

**Crash Reports** (Optional):
- Stack traces for unhandled errors
- System information (OS version, Reliant version)
- Error context (what operation failed)

**What We DON'T Collect**:
- Your code or file contents
- Conversation messages
- API keys or credentials
- Personal information
- File paths or project names

### Disabling Telemetry

You can completely disable telemetry:

**Via Settings UI**:
1. Open Settings
2. Navigate to Privacy section
3. Toggle \"Enable Telemetry\" off

**Via Configuration File**:
```json
{
  \"telemetry\": {
    \"enabled\": false,
    \"crashReports\": false
  }
}
```

**Via Environment Variable**:
```bash
export RELIANT_TELEMETRY_DISABLED=1
```

Disabling telemetry does not affect functionality - Reliant works exactly the same.

## Data Deletion

### Deleting Local Data

**Delete All Application Data** (macOS):
```bash
rm -rf ~/Library/Application\ Support/Reliant/
```

For other platforms, delete the application data directory in the equivalent location.

**Delete Specific Sessions**:
- In Reliant UI: Right-click session → Delete
- Or delete the SQLite database in the application data directory

Reliant will recreate necessary directories and databases on next launch.

**Delete Project Data**:
```bash
# In your project directory
rm -rf .reliant/
```

This removes custom agents, taskforces, and project-specific configuration.

### Deleting Remote Data

If you've enabled remote sync:

1. Go to Settings → Privacy
2. Click \"Delete All Remote Data\"
3. Confirm deletion
4. All synced conversations are permanently deleted from cloud storage

> **Important**: Deletion is permanent and cannot be undone.

## API Keys and Credentials

### How API Keys Are Stored

**Encrypted Storage**:
- API keys are encrypted using AES-256
- Encryption key is derived from system-specific data
- Keys are never stored in plain text

**Location**:
- Configuration file: `.reliant.json` in application data directory
- Encrypted with system keychain integration (macOS Keychain, Windows Credential Manager, Linux Secret Service)

### Key Security Best Practices

**Do**:
- ✅ Use environment variables for CI/CD
- ✅ Rotate keys regularly (every 90 days)
- ✅ Use different keys for dev and production
- ✅ Monitor API key usage in provider dashboards

**Don't**:
- ❌ Commit API keys to git repositories
- ❌ Share configuration files containing keys
- ❌ Use production keys in development
- ❌ Store keys in plain text files

### Revoking Compromised Keys

If an API key is compromised:

1. **Immediately revoke** the key in your provider's dashboard
2. **Generate a new key**
3. **Update Reliant configuration** with the new key
4. **Review recent activity** in provider's usage logs
5. **Audit git history** to ensure key wasn't committed

## Enterprise Security

For enterprise deployments, Reliant supports additional security features:

### Single Sign-On (SSO)

Integrate with your company's identity provider:
- SAML 2.0
- OAuth 2.0 / OpenID Connect
- LDAP / Active Directory

Contact enterprise@reliant.ai for setup assistance.

### Audit Logging

Enable comprehensive audit logging:

```json
{
  \"audit\": {
    \"enabled\": true,
    \"logPath\": \"/var/log/reliant/audit.log\",
    \"includeToolCalls\": true,
    \"includeFileAccess\": true
  }
}
```

Audit logs include:
- All tool executions
- File access patterns
- API calls made
- Configuration changes
- User actions

### Network Policies

Restrict network access:

```json
{
  \"network\": {
    \"allowedDomains\": [
      \"api.anthropic.com\",
      \"api.openai.com\"
    ],
    \"blockAllOthers\": true,
    \"requireProxy\": true,
    \"proxyUrl\": \"http://corporate-proxy:8080\"
  }
}
```

### Data Residency

For compliance with regional data laws:

```json
{
  \"dataResidency\": {
    \"region\": \"eu-west-1\",
    \"enforceRegion\": true
  }
}
```

Ensures all data processing and storage occurs in specified region.

## Compliance

Reliant is designed to help meet compliance requirements:

### GDPR (General Data Protection Regulation)

- **Right to Access**: Export all your data via Settings → Privacy → Export Data
- **Right to Deletion**: Delete all data via Settings → Privacy → Delete All Data  
- **Right to Portability**: Data is stored in standard formats (JSON, SQLite)
- **Privacy by Design**: Minimal data collection, local-first architecture

### SOC 2

Enterprise deployments can be configured for SOC 2 compliance:
- Audit logging
- Access controls
- Encryption at rest and in transit
- Regular security assessments

### HIPAA

For healthcare organizations:
- Enable security mode
- Use offline mode or HIPAA-compliant AI providers
- Configure audit logging
- Implement data retention policies

Contact enterprise@reliant.ai for compliance assistance.

## Encryption

### Data at Rest

**Local Database**:
- SQLite database encrypted with SQLCipher
- AES-256 encryption
- Per-user encryption keys

**Configuration Files**:
- Sensitive fields encrypted with system keychain
- Platform-specific secure storage integration

### Data in Transit

**AI Provider Communication**:
- TLS 1.3 for all API communications
- Certificate pinning for known providers
- Secure websocket connections (WSS)

**Remote Sync** (if enabled):
- End-to-end encryption
- Keys never leave your device
- Zero-knowledge architecture

## Security Updates

### Update Policy

Reliant releases security updates promptly:
- **Critical vulnerabilities**: Patch within 24 hours
- **High severity**: Patch within 7 days  
- **Medium severity**: Patch within 30 days

### Automatic Updates

Enable automatic security updates:

```json
{
  \"updates\": {
    \"automatic\": true,
    \"securityOnly\": true
  }
}
```

### Security Notifications

Subscribe to security notifications:
- Email: security@reliant.ai
- GitHub Security Advisories
- RSS feed: https://reliant.ai/security.rss

## Reporting Security Issues

**Found a security vulnerability?**

Please report it responsibly:

**Email**: security@reliant.ai

**Include**:
- Vulnerability description
- Steps to reproduce
- Potential impact
- Your contact information (optional)

**Response Time**:
- Initial response within 24 hours
- Assessment within 3 business days
- Resolution timeline based on severity

**Bug Bounty**: We reward security researchers who responsibly disclose vulnerabilities. Contact security@reliant.ai for bounty details.

## Best Practices Summary

**For Individual Developers**:
1. Keep API keys secure and rotate regularly
2. Enable telemetry opt-out if desired
3. Regularly update Reliant to latest version
4. Use security mode for sensitive projects
5. Review file access permissions for agents

**For Teams**:
1. Use separate API keys per team member
2. Enable audit logging
3. Implement access controls
4. Regular security training
5. Establish data retention policies

**For Enterprises**:
1. Deploy with SSO integration
2. Configure network restrictions
3. Enable comprehensive audit logging
4. Implement data residency requirements
5. Regular security assessments

## Related Topics

- [API Keys]({{< relref \"settings/api-keys\" >}}) - Secure API key management
- [MCP Servers]({{< relref \"settings/mcp-servers\" >}}) - Security considerations for external tools
- [Troubleshooting]({{< relref \"troubleshooting\" >}}) - Debug privacy and security issues
