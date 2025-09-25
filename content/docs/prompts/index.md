---
title: "Prompts"
description: "Create and manage reusable prompt templates"
weight: 60
icon: "list_alt"
draft: true
---

Prompts in Reliant allow you to create reusable preambles and instructions that can be quickly added to your messages. These help maintain consistency and save time when performing common tasks.

## What are Prompts?

Prompts are:
- **Reusable text snippets** that get prepended to your messages
- **Saved templates** for common instructions or context
- **Scoped** to either global use or specific worktrees
- **Selectable** via dropdown in the chat input

## Using Prompts in Chat

### Selecting Prompts

In the chat input area:
1. Click the **Prompts** dropdown button (shows count of selected prompts)
2. Check/uncheck prompts you want to include
3. Selected prompt contents are automatically added to your message
4. Multiple prompts can be selected simultaneously

### Default Prompts

Prompts marked as "default" are automatically selected when you:
- Start a new chat
- Open the prompts selector
- Switch worktrees

### Prompt Scope

Prompts are loaded based on context:
- **Global prompts**: Available across all projects
- **Worktree prompts**: Specific to the current worktree
- If a worktree is selected, both global and worktree prompts are available

## Managing Prompts

### Creating New Prompts

1. Navigate to **Settings** → **Prompts**
2. Select scope (Global or Worktree)
3. Click **"+ New"** button
4. Fill in prompt details:
   - **Title**: Name for the prompt (required)
   - **Category**: Optional grouping category
   - **Content**: The actual prompt text
   - **Default**: Check to auto-select this prompt
5. Click **"Save Changes"**

### Prompt Fields

Each prompt contains:
- **Title**: Display name shown in the selector
- **Category**: Optional organization category
- **Content**: The actual text that gets added to messages
- **Default**: Whether to auto-select this prompt

### Editing Prompts

In the Prompts settings:
1. Modify any field directly
2. Changes are tracked (shows "unsaved changes")
3. Click **"Save Changes"** to persist
4. Click **"Discard"** to revert changes

### Deleting Prompts

- Click the **trash icon** next to any prompt
- Deletion happens immediately (before save)
- Save changes to persist the deletion

## Example Prompts

### Code Review
```
Please review this code for:
- Best practices and code quality
- Potential bugs or edge cases
- Performance optimizations
- Security vulnerabilities
Provide specific, actionable feedback.
```

### Debugging Assistant
```
I need help debugging an issue. Please:
1. Analyze the error or problem
2. Identify potential causes
3. Suggest debugging strategies
4. Provide a fix if possible
Be systematic and explain your reasoning.
```

### Documentation Writer
```
Generate comprehensive documentation for this code:
- Clear descriptions of functionality
- Parameter and return value explanations
- Usage examples
- Any important notes or warnings
Use clear, concise language appropriate for developers.
```

### Test Generator
```
Create comprehensive tests for this code:
- Unit tests covering main functionality
- Edge cases and error conditions
- Mock any external dependencies
- Include clear test descriptions
Use appropriate testing patterns for the language/framework.
```

## Organizing Prompts

### Using Categories

Categories help organize prompts:
- Add a category name when creating/editing
- Prompts are grouped by category in the selector
- Leave blank for uncategorized prompts

### Search and Filter

In the Prompts settings:
- Use the search box to filter by title, content, or category
- Results update as you type
- Helps find specific prompts quickly

### Scope Selection

Choose where prompts are available:
- **Global**: Available in all projects and worktrees
- **Worktree**: Only available in the selected worktree
- Switch scope using the dropdown in settings

## Best Practices

### Writing Effective Prompts

1. **Be Clear and Specific**: Provide detailed instructions
2. **Set Context**: Explain what you're working on
3. **Define Output Format**: Specify how you want results
4. **Include Constraints**: Mention any limitations or requirements

### Prompt Organization

1. **Use Descriptive Titles**: Make prompts easy to identify
2. **Add Categories**: Group related prompts together
3. **Mark Defaults Wisely**: Only auto-select frequently needed prompts
4. **Keep Content Focused**: One purpose per prompt

### Maintenance

1. **Review Regularly**: Update prompts as your needs change
2. **Remove Unused**: Delete prompts you no longer need
3. **Test New Prompts**: Verify they produce desired results
4. **Iterate and Improve**: Refine based on actual usage

## Tips

### Productivity

- **Default Selection**: Mark your most-used prompts as default
- **Multiple Selection**: Combine prompts for complex tasks
- **Worktree-Specific**: Create project-specific prompts
- **Categories**: Use categories to quickly find prompts

### Common Use Cases

- **Code Standards**: Prompts for consistent code style
- **Review Templates**: Structured code review instructions
- **Debug Helpers**: Systematic debugging approaches
- **Documentation**: Consistent documentation formats
- **Testing**: Standard test generation instructions

## Troubleshooting

### Prompts Not Appearing

- Verify you're in the correct scope (Global vs Worktree)
- Check if prompts were saved (click "Save Changes")
- Refresh the chat interface if needed

### Changes Not Saving

- Ensure you click "Save Changes" after editing
- Check for any validation errors (empty titles)
- Try discarding and re-entering changes

### Worktree Prompts Missing

- Confirm a worktree is selected
- Verify prompts were created in worktree scope
- Check that the worktree ID matches