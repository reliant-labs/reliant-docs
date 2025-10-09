---
title: "API Keys & Model Providers"
description: "Configure AI model providers and API keys for Reliant"
weight: 56
icon: "key"
---

Reliant supports multiple AI model providers, allowing you to choose the best models for your workflow. You can configure API keys through environment variables, configuration files, or the Settings UI.

## Quick Start

### Using an Existing Claude Code Subscription

If you already have a Claude Code subscription, you can use it with Reliant:

1. **Get your API key** by running this command in your terminal:
   ```bash
   claude setup-token
   ```

2. **Follow the authentication flow** that opens in your browser

3. **Copy the API key** shown after authentication

4. **Configure Reliant** using one of these methods:

   **Option A: Settings UI**
   - Open Reliant Settings
   - Navigate to AI Providers
   - Select "Anthropic" provider
   - Paste your API key
   - Click "Save" or "Test Connection"

   **Option B: Environment Variable**
   ```bash
   export ANTHROPIC_API_KEY="your-api-key-here"
   ```

   **Option C: Configuration File** (`.reliant.json`)
   ```json
   {
     "providers": {
       "anthropic": {
         "apiKey": "your-api-key-here"
       }
     }
   }
   ```

## Supported Providers

Reliant supports the following AI model providers:

### Anthropic (Claude)

**Available Models**: Claude 4.5 Sonnet, Claude 4 Opus, Claude 3.7 Sonnet, Claude 3 Haiku

**Configuration**:
```bash
export ANTHROPIC_API_KEY="sk-ant-..."
```

Or in `.reliant.json`:
```json
{
  "providers": {
    "anthropic": {
      "apiKey": "sk-ant-...",
      "disabled": false
    }
  }
}
```

