---
title: "Creating Custom Agents"
description: "Build specialized AI agents tailored to your development workflow"
weight: 46
icon: "build_circle"
---

Create custom agents optimized for your specific tasks, coding patterns, and project requirements. Reliant's agent system allows you to define specialized assistants with precise instructions, model configurations, and tool access.

## What Are Custom Agents?

Custom agents are YAML-configured AI assistants that combine:
- **Specialized system prompts** defining their expertise and approach
- **Model configurations** optimizing performance for specific tasks
- **Tool assignments** controlling what actions they can perform
- **Behavioral settings** like temperature and token limits

Unlike generic AI assistants, custom agents provide consistent, expert-level assistance in their specialized domain through carefully crafted instructions and appropriate model settings.

## Agent Configuration Structure

Agents are defined in YAML files with the following structure:

```yaml
name: agent_name
description: "Brief description of what this agent does"
enabled: true
model:
  model_id: "claude-4.5-sonnet"
  temperature: 0.3
  max_tokens: 20000
  thinking_mode: "high"  # optional, for models that support it
prompt: |
  Your detailed agent instructions go here...
tools:
  - view
  - glob
  - grep
  - write
  - edit
```

### Configuration Fields

**name** (required)
- Unique identifier for your agent
- Use lowercase with underscores (e.g., `code_reviewer`, `api_specialist`)
- This name appears in the agent selector

**description** (required)
- Brief, user-facing description of the agent's purpose
- Appears in the UI to help users choose the right agent
- Keep it concise: one sentence describing what the agent does

**enabled** (optional, default: true)
- Set to `false` to disable an agent without deleting its configuration
- Useful for experimental agents or temporary disabling

**model** (required)
- **model_id**: Which AI model to use (see [Supported Models]({{< relref "../settings#supported-model-providers" >}}))
- **temperature**: Response creativity/randomness (0.0-1.0)
- **max_tokens**: Maximum response length
- **thinking_mode**: For models supporting extended thinking (optional)

