---
title: "Context Files & Agent Memory"
description: "Configure files that are automatically included in AI context for better project understanding"
weight: 58
icon: "memory"
---

Reliant can automatically include specific files in every AI chat session, providing persistent context about your project's patterns, conventions, and architectural decisions. This feature is similar to Claude Code's `.claude.json` functionality.

## Memories Feature (Dynamic Context Loading)

**New in latest version**: Reliant now supports a **memories feature** that dynamically loads context from `reliant.md` files at both global and project levels on every LLM interaction.

### How Memories Work

Memories are loaded dynamically and injected into the system prompt on each LLM call, providing:
- **Global guidelines** from `~/.reliant/reliant.md` - applies to all projects
- **Project-specific context** from `{project_root}/reliant.md` - applies to current project
- **Dynamic loading** - changes take effect immediately on next interaction
- **Graceful handling** - missing files don't break the system

### Setting Up Memories

#### Global Memory (`~/.reliant/reliant.md`)

Create a file at `~/.reliant/reliant.md` for context that applies across all your projects:

```bash
mkdir -p ~/.reliant
cat > ~/.reliant/reliant.md << 'EOF'
# My Global Development Guidelines

- Always use descriptive variable names
- Write comprehensive tests for all features
- Follow clean code principles
- Prefer composition over inheritance
- Use conventional commits
EOF
```

#### Project Memory (`{project_root}/reliant.md`)

Create a file in your project root for project-specific context:

```bash
# In your project directory
cat > reliant.md << 'EOF'
# Project Context

This is a Go-based microservices application using:
- Temporal for workflow orchestration
- PostgreSQL for data storage
- gRPC for service communication

## Architecture Decisions
- Use structured logging with slog
- Follow standard Go project layout
- All services must be containerized
EOF
```

### Memory Loading Priority

When both files exist:
1. Global memory (`~/.reliant/reliant.md`) is loaded first
2. Project memory (`{project}/reliant.md`) is loaded second
3. Both are combined and included in the system prompt
4. Each memory section is clearly labeled ("# Global Context", "# Project Context")

### Benefits of Memories

✅ **Persistent Context**: Set guidelines once, they apply to all interactions  
✅ **Project Customization**: Each project can have specific instructions  
✅ **Dynamic Loading**: Changes take effect immediately without restart  
✅ **Graceful Degradation**: System works fine without memory files  
✅ **Layered Context**: Combine global + project-specific context  

### Example Memory Files

**Global Memory (`~/.reliant/reliant.md`)**:
```markdown
# Global Development Standards

## Code Review Guidelines
- All PRs require 2 approvals
- Address all review comments
- No force-pushing after review starts

## Security
- Never commit secrets or credentials
- Use environment variables for configuration
- Follow OWASP best practices

## Testing
- Write tests for all new features
- Aim for >80% code coverage
- Use table-driven tests in Go
```

**Project Memory (`reliant.md`)**:
```markdown
# Reliant AI Agent Project

## Tech Stack
- Backend: Go with Temporal workflows
- Frontend: TypeScript with React
- Database: PostgreSQL with sqlc

## Key Conventions

### Go Code
- Follow standard Go project layout
- Use `internal/` for private packages
- Structured logging with slog

### Testing
- Unit tests in `*_test.go` files
- Integration tests in `internal/v2/integration/`
- Use testify for assertions

## Common Tasks

### Adding a New Tool
1. Create tool in `internal/llm/tools/`
2. Register in tool factory
3. Write tests
4. Update documentation
```

### When to Use Memories vs Context Files

**Use Memories (`reliant.md`)** for:
- Core project guidelines that should always be present
- Architecture decisions and patterns
- Development workflows
- Coding conventions

**Use Context Paths Configuration** for:
- Multiple specific documentation files
- Compatibility with other AI tools (`.cursorrules`, `CLAUDE.md`)
- Custom file locations
- Advanced configuration scenarios

## What are Context Files?

