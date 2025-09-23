---
title: "Prompts"
description: "Create and manage reusable prompt templates"
weight: 60
icon: "list_alt"
---

Prompts in Reliant allow you to create, save, and reuse message templates for common tasks. Build a library of effective prompts to streamline your workflow and maintain consistency.

## Using Prompts

### Quick Access

Access your saved prompts:
1. Click the **lightning bolt** icon in the chat input
2. Or type `/` to open the prompt menu
3. Browse or search for prompts
4. Click to insert into your message

### Prompt Variables

Use variables in prompts that get filled in:
- `{{selection}}` - Currently selected text
- `{{file}}` - Active file path
- `{{project}}` - Current project name
- `{{language}}` - Detected programming language
- `{{clipboard}}` - Clipboard contents

### Running Prompts

1. Select a prompt from the menu
2. Fill in any required variables
3. Preview the complete prompt
4. Press `Enter` to send

## Creating Prompts

### Prompt Builder

Create new prompts:
1. Go to **Settings** → **Prompts**
2. Click **"New Prompt"**
3. Configure prompt details

### Prompt Configuration

**Basic Settings**
- **Name**: Descriptive title
- **Description**: What the prompt does
- **Category**: Organization group
- **Icon**: Visual identifier

**Prompt Content**
- **Template**: The actual prompt text
- **Variables**: Define custom variables
- **Context**: Include file/project context
- **Examples**: Sample outputs

### Prompt Templates

Start with common templates:

**Code Review**
```
Review this {{language}} code for:
- Code quality and best practices
- Potential bugs or issues
- Performance optimizations
- Security concerns

Code:
{{selection}}
```

**Documentation**
```
Generate documentation for this {{language}} code:
- Function/method descriptions
- Parameter explanations
- Return value details
- Usage examples

Code:
{{selection}}
```

**Refactoring**
```
Refactor this code to improve:
- Readability
- Performance
- Maintainability
- Follow {{language}} best practices

Original code:
{{selection}}
```

**Bug Fix**
```
Debug this issue:
Error: {{error}}
File: {{file}}
Line: {{line}}

Context:
{{selection}}

Provide:
1. Root cause analysis
2. Fix suggestion
3. Prevention tips
```

## Prompt Library

### Categories

Organize prompts by purpose:
- **Development**: Code generation, refactoring
- **Documentation**: Comments, README, API docs
- **Testing**: Test cases, mocks, fixtures
- **Debugging**: Error analysis, troubleshooting
- **Review**: Code review, security audit

### Managing Prompts

**Organization**
- Create folders for prompt groups
- Add tags for easy filtering
- Star frequently used prompts
- Archive old prompts

**Sharing**
- Export prompts as JSON
- Import from files
- Share with team members
- Version control integration

## Advanced Features

### Dynamic Prompts

Create prompts that adapt:
- **Conditional Sections**: Include/exclude based on context
- **Multiple Languages**: Different templates per language
- **Project Types**: Customize for different frameworks
- **Skill Levels**: Adjust complexity

### Prompt Chains

Link prompts together:
1. Initial prompt generates output
2. Output becomes input for next prompt
3. Chain continues until complete
4. Final result returned

### Smart Prompts

Enhanced prompt features:
- **Auto-detection**: Detect context automatically
- **History**: Remember previous uses
- **Learning**: Improve based on feedback
- **Suggestions**: Recommend related prompts

## Examples

### Development Prompts

**Component Generator**
```
Create a {{framework}} component named {{name}} that:
- {{description}}
- Has these props: {{props}}
- Includes error handling
- Follows project conventions
```

**API Endpoint**
```
Create a {{method}} endpoint at {{path}} that:
- {{functionality}}
- Validates input: {{validation}}
- Returns: {{response}}
- Handles errors appropriately
```

### Documentation Prompts

**Function Documentation**
```
Document this function:
{{selection}}

Include:
- Purpose and description
- @param descriptions with types
- @returns description
- @throws for exceptions
- @example usage
```

**README Section**
```
Write a README section for:
Project: {{project}}
Section: {{section}}

Include:
- Overview
- Prerequisites
- Installation steps
- Usage examples
- Configuration options
```

### Testing Prompts

**Unit Test**
```
Write unit tests for:
{{selection}}

Cover:
- Happy path scenarios
- Edge cases
- Error conditions
- Mock dependencies
Use {{testFramework}} framework
```

**Test Data**
```
Generate test data for:
Schema: {{schema}}
Count: {{count}}

Requirements:
- Realistic values
- Edge cases included
- Various scenarios
- Consistent format
```

## Best Practices

### Prompt Design

1. **Be Specific**: Clear instructions get better results
2. **Provide Context**: Include relevant information
3. **Show Examples**: Demonstrate desired output
4. **Set Constraints**: Define limits and requirements

### Effective Variables

1. **Meaningful Names**: Use descriptive variable names
2. **Default Values**: Provide sensible defaults
3. **Validation**: Ensure required variables are filled
4. **Help Text**: Explain what each variable is for

### Maintenance

1. **Regular Review**: Update prompts as needed
2. **User Feedback**: Incorporate improvements
3. **Version Control**: Track prompt changes
4. **Testing**: Validate prompts work correctly

## Accessing Prompts

Prompts can be accessed through:
- The **lightning bolt** icon in the chat input
- Type `/` to open the prompt menu
- Settings → Prompts for management

## Tips

### Productivity Tips

1. **Frequently Used**: Pin your most-used prompts
2. **Quick Access**: Assign shortcuts to prompts
3. **Templates**: Create base templates to modify
4. **Categories**: Organize by project or task type

### Quality Tips

1. **Iterate**: Refine prompts based on results
2. **Test**: Try prompts with various inputs
3. **Document**: Add clear descriptions
4. **Share**: Learn from team members' prompts