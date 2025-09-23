---
title: "Worktrees"
description: "Managing Git worktrees for parallel development workflows"
weight: 40
icon: "account_tree"
---

Worktrees in Reliant allow you to work on multiple branches of your project simultaneously without switching contexts. This feature leverages Git's worktree functionality, providing isolated working directories for each branch while sharing the same repository.

## What are Worktrees?

Worktrees create separate working directories for different branches, allowing you to:
- Work on multiple features simultaneously
- Keep build artifacts separate
- Switch between branches instantly
- Run tests on one branch while coding on another

## Creating Worktrees

### From the Worktree Panel

1. Click the **"Worktrees"** tab in your project
2. Click **"Add Worktree"** button
3. Choose creation method:
   - **From existing branch**: Select a branch from the dropdown
   - **Create new branch**: Enter a new branch name
4. Specify the worktree location (or use default)
5. Click **"Create"**

### Quick Create

Create worktrees quickly from the interface:
1. Click the **"+" button** in the Worktrees panel
2. Choose branch or create new
3. Follow the prompts

### From Branch List

Right-click any branch in the Git panel:
1. Select **"Create Worktree from Branch"**
2. Confirm the location
3. Worktree is created automatically

## Managing Worktrees

### Worktree List

The Worktree panel shows all active worktrees with:
- **Branch name** and current status
- **Location** on disk
- **Modified files** count
- **Last activity** timestamp

### Switching Between Worktrees

Click on any worktree to switch to it:
- Your file explorer updates to show the worktree's files
- Terminal switches to the worktree directory
- Git status reflects the worktree's branch

### Worktree Actions

Right-click menu options:
- **Open in Finder**: View worktree folder
- **Open Terminal**: Launch terminal in worktree
- **Pull Latest**: Update from remote
- **Push Changes**: Push commits to remote
- **Remove Worktree**: Delete the worktree

## Working with Worktrees

### File Operations

Each worktree maintains its own:
- Working directory files
- Build outputs and artifacts
- Node modules or dependencies
- Git index and status

### Parallel Development

Work on multiple features simultaneously:
1. Create a worktree for each feature branch
2. Open different worktrees in split views
3. Run builds/tests in parallel
4. Compare implementations side-by-side

### Syncing Changes

Keep worktrees synchronized:
- **Fetch All**: Update all worktrees from remote
- **Auto-sync**: Enable automatic fetching
- **Merge/Rebase**: Pull changes from main branch

## Advanced Features

### Worktree Templates

Create worktrees with predefined settings:
1. Go to Settings > Worktrees
2. Click **"Add Template"**
3. Configure:
   - Default location pattern
   - Branch naming convention
   - Post-creation scripts
   - Environment variables

### Linked Worktrees

Connect related worktrees:
- Share configuration files
- Synchronize certain directories
- Maintain common dependencies

### Worktree Scripts

Automate worktree workflows:
- **Post-create**: Run after worktree creation
- **Pre-switch**: Execute before switching
- **Post-remove**: Cleanup after removal

## Best Practices

### Organization

1. **Naming Convention**: Use consistent branch/worktree names
2. **Location Structure**: Organize worktrees in a dedicated folder
3. **Cleanup**: Remove unused worktrees regularly

### Performance

1. **Limit Active Worktrees**: Keep 3-5 active worktrees
2. **Shallow Clones**: Use for large repositories
3. **Exclude from Indexing**: Configure IDE to ignore other worktrees

### Workflow Tips

1. **Main + Feature**: Keep main branch worktree for reference
2. **Hot Fixes**: Dedicated worktree for urgent fixes
3. **Experiments**: Temporary worktrees for testing

## Configuration

### Worktree Settings

Access via Settings > Worktrees:
- **Default Location**: Where new worktrees are created
- **Auto-fetch**: Enable automatic remote updates
- **Cleanup Policy**: Remove worktrees after inactivity
- **Max Worktrees**: Limit number of active worktrees

### Git Configuration

Worktree-specific Git settings:
- **User Identity**: Different email/name per worktree
- **Hooks**: Worktree-specific Git hooks
- **Ignore Files**: Custom .gitignore per worktree

## Troubleshooting

### Common Issues

**Worktree Not Found**
- Verify the worktree path exists
- Check Git worktree list: `git worktree list`
- Re-add if necessary

**Cannot Switch Worktrees**
- Commit or stash uncommitted changes
- Ensure no processes are using worktree files
- Check for file permission issues

**Worktree Locked**
- Remove lock file: `.git/worktrees/<name>/locked`
- Force remove: Use "Remove (Force)" option