Context files are documentation, guidelines, or reference files that you want the AI to always have access to during conversations. They help the AI better understand your project's:

- **Coding conventions** and style guidelines
- **Architecture decisions** and patterns
- **Project-specific terminology** and domain knowledge
- **Common workflows** and development practices
- **Testing strategies** and quality standards

## Context Files vs Memories

Reliant supports two ways to provide context:

### 1. Memories (Recommended - New Feature)
- **Global**: `~/.reliant/reliant.md` - applies to all projects
- **Project**: `{project_root}/reliant.md` - applies to current project
- Dynamically loaded on every LLM interaction
- Simple, straightforward setup

### 2. Context Files Configuration (Legacy/Advanced)
For backwards compatibility and advanced use cases, Reliant can also be configured to load specific context files via `.reliant.json` configuration.

**Default context file paths** (checked if configured):
```
.github/copilot-instructions.md
.cursorrules
.cursor/rules/
CLAUDE.md
CLAUDE.local.md
reliant.local.md
Reliant.local.md
```

Note: With the new memories feature, simply using `~/.reliant/reliant.md` and `reliant.md` in your project root is the simplest approach.

## Recommended File Usage

### `reliant.md` (Recommended with Memories Feature)

With the new memories feature, simply create `reliant.md` in your project root. This file is automatically loaded on every LLM interaction.

**Example content**:
```markdown
# Project Context for Reliant

## Architecture Overview
This is a monorepo with 3 main applications:
- `web/` - React frontend using TypeScript
- `api/` - Go backend with REST API
- `worker/` - Background job processor

## Coding Conventions
- Use functional components with hooks in React
- Follow Go's standard project layout
- All API endpoints must have tests
- Use conventional commits for commit messages

## Common Patterns
### Error Handling
Always wrap errors with context:
```go
if err != nil {
    return fmt.Errorf("failed to process user: %w", err)
}
```

### Component Structure
React components should follow this structure:
1. Imports
2. Type definitions
3. Component definition
4. Styles (if using styled-components)

## Testing Guidelines
- Unit tests for all business logic
- Integration tests for API endpoints
- E2E tests for critical user flows
- Minimum 80% code coverage
```

### `~/.reliant/reliant.md` (Global Memory)

Create a global memory file for guidelines that apply to all your projects. This file lives in your home directory and is automatically loaded for every project.

**Example content**:
```markdown
# My Global Guidelines

## Code Quality
- Always use meaningful variable names
- Write comprehensive tests
- Follow clean code principles

## Git Practices
- Use conventional commits
- Write descriptive commit messages
- Keep commits atomic
```

**Note**: This is not committed to any repository - it's personal to your machine.

### `reliant.local.md` (Local Overrides - Legacy)

Personal or machine-specific context that shouldn't be committed to version control. With the memories feature, consider using `~/.reliant/reliant.md` instead for global personal preferences.

**Example content**:
```markdown
# Local Development Context

## My Setup
- Using VS Code with Go and React extensions
- Local PostgreSQL running on port 5433 (not default)
- Redis on default port 6379

## Personal Preferences
- Prefer using `make test` over direct go test commands
- Always run linters before committing
- Use `make dev` to start all services in development mode

## Current Focus
Working on the authentication system overhaul in the `auth-v2` branch.
```

**Add to `.gitignore`**:
```
*.local.md
```

### `CLAUDE.md`

If you also use Claude Code or want cross-compatibility, use this filename.

### `.cursorrules` or `.github/copilot-instructions.md`

Maintains compatibility with Cursor and GitHub Copilot if you use those tools.

## Custom Context Paths

You can configure additional context files beyond the defaults using the `.reliant.json` configuration file.

### Configuration Location

**Project-level** (`.reliant.json` in project root):
```json
{
  "contextPaths": [
    "docs/ARCHITECTURE.md",
    "docs/CONVENTIONS.md",
    "docs/API_GUIDELINES.md",
    ".reliant/memory.md"
  ]
}
```

