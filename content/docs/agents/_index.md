---
title: "Agents"
description: "Creating and using AI agents for specialized tasks"
weight: 45
icon: "smart_toy"
---

Agents in Reliant are specialized AI assistants configured for specific tasks. They combine custom instructions, model settings, and behaviors to provide expert assistance in particular domains.

{{< figure src="/images/screenshots/agent-selector.png" alt="Placeholder: Agent selection dropdown in chat interface showing agent icons, names, and brief descriptions - General, Code Reviewer, Debug With Me, Environment Setup, etc." caption="Select an agent from the dropdown to specialize your chat">}}

## What are Agents?

Agents are customized AI configurations that:
- Have specialized system prompts and instructions
- Use specific model settings (temperature, max tokens)
- Maintain consistent behavior patterns
- Focus on particular domains or tasks

## Built-in Agents

Reliant includes several pre-configured agents optimized for specific tasks:

### General
- **Description**: General-purpose agent for comprehensive software engineering tasks
- **Best For**: Coding, debugging, refactoring, and general development tasks
- **Approach**: Balanced between exploration and implementation

### Code Reviewer
- **Description**: Code review specialist providing comprehensive quality feedback
- **Best For**: Code quality assessment, security review, performance analysis
- **Focus Areas**: Best practices, SOLID principles, security vulnerabilities, performance bottlenecks

### Debug With Me
- **Description**: Collaborative debugging agent that works with users through an iterative process
- **Best For**: Complex debugging sessions, systematic troubleshooting
- **Approach**: Maximizes automation first, then provides clear handoffs for user assistance

### Environment Setup
- **Description**: Environment setup specialist for multiple environments (test, dev, prod)
- **Best For**: Initial project setup, CI/CD configuration, deployment pipelines
- **Capabilities**: Docker, Kubernetes, cloud platforms, dependency management

### Repro
- **Description**: Reproduces user-reported issues by recreating exact conditions
- **Best For**: Bug reproduction, issue verification, regression testing
- **Method**: Focuses solely on reproduction without attempting fixes

### UX
- **Description**: User experience specialist for UI/UX design and accessibility
- **Best For**: Interface improvements, accessibility compliance, user flow optimization
- **Expertise**: Design patterns, WCAG guidelines, responsive design, user testing

### Planner
- **Description**: Strategic planning specialist creating actionable plans with detailed breakdowns
- **Best For**: Feature planning, project roadmaps, task decomposition
- **Output**: Structured plans with priorities, dependencies, and time estimates

## Orchestrator Mode

Orchestrator mode allows Reliant to automatically select the best agent for each task, enabling sophisticated multi-agent workflows without manual agent switching.

### How It Works

When orchestrator mode is enabled:
- Reliant analyzes your request to understand the task type
- Selects the most appropriate agent from your available agents
- Executes the task with that specialized agent
- Can chain multiple agents for complex multi-phase work

### Benefits

**Automatic Agent Selection**: No need to manually choose agents - Reliant picks the right expert for each task.

**Seamless Multi-Agent Workflows**: Complex tasks requiring different expertise (research → planning → implementation → review) flow naturally between specialized agents.

**Scale to Thousands of Agents**: Create highly specialized agents for specific domains without cluttering your UI. The orchestrator intelligently selects from all available agents based on their descriptions and capabilities.

**Context Preservation**: Agent transitions maintain conversation context, so subsequent agents understand what previous agents discovered.

### Enabling Orchestrator Mode

Orchestrator mode is configured through the agent selection:

1. In the chat interface, select the **Orchestrator** agent from the agent dropdown
2. The orchestrator will analyze your requests and delegate to appropriate specialized agents
3. You'll see which agent is handling each part of your request

### When to Use Orchestrator Mode

**Use orchestrator when**:
- Working on complex projects requiring multiple types of expertise
- You're unsure which specialized agent would be best
- Tasks naturally span multiple phases (research, planning, implementation, testing)
- You want to leverage many specialized agents without manual switching

**Use specific agents when**:
- You know exactly what type of work needs to be done
- Focusing on a single type of task throughout the session
- You prefer direct control over which agent handles your requests

### Creating Orchestrator-Compatible Agents

For best results with orchestrator mode, ensure your custom agents:

**Have Clear, Specific Descriptions**: The orchestrator uses agent descriptions to match tasks. Be specific about what the agent does.

```yaml
# ❌ Vague
description: "Helps with code"

# ✅ Specific
description: "Specialist in designing and implementing robust API integrations with comprehensive error handling"
```

**Define Clear Domains**: Focus each agent on a specific domain or task type rather than making generalist agents. Narrow specialization helps the orchestrator make better selection decisions.

**Provide Structured Outputs**: When work completes, agents should summarize findings and relevant context clearly, making it easy for the orchestrator to determine next steps.

Learn more about creating custom agents in the [Creating Custom Agents]({{< relref "../agents/custom-agents" >}}) guide.

## Agents vs Taskforces

While individual agents provide focused expertise, taskforces coordinate multiple agents for complex workflows:

**Use Individual Agents When**:
- Working on a specific type of task that maps to one agent's expertise
- You prefer direct control over the approach
- The work is exploratory or open-ended
- You want to leverage one specific skill set

**Use Taskforces When**:
- Work benefits from multiple perspectives (research, implementation, review)
- You need systematic workflows with quality gates
- Tasks naturally phase through stages
- You want proven multi-agent coordination patterns

Learn more about [Taskforces]({{< relref "taskforces" >}}) and how they orchestrate agents for complex workflows.

## Related Topics

- [Creating Custom Agents]({{< relref "../agents/custom-agents" >}}) - Build your own specialized agents
- [Taskforces]({{< relref "taskforces" >}}) - Multi-agent orchestrations for complex workflows
- [API Keys & Model Providers]({{< relref "/docs/settings/api-keys" >}}) - Configure AI models for agents
- [MCP Servers]({{< relref "../settings/mcp-servers" >}}) - Extend agent capabilities with external tools
