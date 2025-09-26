---
title: "Agents"
description: "Creating and using AI agents for specialized tasks"
weight: 45
icon: "smart_toy"
---

Agents in Reliant are specialized AI assistants configured for specific tasks. They combine custom instructions, model settings, and behaviors to provide expert assistance in particular domains.

{{< figure src="/images/screenshots/agents-list.png" alt="Placeholder: Agents panel showing list of available agents with icons, names, descriptions, and a Create Agent button at the top" caption="Browse and select specialized AI agents">}}

## What are Agents?

Agents are customized AI configurations that:
- Have specialized system prompts and instructions
- Use specific model settings (temperature, max tokens)
- Maintain consistent behavior patterns
- Focus on particular domains or tasks

## Built-in Agents

{{< figure src="/images/screenshots/agent-selector.png" alt="Placeholder: Agent selection dropdown in chat interface showing agent icons, names, and brief descriptions - General, Code Reviewer, Debug With Me, Environment Setup, etc." caption="Select an agent from the dropdown to specialize your chat">}}

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

## Creating Custom Agents

### Agent Builder

{{< figure src="/images/screenshots/agent-builder.png" alt="Placeholder: Agent creation form with fields for name, description, system prompt textarea, model dropdown, temperature slider, and max tokens input" caption="Build custom agents tailored to your needs">}}

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
