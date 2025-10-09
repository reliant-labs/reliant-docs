---
title: "Context Files & Agent Memory"
description: "Configure files that are automatically included in AI context for better project understanding"
weight: 58
icon: "memory"
---

Reliant can automatically include specific files in every AI chat session, providing persistent context about your project's patterns, conventions, and architectural decisions. This feature is similar to Claude Code's `.claude.json` functionality.

## What are Context Files?

Context files are documentation, guidelines, or reference files that you want the AI to always have access to during conversations. They help the AI better understand your project's:

- **Coding conventions** and style guidelines
- **Architecture decisions** and patterns
- **Project-specific terminology** and domain knowledge
- **Common workflows** and development practices
- **Testing strategies** and quality standards

## Default Context Files

Reliant automatically looks for these files in your project and includes them if found:

```
.github/copilot-instructions.md
.cursorrules
.cursor/rules/
CLAUDE.md
CLAUDE.local.md
reliant.md
reliant.local.md
Reliant.md
Reliant.local.md
```

These files are checked in the project root directory. If any exist, they're automatically included in the AI's context.

## Recommended File Usage

### `.reliant.md` or `Reliant.md`

Your main project context file for Reliant-specific instructions and conventions.

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

### `.reliant.local.md` or `Reliant.local.md`

Personal or machine-specific context that shouldn't be committed to version control.

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

Context files complement MCP servers:
- **Context Files**: Static project knowledge and conventions
- **MCP Servers**: Dynamic tools and data access

### Works With Custom Agents

Your custom agents automatically inherit the project context:

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

Context files are loaded when:
- Starting a new chat session
- Opening a new project
- Reliant restarts

To refresh:
1. Start a new chat (`Cmd+N`)
2. Or restart Reliant

## Related Topics

- [Custom Agents]({{< relref "../agents/custom-agents" >}}) - Create specialized agents that use your context
- [MCP Servers]({{< relref "mcp-servers" >}}) - Extend capabilities with external tools
- [API Keys]({{< relref "api-keys" >}}) - Configure AI providers
