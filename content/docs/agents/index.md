---
title: "Agents"
description: "Creating and using AI agents for specialized tasks"
weight: 45
icon: "smart_toy"
---

Agents in Reliant are specialized AI assistants configured for specific tasks. They combine custom instructions, model settings, and behaviors to provide expert assistance in particular domains.

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

## Using Agents

### Selecting an Agent

1. Navigate to the **Agents** tab in the left navigation
2. Browse available agents in the list
3. Click **"Use Agent"** to start a chat with that agent
4. The chat will open with the agent's configuration active

### Agent Chat Behavior

When using an agent:
- The agent's name appears in the chat
- Custom instructions guide the AI's responses
- Specialized for the agent's domain
- Maintains the agent's personality and approach

## Creating Custom Agents

### Agent Builder

Create your own agents:

1. Go to the **Agents** tab
2. Click **"Create Agent"** button
3. Fill in the agent configuration

### Configuration Options

**Basic Settings**
- **Name**: Unique identifier for your agent
- **Description**: What the agent does
- **Category**: Optional grouping

**Model Configuration**
- **Model**: Which AI model to use (GPT-5, GPT-4, etc.)
- **Temperature**: Response creativity (0-1)
- **Max Tokens**: Response length limit

**System Prompt**
- Core instructions that define the agent's behavior
- Personality and communication style
- Domain expertise and focus areas
- Response formatting preferences

### Example Agents

**Code Reviewer**
```
You are an expert code reviewer. Analyze code for:
- Best practices and design patterns
- Potential bugs and edge cases
- Performance optimizations
- Security vulnerabilities
Provide constructive feedback with specific suggestions.
```

**Test Generator**
```
You are a test automation specialist. Generate comprehensive tests:
- Unit tests with good coverage
- Edge cases and error conditions
- Clear test descriptions
- Use appropriate testing frameworks
Always include both positive and negative test cases.
```

**Documentation Writer**
```
You are a technical documentation expert. Create clear documentation:
- Explain complex concepts simply
- Include practical examples
- Maintain consistent formatting
- Focus on user needs
Write for developers who are new to the codebase.
```

## Managing Agents

### Editing Agents

1. Find the agent in your list
2. Click the **edit** icon
3. Modify the configuration
4. Save your changes

### Deleting Agents

1. Find the agent to remove
2. Click the **delete** icon
3. Confirm deletion

### Agent Organization

- Agents are listed with their descriptions
- Search to find specific agents
- Your custom agents appear alongside defaults

## Best Practices

### Agent Design

1. **Single Purpose**: Each agent should excel at one thing
2. **Clear Instructions**: Specific, unambiguous system prompts
3. **Consistent Tone**: Maintain personality throughout
4. **Domain Focus**: Deep expertise in the agent's area

### Effective System Prompts

**Do:**
- Be specific about the agent's role
- Define output format expectations
- Include examples of desired behavior
- Set clear boundaries

**Don't:**
- Make prompts too long or complex
- Contradict yourself
- Use vague instructions
- Forget error handling

### Testing Agents

1. Test with various inputs
2. Verify consistent behavior
3. Check edge cases
4. Refine based on results

## Tips

### When to Use Agents

- **Repetitive Tasks**: Same type of work frequently
- **Specialized Knowledge**: Domain-specific expertise needed
- **Consistent Format**: Standardized outputs required
- **Different Personalities**: Various communication styles

### Agent Examples by Use Case

**Development**
- Code reviewer
- Bug analyzer
- Performance optimizer
- Security auditor

**Documentation**
- API documenter
- README writer
- Comment generator
- Tutorial creator

**Testing**
- Test writer
- Test case generator
- Bug report formatter
- QA assistant

**Project Management**
- Task breakdown
- Time estimator
- Risk analyzer
- Sprint planner

## Troubleshooting

### Agent Not Working as Expected

**Check System Prompt**
- Review for clarity
- Remove contradictions
- Add missing instructions

**Adjust Model Settings**
- Try different temperature
- Increase max tokens
- Switch model if needed

**Test Incrementally**
- Start with simple prompts
- Add complexity gradually
- Identify what causes issues

### Common Issues

**Too Generic Responses**
- Make system prompt more specific
- Add examples to prompt
- Lower temperature for consistency

**Inconsistent Behavior**
- Simplify instructions
- Remove ambiguous language
- Test with varied inputs

**Wrong Output Format**
- Explicitly define format in prompt
- Provide format examples
- Specify what not to do

## Managing Agents

Agents are managed through the Agents tab:
- **Create**: Click "Create Agent" button
- **Edit**: Click the edit icon on any agent
- **Delete**: Click the delete icon
- **Use**: Click "Use Agent" to start a chat