---
title: "MCP Servers"
description: "Extend Reliant with Model Context Protocol servers for additional capabilities"
weight: 57
icon: "extension"
---

Model Context Protocol (MCP) servers extend Reliant's capabilities by providing additional tools and context sources. MCP is an open protocol that allows AI assistants to securely interact with external data sources and tools.

## What are MCP Servers?

MCP servers are standalone programs that:
- Expose additional tools and resources to Reliant
- Provide access to external data sources (databases, APIs, file systems)
- Run as separate processes communicating via standard I/O
- Can be written in any language that supports stdio communication

Think of MCP servers as plugins that give Reliant new capabilities without modifying the core application.

## Configuration File

MCP servers are configured in the `.mcp.json` file in your project directory:

```
.mcp.json
```

## Built-in MCP Server Support
Reliant comes with example configurations for common MCP servers. You can enable or customize these in your configuration file.

### Filesystem Server

Provides tools for file system operations with scoped access.

**Configuration**:
```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "${PWD}"]
    }
  }
}
```

**Capabilities**:
- Read and write files in specified directories
- List directory contents
- File search and pattern matching
- Scoped to prevent access outside allowed paths

**Use Cases**:
- Project file management
- Log file analysis
- Configuration file editing

### GitHub Server

Integrates with GitHub for repository operations.

**Configuration**:
```json
{
  "mcpServers": {
    "github": {
      "command": "uvx",
      "args": ["mcp-server-github"],
      "env": {
        "GITHUB_TOKEN": "${GITHUB_TOKEN}"
      }
    }
  }
}
```

**Capabilities**:
- Create and manage issues
- List and update pull requests
- Search repositories
- Manage branches and commits

**Use Cases**:
- Automated issue creation from bugs
- PR workflow automation
- Repository analysis

