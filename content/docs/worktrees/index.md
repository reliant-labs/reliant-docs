---
title: "Worktrees"
description: "Managing Git worktrees for parallel development workflows"
weight: 50
icon: "account_tree"
---

Worktrees in Reliant allow you to work on multiple branches of your project simultaneously without switching contexts. This feature leverages Git's worktree functionality, providing isolated working directories for each branch while sharing the same repository.

{{< figure src="images/screenshots/worktree-page.png" alt="Placeholder: Worktrees panel showing list of worktrees with branch names, status badges (Active, Completed, Abandoned), and Create Worktree button" caption="Manage multiple Git worktrees in parallel" width="50%">}}

## What are Worktrees?

Worktrees create separate working directories for different branches, allowing you to:
- Work on multiple features simultaneously
- Keep build artifacts separate
- Switch between branches instantly
- Run tests on one branch while coding on another
- Maintain different dependency installations per branch

## Creating Worktrees

### From the Worktree Panel

{{< figure src="images/screenshots/create-worktree.png" alt="Placeholder: Create worktree dialog with fields for branch name, worktree name, base branch dropdown, working directory path, and Create/Cancel buttons" caption="Create a new worktree with custom settings" width="50%">}}

1. Navigate to the **Worktrees** tab in the left navigation
2. Click **"Create Worktree"** button
3. Fill in the worktree details:
   - **Branch Name** (required): Name of the new branch
   - **Worktree Name** (optional): Display name for the worktree
   - **Base Branch**: Branch to create from (defaults to "main")
   - **Working Directory** (optional): Custom directory path
4. Click **"Create"**

The worktree will be created and automatically selected as the current context.

## Managing Worktrees

### Worktree List

The Worktree panel displays all your worktrees with:
- **Worktree name**: Display name
- **Branch name**: The Git branch associated with the worktree
- **Base branch**: The branch this worktree was created from
- **Status indicator**: Active, completed, abandoned, or merging

### Worktree Status Types

- **Active**: Currently being worked on
- **Completed**: Work finished, ready for merge
- **Abandoned**: No longer needed
- **Merging**: In the process of being merged

### Switching Between Worktrees

Click on any worktree in the list to select it:
- The selected worktree becomes highlighted
- Your chat context switches to this worktree
- Git operations will apply to this worktree

### Worktree Detail View

When you select a worktree, the detail view shows:
- **Status badge**: Current worktree status with color coding
- **Branch information**: Current branch → base branch
- **Last active**: Timestamp of last activity
- **Working directory path**: Full path with copy button
- **Git status**: Modified, untracked, and staged files
- **Sync status**: Commits ahead/behind remote

### Available Actions

**New Window**
- Opens the worktree in a new Reliant window
- Allows working on multiple worktrees simultaneously

**Delete Worktree**
- Removes the worktree from your project
- Requires confirmation before deletion

## Git Operations

### Git Status

The worktree detail view displays real-time Git status:
- **Branch name** with ahead/behind indicators
- **Modified files**: Changed but not staged
- **Staged files**: Ready to commit
- **Untracked files**: New files not in Git
- **Clean status**: When no changes present

### Git Actions

{{< figure src="images/screenshots/git-commit.png" alt="Placeholder: Git actions toolbar showing Commit, Push, and Create PR buttons with a commit dialog overlay displaying message field and file change list" caption="Perform Git operations directly from the worktree panel" width="50%">}}

Available Git operations for each worktree:

**Commit**
- Opens commit dialog
- Enter commit message
- Commits all staged changes

**Push**
- Pushes commits to remote repository
- Updates ahead/behind status

**Create PR**
- Opens pull request creation dialog
- Enter PR title and description
- Creates PR on your Git platform

## Working with Worktrees

### File Operations

Each worktree maintains its own:
- Working directory files
- Build outputs and artifacts
- Node modules or dependencies
- Git index and status
- Configuration files

### Context Switching

When you switch worktrees:
- The active worktree context changes
- Chat uses the selected worktree's context
- File operations apply to the selected worktree
- Git status reflects the worktree's state

### Parallel Development

Work on multiple features simultaneously:
1. Create a worktree for each feature branch
2. Switch between worktrees as needed
3. Use "New Window" or open a new chat tab with the selected worktree to work on multiple worktrees at once
4. Keep different dependency versions per worktree

## Best Practices

### Organization

1. **Naming Convention**: Use descriptive branch names (feature/*, bugfix/*, etc.)
2. **Status Management**: Update worktree status as work progresses
3. **Regular Cleanup**: Delete completed or abandoned worktrees
4. **Base Branch**: Always create from an up-to-date base branch

### Workflow Tips

1. **Main Reference**: Keep a clean main branch worktree for comparison
2. **Feature Isolation**: One worktree per feature or bug fix
3. **Quick Switches**: Use worktrees for context switching without stashing
4. **Dependency Management**: Different package versions per worktree