**User-level** (`.reliant.json` in application data directory for personal defaults):
```json
{
  "contextPaths": [
    "RELIANT_INSTRUCTIONS.md",
    "MY_PREFERENCES.md"
  ]
}
```

### Path Resolution

All paths are relative to the project root directory. Reliant will:

1. Check each path in the `contextPaths` array
2. If the file exists, include its contents in the AI context
3. Skip files that don't exist (no error)
4. Merge user-level and project-level context paths

## Context File Best Practices

### 1. Keep Files Focused

**Good**: Separate files for different concerns
```
.reliant/architecture.md    # System architecture
.reliant/conventions.md      # Coding standards
.reliant/testing.md         # Testing guidelines
```

**Avoid**: One massive file with everything mixed together

### 2. Use Clear Structure

Organize with headers and sections:

```markdown
# API Development Guidelines

## Endpoint Structure
[Description]

## Authentication
[Description]

## Error Handling
[Description]

## Example
[Code example]
```

### 3. Include Examples

The AI learns better from concrete examples:

```markdown
## Error Handling Pattern

Always use our custom error wrapper:

```go
func GetUser(id string) (*User, error) {
    user, err := db.FindUser(id)
    if err != nil {
        return nil, errors.Wrap(err, "failed to fetch user")
    }
    return user, nil
}
```
```

### 4. Keep It Updated

- Review and update context files when patterns change
- Remove outdated information promptly
- Add new patterns as they emerge in the codebase

### 5. Version Control Strategy

**Commit to repo** (`.reliant.md`):
- Team-wide conventions
- Architecture decisions
- Project patterns
- Public guidelines

**Keep local only** (`.reliant.local.md`):
- Personal preferences
- Machine-specific setup
- Temporary notes
- Private information

## Example Context File Structure

Here's a complete example for a typical project:

**`.reliant.md`**:
```markdown
# Project: TaskFlow - Task Management System

## Technology Stack
- **Frontend**: React 18 with TypeScript, Tailwind CSS
- **Backend**: Go 1.21 with Chi router
- **Database**: PostgreSQL 15
- **Caching**: Redis
- **Deployment**: Docker on AWS ECS

## Project Structure
```
/
├── web/          # React frontend
├── api/          # Go backend
├── shared/       # Shared types and utilities
└── infrastructure/  # IaC and deployment configs
```

## Development Workflow

### Starting Development
```bash
make dev          # Starts all services with hot reload
make test         # Runs all tests
make lint         # Runs linters
```

### Before Committing
1. Run `make test` - ensure all tests pass
2. Run `make lint` - fix any linting issues
3. Update relevant tests if needed
4. Use conventional commits format

## Coding Conventions

### Go Backend
- Use `internal/` for private packages
- Follow standard Go project layout
- All public functions must have godoc comments
- Error wrapping with context is required
- Use `context.Context` for all DB operations

### React Frontend
- Functional components only (no class components)
- Custom hooks for shared logic
- Use TypeScript strict mode
- Organize by feature, not by type
- Test all hooks with React Testing Library

### Database
- All migrations in `migrations/` directory
- Never modify existing migrations
- Use transactions for multi-step operations
- Index foreign keys and commonly queried fields

## Common Patterns

### API Response Format
All API responses follow this structure:
```go
type Response struct {
    Data    interface{} `json:"data,omitempty"`
    Error   string      `json:"error,omitempty"`
    Message string      `json:"message,omitempty"`
}
```

### React Data Fetching
Use our custom `useAPI` hook:
```typescript
const { data, loading, error } = useAPI<User>('/api/users/123');
```

## Testing Requirements
- **Unit Tests**: All business logic functions
- **Integration Tests**: All API endpoints
- **E2E Tests**: Critical user journeys
- **Minimum Coverage**: 80% overall, 90% for core business logic

## Known Issues & Workarounds
- **Issue**: Redis connection pool exhaustion under heavy load
  **Workaround**: Using connection pool size of 100, monitoring in production
  
- **Issue**: Slow queries on tasks table for users with 10k+ tasks
  **Workaround**: Added pagination with cursor-based approach

## Architecture Decisions
See `docs/ADR/` for detailed Architecture Decision Records

### ADR-001: Event-Driven Task Updates
We use Redis pub/sub for real-time task updates instead of WebSockets to reduce server load.

### ADR-002: Optimistic UI Updates
Frontend optimistically updates UI before backend confirmation for better perceived performance.
```