**Setup**:
1. Create a GitHub personal access token at [github.com/settings/tokens](https://github.com/settings/tokens)
2. Grant appropriate scopes (repo, workflow, etc.)
3. Set `GITHUB_TOKEN` environment variable

### Fetch Server

Retrieves content from web URLs.

**Configuration**:
```json
{
  "mcpServers": {
    "fetch": {
      "command": "uvx",
      "args": ["mcp-server-fetch"]
    }
  }
}
```

**Capabilities**:
- Fetch web pages and API responses
- Download documentation
- Retrieve external resources

**Use Cases**:
- API documentation lookup
- External resource research
- Web content analysis

### SQLite Server

Provides database query capabilities.

**Configuration**:
```json
{
  "mcpServers": {
    "sqlite": {
      "command": "uvx",
      "args": ["mcp-server-sqlite", "--db-path", "${HOME}/mcp-data.db"]
    }
  }
}
```

**Capabilities**:
- Execute SQL queries
- Database schema inspection
- Data analysis and reporting

**Use Cases**:
- Application database queries
- Data migration analysis
- Log database inspection

## Adding Custom MCP Servers

### Basic Configuration Structure

```json
{
  "mcpServers": {
    "server_name": {
      "command": "path/to/executable",
      "args": ["--arg1", "value1"],
      "env": {
        "API_KEY": "${ENV_VAR_NAME}"
      }
    }
  }
}
```

### Configuration Fields

**command** (required)
- Path to the executable or command name
- Can be absolute path or command in PATH
- Examples: `"npx"`, `"python"`, `"/usr/local/bin/custom-server"`

**args** (optional)
- Array of command-line arguments
- Passed to the command in order
- Supports variable substitution (see below)

**env** (optional)
- Environment variables for the server process
- Supports variable substitution from environment
- Format: `"VAR_NAME": "${SOURCE_VAR}"`

## Variable Substitution

MCP server configurations support variable substitution from environment variables:

### Common Variables

**${PWD}** - Current working directory
```json
"args": ["--directory", "${PWD}"]
```

**${HOME}** - User's home directory
```json
"args": ["--config", "${HOME}/.config/app.conf"]
```

**${ENV_VAR}** - Any environment variable
```json
"env": {
  "API_KEY": "${MY_API_KEY}"
}
```

**Default Values**
```json
"env": {
  "API_KEY": "${MY_API_KEY:-default-key}"
}
```

## Example Configurations

### Custom Python MCP Server

```json
{
  "mcpServers": {
    "data_analyzer": {
      "command": "python",
      "args": ["-m", "my_mcp_servers.data_analyzer"],
      "env": {
        "DATA_PATH": "${PROJECT_DATA_PATH}",
        "LOG_LEVEL": "INFO"
      }
    }
  }
}
```

### Node.js MCP Server with Custom Config

```json
{
  "mcpServers": {
    "api_client": {
      "command": "node",
      "args": [
        "${HOME}/mcp-servers/api-client/index.js",
        "--config",
        "${PWD}/.api-config.json"
      ],
      "env": {
        "API_BASE_URL": "${API_URL:-https://api.example.com}",
        "TIMEOUT": "30000"
      }
    }
  }
}
```

### Docker-based MCP Server

```json
{
  "mcpServers": {
    "containerized_tool": {
      "command": "docker",
      "args": [
        "run",
        "--rm",
        "-i",
        "--network=host",
        "my-mcp-server:latest"
      ],
      "env": {
        "CONTAINER_CONFIG": "${MCP_CONFIG_PATH}"
      }
    }
  }
}
```

## Building Your Own MCP Server

### MCP Server Requirements

An MCP server must:
1. Communicate via standard input/output (stdio)
2. Implement the MCP protocol
3. Handle JSON-RPC 2.0 messages
4. Provide tool definitions and implementations

### Minimal Example (Python)

```python
#!/usr/bin/env python3
import json
import sys

def handle_request(request):
    method = request.get("method")
    
    if method == "tools/list":
        return {
            "tools": [
                {
                    "name": "my_tool",
                    "description": "Does something useful",
                    "inputSchema": {
                        "type": "object",
                        "properties": {
                            "input": {"type": "string"}
                        }
                    }
                }
            ]
        }
    elif method == "tools/call":
        tool_name = request["params"]["name"]
        if tool_name == "my_tool":
            return {"result": "Success"}
    
    return {"error": "Unknown method"}

def main():
    for line in sys.stdin:
        request = json.loads(line)
        response = handle_request(request)
        print(json.dumps(response))
        sys.stdout.flush()

if __name__ == "__main__":
    main()
```

### MCP Libraries and SDKs

Official MCP SDKs are available:
- **Python**: `mcp` package
- **TypeScript/Node.js**: `@modelcontextprotocol/sdk`
- **Go**: Community implementations available

Refer to the [Model Context Protocol documentation](https://modelcontextprotocol.io) for detailed specifications.

## Managing MCP Servers

### Enabling/Disabling Servers

**Temporarily disable a server** by commenting it out:
```json
{
  "mcpServers": {
    // "github": {
    //   "command": "uvx",
    //   "args": ["mcp-server-github"]
    // }
  }
}
```

**Or remove it entirely** from the configuration.

### Testing MCP Servers

After adding an MCP server:

1. **Restart Reliant** to load the new configuration
2. **Check logs** for connection errors in your application data directory (e.g., `~/Library/Application Support/Reliant/logs/prod.log` on macOS)
3. **Test in a chat** by asking the agent to use the new tools
4. **Verify server process** is running when Reliant is active

### Debugging MCP Server Issues

**Server won't start**:
- Check command path is correct and executable exists
- Verify all required arguments are provided
- Ensure environment variables are set correctly
- Check server logs if available

**Server starts but tools don't work**:
- Verify server implements MCP protocol correctly
- Check server's stdout for error messages
- Ensure tool definitions match MCP specification
- Test server independently with manual JSON-RPC calls

**Performance issues**:
- Some servers may be slow for certain operations
- Consider adding timeouts in server configuration
- Monitor server resource usage
- Use caching in server implementation when possible

## Security Considerations

### Scoped Access

Always scope MCP servers to minimal necessary access:

**Good - Scoped to project**:
```json
"args": ["--directory", "${PWD}"]
```

**Risky - Full system access**:
```json
"args": ["--directory", "/"]
```

### Environment Variable Security

- Never commit API keys or secrets in configuration files
- Use environment variables for sensitive data
- Consider using secret management tools
- Rotate credentials regularly

### Trusted Servers Only

- Only use MCP servers from trusted sources
- Review server code before using
- Be cautious with servers requiring broad system access
- Monitor server behavior in logs

## Common MCP Server Patterns

### Database Access Pattern

```json
{
  "mcpServers": {
    "app_database": {
      "command": "uvx",
      "args": [
        "mcp-server-postgres",
        "--connection-string",
        "${DATABASE_URL}"
      ],
      "env": {
        "PG_READONLY": "true"
      }
    }
  }
}
```

### API Client Pattern

```json
{
  "mcpServers": {
    "external_api": {
      "command": "node",
      "args": ["${HOME}/mcp-servers/api-wrapper.js"],
      "env": {
        "API_KEY": "${EXTERNAL_API_KEY}",
        "BASE_URL": "${API_BASE_URL}",
        "RATE_LIMIT": "100"
      }
    }
  }
}
```

### File Processing Pattern

```json
{
  "mcpServers": {
    "document_processor": {
      "command": "python",
      "args": [
        "-m",
        "document_mcp",
        "--allowed-extensions",
        "pdf,docx,txt"
      ],
      "env": {
        "TEMP_DIR": "${HOME}/.reliant/temp"
      }
    }
  }
}
```

## Example: Complete Configuration

Here's a complete `.reliant.json` with multiple MCP servers:

```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "${PWD}"]
    },
    "github": {
      "command": "uvx",
      "args": ["mcp-server-github"],
      "env": {
        "GITHUB_TOKEN": "${GITHUB_TOKEN}"
      }
    },
    "database": {
      "command": "uvx",
      "args": [
        "mcp-server-sqlite",
        "--db-path",
        "${PWD}/app.db"
      ]
    },
    "custom_tools": {
      "command": "python",
      "args": ["-m", "my_company.mcp_tools"],
      "env": {
        "CONFIG_PATH": "${HOME}/.config/tools.json",
        "LOG_LEVEL": "INFO"
      }
    }
  }
}
```

## Related Topics

- [Custom Agents]({{< relref "../agents/custom-agents" >}}) - Configure agents to use MCP tools
- [API Keys]({{< relref "api-keys" >}}) - Set up credentials for MCP servers
- [Troubleshooting]({{< relref "../troubleshooting" >}}) - Debug MCP server issues
