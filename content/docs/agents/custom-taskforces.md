---
title: "Creating Custom Taskforces"
description: "Build specialized multi-agent workflows for your team"
weight: 10
---

Custom taskforces allow you to codify your team's workflows as reusable multi-agent orchestrations. This guide covers everything from basic taskforce configuration to advanced orchestrator prompt design.

## Quick Start

The fastest way to create a custom taskforce is to start with an existing one:

1. Use a built-in taskforce as a reference for structure and best practices
2. Create a new YAML file in `.reliant/taskforces/` in your project directory  
3. Define the orchestrator prompt and agents for your workflow
4. Restart Reliant or reload taskforces

Your custom taskforce will appear in the taskforce dropdown when creating new chats.

## Taskforce Configuration Structure

Taskforces are defined in YAML files with this structure:

```yaml
name: "my-taskforce"
description: "Brief description shown in the UI"
type: "taskforce"

orchestrator:
  prompt: |
    # Your orchestrator instructions here
    # This prompt guides multi-agent coordination
    
  model:
    model_id: "claude-4.5-sonnet"
    temperature: 0.3
    max_tokens: 20000
    thinking_mode: "medium"

agents:
  - research
  - general
  - code_reviewer
  - checklist

success_criteria:
  - "First success condition met"
  - "Second success condition met"
  - "All work verified and complete"
```

### Required Fields

**name** (string): Unique identifier for the taskforce. Used internally and shown in the UI. Use lowercase with hyphens (e.g., "bug-fix-taskforce").

**description** (string): Brief explanation shown in the taskforce selector. Should clearly communicate what the taskforce does and when to use it.

**type** (string): Must be `"taskforce"`. This distinguishes taskforce configs from agent configs.

**orchestrator.prompt** (string): Detailed instructions that guide the orchestrator in coordinating agents. This is the brain of your taskforce - invest time here.

**orchestrator.model.model_id** (string): AI model for orchestration. Recommended: `"claude-4.5-sonnet"` for its strong reasoning and planning capabilities.

**orchestrator.model.temperature** (float): Model temperature 0.0-1.0. Lower values (0.2-0.4) work well for structured workflows. Higher values (0.6-0.8) suit creative or exploratory work.

**agents** (array of strings): List of agent names available to this taskforce. Only include agents needed for the workflow.

### Optional Fields

**orchestrator.model.max_tokens** (integer): Maximum tokens for orchestrator responses. Default varies by model. Increase for complex reasoning or long plans.

**orchestrator.model.thinking_mode** (string): Extended thinking mode - `"low"`, `"medium"`, or `"high"`. Higher settings provide more reasoning time for complex decisions.

**success_criteria** (array of strings): Conditions that must be met for the taskforce to consider its mission complete. Highly recommended - guides the orchestrator toward quality outcomes.

## Available Agents

Your taskforce can use any combination of these built-in agents:

**research**: Deep codebase investigation, pattern analysis, and architectural understanding. Use for finding similar code, understanding existing patterns, and architectural decisions.

**planner**: Strategic planning and task breakdown. Creates comprehensive plans with dependencies, priorities, and time estimates.

**general**: General-purpose implementation. Handles coding, refactoring, and general development tasks.

**repro**: Bug reproduction specialist. Focuses exclusively on creating reliable reproduction steps without attempting fixes.

**debug_with_me**: Interactive debugging specialist. Expert at using debuggers, analyzing stack traces, and instrumenting code.

**code_reviewer**: Code quality and standards review. Checks for best practices, security issues, performance problems, and maintainability.

**checklist**: Verification and validation. Runs comprehensive checks to ensure work is complete and requirements are met.

**finalizer**: Cleanup and finalization. Polishes documentation, removes debug code, and prepares work for delivery.

**documentation**: Documentation generation for APIs and code.

**documentation_writer**: Technical writing specialist for user-facing documentation.

**ux**: User experience analysis and interface improvements.

**env_setup**: Environment configuration and infrastructure setup.

**project_scanner**: Project structure analysis and dependency mapping.

Custom agents you create can also be used in taskforces. See [Creating Custom Agents]({{< relref "custom-agents" >}}) for details.

## Writing Effective Orchestrator Prompts

The orchestrator prompt is the most important part of your taskforce. A well-written prompt ensures agents are used effectively and work flows smoothly.

### Prompt Structure

Use this structure for clear, comprehensive orchestrator prompts:

```yaml
orchestrator:
  prompt: |
    # 1. Core Mission
    Start with a clear mission statement
    
    # 2. Your Specialized Team
    Describe each agent in context of this workflow
    
    # 3. Workflow Framework
    Detail the phases and how to use agents
    
    # 4. Best Practices
    Domain-specific guidance and principles
    
    # 5. Success Criteria
    Reference and explain success conditions
```

### 1. Core Mission

Begin with a focused mission statement that defines what this taskforce accomplishes:

```yaml
prompt: |
  # Core Mission
  
  You are orchestrating a SECURITY AUDIT TASKFORCE focused on identifying
  and documenting security vulnerabilities in the codebase with comprehensive
  remediation guidance.
  
  Your mission is to ensure all common vulnerability categories are checked,
  findings are documented with severity ratings, and remediation recommendations
  are actionable and specific.
```

This immediately orients the orchestrator to its purpose and quality standards.

### 2. Your Specialized Team

Explain what each agent does in the context of this specific taskforce:

```yaml
  ## Your Specialized Team
  
  - **research**: Scans codebase for security patterns, anti-patterns, and common vulnerabilities
    Use to map attack surface and find vulnerability patterns across files.
    
  - **code_reviewer**: Deep security review of code and architecture.
    Use for analyzing authentication, authorization, input validation,
    and cryptography implementations.
    
  - **general**: Creates proof-of-concept exploits to verify vulnerabilities.
    Use to confirm suspected issues are actually exploitable.
```

Context-specific descriptions help the orchestrator choose the right agent for each task.

### 3. Workflow Framework

Provide detailed guidance on how to coordinate agents through phases:

```yaml
  ## Security Audit Framework
  
  ### Phase 1: Reconnaissance
  
  Use research to:
  - Scan for common vulnerability patterns (SQL injection, XSS, CSRF)
  - Identify authentication and authorization code
  - Find credential handling and secrets management
  - Map API endpoints and attack surface
  
  ### Phase 2: Deep Review
  
  Use code_reviewer to:
  - Review input validation and sanitization
  - Check authentication implementations for weaknesses
  - Verify authorization checks are comprehensive
  - Review cryptography usage and key management
  
  ### Phase 3: Verification
  
  Use general to:
  - Create proof-of-concept exploits for suspected issues
  - Verify vulnerabilities are actually exploitable
  - Test remediation approaches
```

Explicit phases with specific agent instructions create predictable, high-quality workflows.

### 4. Best Practices

Include domain-specific best practices and guidance:

```yaml
  ## Security Review Principles
  
  **Thoroughness Over Speed**:
  - Check all OWASP Top 10 categories systematically
  - Don't skip categories even if initial scan seems clean
  - Document absence of issues as well as findings
  
  **Verification is Mandatory**:
  - Every suspected vulnerability needs proof-of-concept
  - Don't report unverified suspicions as confirmed issues
  - Severity ratings must reflect actual exploitability
  
  **Actionable Remediation**:
  - Provide specific code fixes, not just general advice
  - Include examples of secure implementations
  - Explain why the fix prevents the vulnerability
```

This guides the orchestrator's decision-making and maintains quality standards.

### 5. Success Criteria Reference

Explain what success looks like and how to verify it:

```yaml
  ## Success Criteria
  
  This audit is complete when:
  - All OWASP Top 10 vulnerability categories have been checked
  - All findings documented with severity ratings (Critical/High/Medium/Low)
  - Proof-of-concept exploits created for verified vulnerabilities
  - Remediation recommendations provided for each finding
  - Security best practices documented to prevent future issues
  
  Before declaring the audit complete, use checklist agent to verify
  all criteria are met and documentation is comprehensive.
```

Clear success criteria prevent premature completion and ensure thorough work.

### Coordination Patterns

Include examples of how to coordinate agents effectively:

```yaml
  ## Agent Coordination Patterns
  
  ### Sequential Investigation Pattern
  ```
  1. research → Scan codebase for vulnerability patterns
  2. code_reviewer → Deep review of identified areas
  3. general → Create PoCs for suspected vulnerabilities
  4. code_reviewer → Document findings with remediation
  ```
  
  ### Parallel Investigation Pattern (for large codebases)
  ```
  Parallel:
    - research → Scan frontend for XSS/CSRF
    - research → Scan backend for injection
    - research → Review database security
  Then:
    - code_reviewer → Deep review of high-risk findings
    - general → PoCs for verified vulnerabilities
  ```
```

Concrete patterns help the orchestrator understand when to parallelize versus sequence work.

## Taskforce Configuration Location

### Project-Specific Taskforces

Place custom taskforces in `.reliant/taskforces/` within your project directory:

```
your-project/
└── .reliant/
    └── taskforces/
        ├── security-audit-taskforce.yaml
        ├── performance-optimization-taskforce.yaml
        └── api-design-taskforce.yaml
```

These taskforces are automatically loaded when Reliant starts in that project.

**Note**: Custom taskforces are project-specific only. There is no global taskforces directory.

### Override Built-in Taskforces

Custom taskforces with the same name as built-in ones will override them. This allows you to customize built-in workflows for your team's specific needs.

When a custom taskforce overrides a built-in one, Reliant logs a warning so you're aware.

## Testing Custom Taskforces

After creating a custom taskforce:

**1. Verify it loads**:
- Start Reliant and check the taskforce appears in the dropdown
- Look for any error messages in the console/logs

**2. Test with a simple task**:
- Create a chat using your taskforce
- Provide a straightforward request
- Verify the orchestrator coordinates agents correctly
- Check that agent transitions make sense

**3. Verify success criteria**:
- Complete a full workflow
- Check that the orchestrator validates success criteria
- Ensure it doesn't declare completion prematurely

**4. Iterate based on results**:
- Review the orchestrator's decisions
- Refine the prompt if agents aren't being used optimally
- Adjust success criteria if they're too strict or too lenient

## Best Practices

**Start with a Built-in Taskforce**: Copy and modify an existing taskforce rather than starting from scratch. The built-in ones demonstrate proven patterns.

**Keep Prompts Focused**: Focus on the specific workflow. Don't try to make one taskforce handle everything.

**Be Explicit**: Provide specific, actionable guidance. Vague prompts like "coordinate agents to do the work" won't be effective.

**Include Examples**: Show concrete coordination patterns (sequential, parallel, iterative) so the orchestrator understands different approaches.

**Define Clear Success Criteria**: Make criteria specific and measurable. "Tests pass" is better than "quality is good".

**Test Thoroughly**: Test with various types of requests to ensure the orchestrator handles different scenarios appropriately.

**Iterate Based on Results**: Watch how the orchestrator actually uses agents, then refine the prompt to improve coordination.

**Document Intent**: Include comments in the orchestrator prompt explaining why certain approaches are recommended.

## Common Pitfalls

❌ **Don't**: Include agents you don't need - more agents = more complexity

✅ **Do**: Choose the minimal set of agents needed for your workflow

---

❌ **Don't**: Write vague orchestrator prompts like "coordinate agents to do the work"

✅ **Do**: Provide specific, actionable guidance on when and how to use each agent

---

❌ **Don't**: Forget success criteria - they guide the orchestrator toward completion

✅ **Do**: Define clear, measurable success criteria

---

❌ **Don't**: Create one mega-taskforce that tries to handle every scenario

✅ **Do**: Create focused taskforces for specific workflows

---

❌ **Don't**: Assume the orchestrator knows domain best practices

✅ **Do**: Include domain-specific guidance and principles in the prompt

## Troubleshooting

### Taskforce Not Appearing in Dropdown

**Check YAML syntax**: Ensure your YAML is valid. Use a YAML validator if needed.

**Verify file location**: Confirm the file is in `.reliant/taskforces/` in your project directory.

**Check type field**: Ensure `type: "taskforce"` is set in the config.

**Review logs**: Look for validation errors in Reliant's console output or logs.

### Orchestrator Not Coordinating Agents Correctly

**Review orchestrator prompt**: Is it specific enough? Does it clearly explain when to use each agent?

**Check agents list**: Ensure all agents referenced in the prompt are listed in the `agents` field.

**Add more examples**: Include concrete coordination patterns showing sequential, parallel, and iterative workflows.

**Make workflow explicit**: Break down phases clearly with specific agent assignments for each phase.

### Success Criteria Not Being Checked

**Verify success_criteria field**: Ensure the field is populated in the YAML config.

**Reference in prompt**: Make sure the orchestrator prompt mentions checking success criteria.

**Make criteria specific**: Vague criteria like "everything works" are hard to verify. Use specific, measurable conditions.

**Include verification step**: Add an explicit final phase in your workflow for checking success criteria.

## Advanced: Conditional Workflows

For complex taskforces, guide the orchestrator to make decisions based on context:

```yaml
  ## Conditional Coordination
  
  **If bug cannot be reproduced**:
  1. Use research to investigate if it's environment-specific
  2. Request more information from reporter
  3. Check if bug exists in current codebase
  
  **If root cause is unclear after initial investigation**:
  1. Use debug_with_me for deeper instrumentation
  2. Add extensive logging
  3. Simplify reproduction to minimal case
  
  **If fix doesn't work on first attempt**:
  1. Re-examine root cause analysis
  2. Consider multiple contributing factors
  3. Verify fix is actually being executed
```

This helps the orchestrator handle different scenarios intelligently.

## Getting Help

**Study Examples**: Use the built-in taskforces as references for effective orchestrator prompt patterns.

**Check Logs**: Reliant logs detailed information about taskforce loading, agent coordination, and any errors.

**Start Simple**: Begin with simple workflows and gradually add complexity as you understand how the orchestrator interprets your prompts.

**Iterate**: Expect to refine your orchestrator prompt based on how it actually coordinates agents in practice.

## Related Topics

- [Taskforces Overview]({{< relref "taskforces" >}}) - Understanding taskforces and when to use them
- [Creating Custom Agents]({{< relref "custom-agents" >}}) - Build specialized agents for your taskforces
- [Agents Overview]({{< relref "../_index" >}}) - Understanding individual agents