## Integration with Other Features

### Works With MCP Servers

Memories and context files complement MCP servers:
- **Memories/Context Files**: Static project knowledge and conventions
- **MCP Servers**: Dynamic tools and data access

Example: Your `reliant.md` describes your architecture, while MCP servers provide access to your database or APIs.

### Works With Custom Agents

Your custom agents automatically inherit memories and project context:

```yaml
# .reliant/agents/code-reviewer.yaml
name: code-reviewer
description: Reviews code for quality and standards
system_prompt: |
  You are a code reviewer. Follow the project conventions
  and coding standards defined in the context.
```

The agent will have access to all context files automatically.

### Works With Prompts

Saved prompts can reference project-specific patterns that the AI understands from context files:

```
Review this code following our API response format pattern
```

The AI knows the pattern from your `.reliant.md` file.

## Context File Size Limits

While there's no hard limit, keep context files reasonable:

- **Recommended**: Under 50KB per file
- **Maximum practical**: ~200KB per file
- **Total recommended**: Under 200KB combined

Larger files may impact:
- Initial chat load times
- Token usage and costs
- AI response quality (too much context can be noise)

## Troubleshooting

### Context Files Not Loading

**Check file paths**:
```bash
# Verify files exist
ls -la .reliant.md
ls -la docs/ARCHITECTURE.md

# Check configuration
cat .reliant.json
```

**Verify configuration syntax**:
```bash
# JSON must be valid
jq . .reliant.json
```

### Too Much Context

If you're providing too much context:

1. **Split large files** into focused documents
2. **Use specific context** only when needed
3. **Remove outdated** information
4. **Link to docs** instead of including full text

Example:
```markdown
<!-- Instead of full API docs -->
For complete API documentation, see `docs/api/README.md`

<!-- Include only the essentials -->
## Quick API Reference
- Authentication: Bearer token in Authorization header
- Rate limit: 100 requests/minute
- Error codes: 4xx client errors, 5xx server errors
```

### Context Not Updating

**For Memories Feature**: Memory files (`~/.reliant/reliant.md` and `reliant.md`) are loaded dynamically on every LLM interaction. Changes take effect immediately on the next message.

**For Context Files Configuration**: Context files configured via `.reliant.json` are loaded when:
- Starting a new chat session
- Opening a new project
- Reliant restarts

To refresh:
1. Start a new chat (`Cmd+N`)
2. Or restart Reliant

### Verifying Memories are Loaded

To verify your memory files are being loaded, start a new chat and ask:

```
What conventions should I follow for this project?
```

The AI should reference the guidelines from your `reliant.md` and `~/.reliant/reliant.md` files.

### Memory Files Not Found

If memories aren't being loaded:

**Check global memory**:
```bash
# Verify file exists
ls -la ~/.reliant/reliant.md

# View contents
cat ~/.reliant/reliant.md
```

**Check project memory**:
```bash
# In your project directory
ls -la reliant.md

# View contents
cat reliant.md
```

**File must be named exactly**: `reliant.md` (lowercase, no variations)

## Related Topics

- [Custom Agents]({{< relref "../agents/custom-agents" >}}) - Create specialized agents that use your context
- [MCP Servers]({{< relref "mcp-servers" >}}) - Extend capabilities with external tools
- [API Keys]({{< relref "api-keys" >}}) - Configure AI providers