**prompt** (required)
- The agent's system instructions and behavioral guidance
- This is the most important part - see [Prompt Design Philosophy](#prompt-design-philosophy)

**tools** (required)
- List of tools the agent can use
- See [Tool Assignment](#tool-assignment) for guidance

## Prompt Design Philosophy

Agent prompts should be **comprehensive and detailed** rather than brief bullet points. The quality of your agent's performance directly correlates with the depth and clarity of its instructions.

### Comprehensive Instruction Principle

Each section of your prompt should thoroughly explain not just *what* to do, but *how* to do it and *why* it matters. This approach ensures consistent, high-quality behavior and reduces ambiguity in complex scenarios.

**❌ Brief (Avoid)**
```yaml
prompt: |
  You are a code reviewer. Check for bugs and style issues.
  - Review logic
  - Check naming
  - Verify tests
```

**✅ Comprehensive (Preferred)**
```yaml
prompt: |
  You are a CODE REVIEW SPECIALIST who ensures code quality through 
  comprehensive reviews and constructive feedback.

  # Core Specialization
  
  Your expertise lies in evaluating code changes for quality, correctness, 
  security, and maintainability. You provide actionable feedback that 
  improves both the code and developer skills.

  ## Functional Review
  
  Focus on verifying logic correctness, edge case handling, input/output 
  validation, requirements satisfaction, and test coverage adequacy. Look 
  for logical errors, missing scenarios, and potential runtime issues that 
  could affect system reliability.

  When reviewing logic:
  - Trace execution paths through the code mentally
  - Identify edge cases and boundary conditions
  - Verify error handling covers all failure modes
  - Ensure assumptions are validated with checks
  - Look for race conditions in concurrent code
```

### Avoid Base Prompt Duplication

Reliant provides a base prompt to all agents containing common instructions like:
- Communication style and progress updates
- Parallel operations and tool usage patterns
- File management and cleanup guidelines
- Agent collaboration patterns
- Structured output formats

**Do not repeat these common instructions in your agent prompts.** Focus solely on the agent's unique specialization and domain expertise.

## Prompt Structure Template

Use this structure for well-organized agent prompts:

### 1. Agent Identity and Core Mission

Start with a clear statement of role and responsibility:

```yaml
prompt: |
  You are a [ROLE] SPECIALIST who [primary mission statement].

  # Core Specialization

  Your expertise lies in [specific domain]. You provide [key value proposition] 
  that [benefits to system/users].
```

### 2. Detailed Methodology Sections

Break down the agent's approach into comprehensive phases:

```yaml
  # [Process Name] Framework

  ## Phase 1: [Phase Name]
  
  [Detailed explanation of what this phase involves, including specific steps, 
  considerations, and decision criteria. Provide concrete guidance on how to 
  execute this phase effectively.]

  ## Phase 2: [Phase Name]
  
  [Comprehensive guidance on execution, including edge cases, best practices, 
  and what to prioritize. Explain the reasoning behind each approach.]
```

### 3. Specialized Techniques and Best Practices

Provide in-depth guidance on domain-specific approaches:

```yaml
  # Advanced [Domain] Techniques

  ## [Technique Category]
  
  [Detailed explanation of when and how to use specific techniques, including 
  examples and potential pitfalls to avoid. Help the agent understand not just 
  what to do, but when each approach is most appropriate.]
```

### 4. Quality Standards and Verification

Include systematic approaches for ensuring work quality:

```yaml
  # Quality Assurance

  ## [Category] Verification
  
  Before considering work complete:
  - [Specific, actionable checkpoint with detailed explanation of why it matters]
  - [Another checkpoint with context about what good looks like]
  - [Edge cases or special scenarios to verify]
```

## Model Selection

Choose models based on your agent's requirements:

### High-Complexity Tasks
**Recommended**: `claude-4.5-sonnet`, `claude-4-opus`, `gpt-5`

Best for:
- Complex reasoning and analysis
- Comprehensive planning and architecture
- Research and investigation
- Detailed code review and security analysis

```yaml
model:
  model_id: "claude-4.5-sonnet"
  temperature: 0.3
  max_tokens: 20000
```

### Balanced Tasks
**Recommended**: `claude-4-sonnet`, `gpt-4.1`

Best for:
- General development work
- Code implementation
- Documentation writing
- Test creation

```yaml
model:
  model_id: "claude-4-sonnet"
  temperature: 0.7
  max_tokens: 8192
```

### Focused, Consistent Tasks
**Recommended**: `claude-3-haiku`, `gpt-4.1-mini`

Best for:
- Code formatting and linting
- Simple refactoring
- Quick validation tasks
- Generating session titles

```yaml
model:
  model_id: "claude-3-haiku"
  temperature: 0.1
  max_tokens: 5000
```

### Temperature Settings

**0.1-0.2**: High consistency, minimal creativity
- Code review, validation, verification
- When you need predictable, focused responses

**0.3-0.5**: Balanced consistency and creativity
- Planning, research, analysis
- Most general-purpose tasks

**0.6-0.8**: Creative with some consistency
- Implementation, problem-solving
- Writing documentation or examples

**0.9-1.0**: Maximum creativity
- Brainstorming, architecture exploration
- Generating multiple alternative approaches

## Tool Assignment

Assign tools based on what your agent needs to accomplish. Never assign tools the agent doesn't need.

### MCP Tools

**MCP (Model Context Protocol) tools are automatically available to all agents** when you have [MCP servers configured]({{< relref "../settings/mcp-servers" >}}). These tools are lazy-loaded, meaning they're loaded on-demand as agents need them, without impacting startup performance.

You don't need to explicitly list MCP tools in your agent's tool configuration—they're automatically included with every agent. This means any agent can access:
- Database query tools
- Cloud service integrations
- Custom business logic tools
- Third-party API integrations

The agent will discover and use these tools automatically based on the task at hand.

### Read-Only Research Agents

For agents that analyze code without making changes:

```yaml
tools:
  - view      # Read file contents
  - glob      # Find files by pattern
  - grep      # Search file contents
  - bash      # Execute read-only commands (ls, git log, etc.)
  - fetch     # Retrieve external information
```

**Examples**: Research agent, code reviewer, security auditor

### Implementation Agents

For agents that write or modify code:

```yaml
tools:
  - view
  - glob
  - grep
  - bash
  - write     # Create or replace entire files
  - edit      # Make precise edits to existing files
  - patch     # Apply complex multi-file changes
```

**Examples**: General developer agent, implementation agent, refactoring agent

### Planning and Coordination Agents

For agents that create and manage development plans:

```yaml
tools:
  - view
  - glob
  - grep
  - bash
  - create_plan    # Create structured development plans
  - get_plan       # Retrieve existing plans
  - update_plan    # Modify plans as work progresses
  - add_task       # Add tasks to plans
  - update_task    # Update task status
  - list_tasks     # View all tasks
```

**Examples**: Planner agent, project coordinator, task manager

### Specialized Tool Combinations

**Debugging Agent**:
```yaml
tools:
  - view
  - grep
  - bash
  - diagnostics   # Get error information from LSP
  - edit          # Fix bugs
```

**Test Writing Agent**:
```yaml
tools:
  - view
  - grep
  - bash      # Run tests
  - write     # Create new test files
  - edit      # Add tests to existing files
```

**Documentation Agent**:
```yaml
tools:
  - view
  - glob
  - grep
  - write
  - edit
  - fetch     # Research external documentation
```

## Agent Location and Loading

Place your custom agent YAML files in your project directory:

```
your-project/
└── .reliant/
    └── agents/
        └── your_agent.yaml
```

Reliant automatically loads custom agents from `.reliant/agents/` in your project directory at startup. Create the `agents` directory if it doesn't exist.

**Note**: Custom agents are project-specific only. There is no global agents directory.

## Testing Your Custom Agent

After creating a custom agent:

1. **Restart Reliant** or reload configuration to load the new agent
2. **Select your agent** from the agent dropdown in the chat interface
3. **Test with a simple task** relevant to the agent's domain
4. **Verify the agent uses appropriate tools** and follows its instructions
5. **Refine the prompt** based on observed behavior

### Validation Checklist

Before deploying a custom agent:

- [ ] **Comprehensive Instructions**: Does the prompt provide detailed, actionable guidance?
- [ ] **No Base Duplication**: Are common instructions left to the base prompt?
- [ ] **Clear Specialization**: Is the agent's unique role and expertise clearly defined?
- [ ] **Methodology Detailed**: Are processes explained step-by-step with context?
- [ ] **Quality Standards**: Are success criteria and validation approaches included?
- [ ] **Appropriate Tools**: Does the tool set match the agent's responsibilities?
- [ ] **Model Config**: Are model, temperature, and token limits appropriate for the task?
- [ ] **Real-world Applicable**: Can the instructions be followed in practice?

## Complete Agent Example

Here's a complete example of a well-structured custom agent:

```yaml
name: api_integration
description: "Specialist in designing and implementing robust API integrations"
enabled: true
model:
  model_id: "claude-4.5-sonnet"
  temperature: 0.4
  max_tokens: 16000
prompt: |
  You are an API INTEGRATION SPECIALIST who designs and implements robust, 
  maintainable API integrations with comprehensive error handling and monitoring.

  # Core Mission

  Build reliable API integrations that gracefully handle failures, provide 
  excellent observability, and follow industry best practices for authentication, 
  rate limiting, and data validation.

  # Integration Development Process

  ## Phase 1: API Understanding and Design

  **API Research**: Before writing any code, thoroughly understand the target API:
  - Review API documentation using the fetch tool
  - Identify authentication requirements (OAuth, API keys, JWT)
  - Map all endpoints needed for the integration
  - Understand rate limits and quota restrictions
  - Document data schemas and validation requirements

  **Integration Architecture**: Design the integration structure:
  - Define clear abstraction boundaries (don't leak API details)
  - Plan authentication token management and refresh
  - Design request/response data transformation
  - Plan error handling and retry strategies
  - Consider caching opportunities

  ## Phase 2: Implementation

  **Authentication Layer**: Implement robust authentication:
  - Secure credential storage (never hardcode secrets)
  - Automatic token refresh before expiration
  - Handle authentication errors gracefully
  - Support multiple authentication methods if needed

  **Request Handling**: Build reliable request mechanisms:
  - Implement exponential backoff for retries
  - Add circuit breakers for failing endpoints
  - Include comprehensive request logging
  - Validate all inputs before making requests
  - Set appropriate timeouts

  **Error Handling**: Handle all failure modes:
  - Network errors (timeouts, connection failures)
  - API errors (rate limits, validation, server errors)
  - Data errors (malformed responses, schema changes)
  - Provide actionable error messages
  - Log errors with sufficient context for debugging

  ## Phase 3: Testing and Validation

  **Testing Strategy**:
  - Write unit tests with mocked API responses
  - Create integration tests against test API endpoints
  - Test error scenarios (rate limits, timeouts, invalid data)
  - Validate data transformation in both directions
  - Test authentication flows including token refresh

  # Quality Standards

  Before considering an integration complete, verify:
  - All error paths are tested and handled gracefully
  - Secrets are properly managed (never committed to code)
  - Rate limiting is respected with appropriate backoff
  - Responses are validated against expected schemas
  - Comprehensive logging exists for troubleshooting
  - Documentation explains how to use the integration

tools:
  - view
  - glob
  - grep
  - bash
  - write
  - edit
  - fetch
```

## Related Topics

- [Built-in Agents]({{< relref "_index" >}}) - Explore Reliant's pre-configured agents
- [Orchestrator Mode]({{< relref "_index#orchestrator-mode" >}}) - Learn how the orchestrator selects agents automatically
- [Supported Models]({{< relref "../settings#supported-model-providers" >}}) - View all available AI models
- [MCP Servers]({{< relref "../settings/mcp-servers" >}}) - Extend agent capabilities with external tools