**Getting an API Key**:
- Sign up at [console.anthropic.com](https://console.anthropic.com)
- Or use existing Claude Code subscription (see Quick Start above)

### OpenAI

**Available Models**: GPT-5, GPT-4.1, GPT-4.1-mini, GPT-4.1-nano

**Configuration**:
```bash
export OPENAI_API_KEY="sk-..."
```

Or in `.reliant.json`:
```json
{
  "providers": {
    "openai": {
      "apiKey": "sk-...",
      "disabled": false
    }
  }
}
```

**Getting an API Key**:
- Sign up at [platform.openai.com](https://platform.openai.com)
- Navigate to API Keys section
- Create new secret key

### Google Gemini

**Available Models**: Gemini 2.5 Pro, Gemini 2.5 Flash

**Configuration**:
```bash
export GEMINI_API_KEY="..."
```

Or in `.reliant.json`:
```json
{
  "providers": {
    "gemini": {
      "apiKey": "...",
      "disabled": false
    }
  }
}
```

**Getting an API Key**:
- Visit [ai.google.dev](https://ai.google.dev)
- Sign in with Google account
- Create API key in API Keys section

### GitHub Copilot

**Configuration**:
```bash
export GITHUB_TOKEN="ghp_..."
```

Or in `.reliant.json`:
```json
{
  "providers": {
    "copilot": {
      "disabled": false
    }
  }
}
```

**Getting Access**:
- Requires active GitHub Copilot subscription
- Generate token at [github.com/settings/tokens](https://github.com/settings/tokens)
- Needs `copilot` scope

### OpenRouter

**Configuration**:
```bash
export OPENROUTER_API_KEY="sk-or-..."
```

Or in `.reliant.json`:
```json
{
  "providers": {
    "openrouter": {
      "apiKey": "sk-or-...",
      "disabled": false
    }
  }
}
```

**Getting an API Key**:
- Sign up at [openrouter.ai](https://openrouter.ai)
- Navigate to Keys section
- Create new API key

### Azure OpenAI

**Configuration**:
```bash
export AZURE_OPENAI_ENDPOINT="https://your-resource.openai.azure.com"
export AZURE_OPENAI_API_KEY="..."  # Optional if using Entra ID
export AZURE_OPENAI_API_VERSION="2024-02-15-preview"
```

Or in `.reliant.json`:
```json
{
  "providers": {
    "azure": {
      "endpoint": "https://your-resource.openai.azure.com",
      "apiKey": "...",
      "apiVersion": "2024-02-15-preview",
      "disabled": false
    }
  }
}
```

**Setup**:
- Requires Azure subscription with OpenAI resource
- Find endpoint in Azure Portal under your OpenAI resource
- API key available in Keys and Endpoint section

### AWS Bedrock (Claude)

**Configuration**:
```bash
export AWS_ACCESS_KEY_ID="..."
export AWS_SECRET_ACCESS_KEY="..."
export AWS_REGION="us-east-1"
```

Or in `.reliant.json`:
```json
{
  "providers": {
    "bedrock": {
      "accessKeyId": "...",
      "secretAccessKey": "...",
      "region": "us-east-1",
      "disabled": false
    }
  }
}
```

**Setup**:
- Requires AWS account with Bedrock access
- Enable Claude models in AWS Bedrock console
- Create IAM user with Bedrock permissions
- Generate access keys in IAM console

### Groq

**Configuration**:
```bash
export GROQ_API_KEY="gsk_..."
```

Or in `.reliant.json`:
```json
{
  "providers": {
    "groq": {
      "apiKey": "gsk_...",
      "disabled": false
    }
  }
}
```

**Getting an API Key**:
- Sign up at [console.groq.com](https://console.groq.com)
- Navigate to API Keys
- Create new API key

### Vertex AI (Google Cloud)

**Configuration**:
```bash
export VERTEXAI_PROJECT="your-gcp-project-id"
export VERTEXAI_LOCATION="us-central1"
```

Or in `.reliant.json`:
```json
{
  "providers": {
    "vertexai": {
      "project": "your-gcp-project-id",
      "location": "us-central1",
      "disabled": false
    }
  }
}
```

**Setup**:
- Requires Google Cloud Platform account
- Enable Vertex AI API in GCP console
- Authenticate using `gcloud auth application-default login`

### xAI (Grok)

**Configuration**:
```bash
export XAI_API_KEY="xai-..."
```

Or in `.reliant.json`:
```json
{
  "providers": {
    "xai": {
      "apiKey": "xai-...",
      "disabled": false
    }
  }
}
```

**Getting an API Key**:
- Sign up at [console.x.ai](https://console.x.ai)
- Navigate to API Keys section
- Generate new key

### Local Models

**Configuration**:
```bash
export LOCAL_ENDPOINT="http://localhost:1234/v1"
```

Or in `.reliant.json`:
```json
{
  "providers": {
    "local": {
      "endpoint": "http://localhost:1234/v1",
      "disabled": false
    }
  }
}
```

**Compatible Servers**:
- [Ollama](https://ollama.ai) (with OpenAI compatibility)
- [LM Studio](https://lmstudio.ai)
- [LocalAI](https://localai.io)
- [vLLM](https://github.com/vllm-project/vllm)

## Configuration Priority

Reliant checks for configuration in this order:

1. **Environment Variables** (highest priority)
2. **Configuration File** (`.reliant.json`)
3. **Settings UI** (stored in config file)

Environment variables override configuration file settings, allowing temporary changes without modifying files.

## Testing API Keys

After configuring a provider:

1. Open Reliant Settings
2. Navigate to the AI Providers section
3. Find your configured provider
4. Click "Test Connection" or "Validate"
5. Verify you see a success message

## Common Issues

### "Invalid API Key" Error

**Solutions**:
- Verify key is copied correctly with no extra spaces
- Check key hasn't expired (regenerate if needed)
- Ensure you're using the correct provider (e.g., Anthropic key for Claude models)
- For Claude Code keys, verify they're still active

### "Rate Limit Exceeded"

**Solutions**:
- Wait before sending more requests
- Check your provider's rate limits for your tier
- Consider upgrading your plan
- Use a different API key or provider temporarily

### Provider Not Showing in UI

**Solutions**:
- Restart Reliant after configuration changes
- Check configuration file syntax (JSON must be valid)
- Ensure provider isn't marked as `"disabled": true`

### Connection Timeout

**Solutions**:
- Verify internet connection
- Check firewall settings
- For local models, ensure server is running
- Disable VPN temporarily to test

## Security Best Practices

### Never Commit API Keys

Add to `.gitignore`:
```
.reliant.json
.env
```

### Use Environment Variables for CI/CD

In CI/CD pipelines, set API keys as secret environment variables:
```yaml
env:
  ANTHROPIC_API_KEY: ${{ secrets.ANTHROPIC_API_KEY }}
```

### Rotate Keys Regularly

- Rotate API keys every 90 days
- Immediately rotate if a key may have been exposed
- Use different keys for development and production

### Limit Key Permissions

Where possible:
- Use read-only or limited-scope keys
- Create separate keys for different projects
- Monitor key usage in provider dashboards

## Rate Limits and Billing

Different provider tiers have different limits:

### Free Tiers
- Usually have strict rate limits (e.g., 5 requests/minute)
- Lower token allowances
- May have daily caps

### Paid Tiers
- Higher rate limits (e.g., 50-100 requests/minute)
- Pay-per-token pricing
- No daily caps (but cost limits)

### Enterprise Tiers
- Custom rate limits
- Volume discounts
- Dedicated support

Check your provider's documentation for specific limits and pricing.

## Related Topics

- [Custom Agents]({{< relref "../agents/custom-agents" >}}) - Configure which models agents use
- [MCP Servers]({{< relref "mcp-servers" >}}) - Extend capabilities with external tools
- [Troubleshooting]({{< relref "../troubleshooting" >}}) - Solve common API key issues
