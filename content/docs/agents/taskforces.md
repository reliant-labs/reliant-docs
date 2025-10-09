---
title: "Taskforces"
description: "Multi-agent orchestrations for complex workflows"
weight: 48
icon: "groups"
---

Taskforces are pre-configured multi-agent orchestrations that coordinate specialized agents to accomplish specific types of missions. Each taskforce combines a curated set of agents with a custom orchestrator that manages the workflow from start to finish.

{{< figure src="/images/screenshots/taskforce-selector.png" alt="Placeholder: Taskforce selection dropdown showing taskforce names, descriptions, and success criteria - Bug Fix, Feature Implementation, Refactoring, etc." caption="Select a taskforce when creating a new chat to use coordinated multi-agent workflows">}}

## What are Taskforces?

A taskforce bundles together:

**Specialized Orchestrator**: Domain-specific coordination logic that knows how to sequence and parallelize agent work for maximum effectiveness.

**Curated Agent Team**: A hand-picked set of agents with complementary skills selected specifically for the workflow.

**Success Criteria**: Clear, measurable conditions that define when the mission is complete, ensuring quality and completeness.

**YAML Configuration**: Declarative configuration makes taskforces easy to customize, share, and version control.

The orchestrator handles all the complexity of multi-agent coordination - deciding which agents to use, when to run them in parallel versus sequentially, and ensuring success criteria are met before considering the work complete.

## When to Use Taskforces

Taskforces excel at well-defined workflows requiring multiple specialized agents:

**Use taskforces when**:
- You have a systematic process that benefits from multiple perspectives (research, implementation, review)
- Quality gates and verification are critical to success
- Work naturally phases through stages (investigation → planning → implementation → validation)
- You want proven workflows for common development patterns

**Use individual agents when**:
- Working on exploratory or open-ended tasks
- The work is specialized to a single domain
- You prefer direct control over the approach
- The task doesn't benefit from multiple agent perspectives

## Built-in Taskforces

Reliant includes three production-ready taskforces for common development workflows:

### Bug Fix Taskforce

**Purpose**: Systematic bug investigation, resolution, and verification with zero tolerance for unverified fixes.

**Agents**: research, repro, general, debug_with_me, checklist

**Workflow**:
1. **Investigation**: research analyzes codebase to understand architecture and locate relevant code
2. **Reproduction**: repro creates reliable reproduction steps and test cases
3. **Root Cause Analysis**: debug_with_me uses debugging tools to identify the exact cause
4. **Fix Implementation**: general implements the fix with regression tests
5. **Verification**: checklist ensures the fix works and nothing broke

**Success Criteria**:
- Bug reliably reproduced with documented steps
- Root cause identified and clearly explained
- Fix addresses root cause, not just symptoms
- Tests added to prevent regression
- All existing tests still pass
- No new bugs introduced

**Best For**: Fixing reported bugs, investigating production issues, ensuring fixes are properly verified before deployment.

### Feature Implementation Taskforce

**Purpose**: End-to-end feature development from requirements analysis through delivery.

**Agents**: research, planner, general, code_reviewer, checklist, finalizer

**Workflow**:
1. **Research**: research investigates existing patterns and architecture
2. **Planning**: planner creates detailed implementation plan with task breakdown
3. **Implementation**: general builds the feature incrementally with tests
4. **Quality Review**: code_reviewer ensures code quality and best practices
5. **Verification**: checklist validates all requirements are met
6. **Finalization**: finalizer polishes documentation and prepares for deployment

**Success Criteria**:
- All acceptance criteria met and verified
- Feature works end-to-end with comprehensive testing
- Code review completed with feedback addressed
- All tests pass with adequate coverage
- Documentation complete (code, API, user docs)
- No regressions in existing functionality
- Ready for production deployment

**Best For**: Implementing new features, building complete functionality, projects requiring comprehensive quality assurance.

### Refactor Taskforce

**Purpose**: Safe, systematic code refactoring while maintaining behavior and test coverage.

**Agents**: research, planner, general, code_reviewer, checklist

**Workflow**:
1. **Analysis**: research identifies code smells and refactoring opportunities
2. **Planning**: planner creates incremental refactoring plan with safety checkpoints
3. **Test Coverage**: general adds tests to establish behavioral baseline
4. **Refactoring**: general executes refactoring in small, safe steps
5. **Review**: code_reviewer validates quality improvements
6. **Verification**: checklist ensures behavior unchanged and all tests pass

**Success Criteria**:
- All tests pass (no behavior changes)
- Code quality metrics improved
- Behavior unchanged (verified by tests)
- No performance degradation
- Code more maintainable and understandable

**Best For**: Improving code quality, restructuring code, reducing technical debt while maintaining confidence that nothing breaks.

## Using Taskforces

### Starting a Chat with a Taskforce

When creating a new chat, select a taskforce from the taskforce dropdown:

1. Click the **New Chat** button
2. Select a taskforce from the **Taskforce** dropdown
3. The chat will use that taskforce's multi-agent coordination
4. Provide your initial message describing the work

The orchestrator will analyze your request and coordinate the appropriate agents automatically.

### Taskforce Workflow Visibility

While a taskforce works:
- You'll see which agent is currently active
- Agent transitions are logged for transparency
- You can see progress toward success criteria
- Each agent's work is clearly separated in the conversation

### Switching Between Taskforces

Each chat is bound to a single taskforce (or individual agent) for its lifetime. To use a different taskforce, create a new chat.

This design ensures:
- Consistent coordination throughout the workflow
- Clear expectations about how work will be handled
- Orchestrators can maintain state across the entire mission

## Related Topics

- [Creating Custom Taskforces]({{< relref "custom-taskforces" >}}) - Build taskforces for your specific workflows
- [Agents Overview]({{< relref "_index" >}}) - Understanding the agents available to taskforces
- [Creating Custom Agents]({{< relref "custom-agents" >}}) - Build specialized agents for your taskforces
