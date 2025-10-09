---
title: "Feedback & Community"
description: "Get help, report issues, and connect with the Reliant community"
weight: 85
icon: "forum"
---

We're building Reliant with and for our community of developers. Your feedback shapes the product's direction and helps us create the best AI coding assistant possible.

## Getting Help

### Documentation

Start here for most questions:

**Search the Docs**: Use the search bar at the top of this page to find specific topics.

**Common Topics**:
- [Getting Started]({{< relref "getting-started" >}}) - First steps with Reliant
- [Custom Agents]({{< relref "agents/custom-agents" >}}) - Create specialized agents
- [API Keys]({{< relref "settings/api-keys" >}}) - Configure AI providers
- [Troubleshooting]({{< relref "troubleshooting" >}}) - Solve common issues

### Troubleshooting Guide

For common issues and solutions, see our comprehensive [Troubleshooting]({{< relref "troubleshooting" >}}) guide covering:
- Installation problems
- API key issues
- Performance optimization
- Connection errors
- Agent behavior issues

## Reporting Bugs

Found a bug? Help us fix it by reporting it properly.

### GitHub Issues

**Report bugs at**: [github.com/reliant-labs/reliant-docs/issues](https://github.com/reliant-labs/reliant-docs/issues)

### How to Report a Good Bug

Include these details for fastest resolution:

**1. Environment Information**
```
- Reliant version: (Help → About)
- Operating System: (macOS 14.2, Ubuntu 22.04, etc.)
- Installation method: (Homebrew, curl script, etc.)
```

**2. Steps to Reproduce**
```
1. Open Reliant
2. Navigate to Settings → Agents
3. Click "Create Agent"
4. Fill in form and click Save
5. Error appears: "..."
```

**3. Expected vs Actual Behavior**
```
Expected: Agent should be saved and appear in agent list
Actual: Error message appears and agent is not created
```

**4. Logs and Screenshots**

Attach relevant logs from your application data directory. On macOS:
```bash
# View recent logs
tail -n 100 ~/Library/Application\ Support/Reliant/logs/prod.log

# Copy to clipboard (macOS)
tail -n 100 ~/Library/Application\ Support/Reliant/logs/prod.log | pbcopy
```

For other platforms, check the equivalent application data directory.

Include screenshots if the issue is visual.

**5. Additional Context**

- Does this happen consistently or intermittently?
- Did this work in a previous version?
- Have you made recent configuration changes?

### Bug Report Template

```markdown
**Describe the bug**
A clear description of what the bug is.

**To Reproduce**
Steps to reproduce the behavior:
1. Go to '...'
2. Click on '...'
3. Scroll down to '...'
4. See error

**Expected behavior**
What you expected to happen.

**Screenshots**
If applicable, add screenshots.

**Environment:**
 - OS: [e.g. macOS 14.2]
 - Reliant Version: [e.g. 0.5.2]
 - Installation method: [e.g. Homebrew]

**Additional context**
Any other context about the problem.

**Logs**
```
Paste relevant log excerpts here
```
```

### Security Vulnerabilities

**Do NOT report security issues publicly on GitHub.**

Email security issues to: **security@reliant.ai**

See [Privacy & Security]({{< relref "privacy" >}}) for responsible disclosure guidelines.

## Feature Requests

Have an idea for Reliant? We'd love to hear it!

### Submit Feature Requests

**Request features at**: [github.com/reliant-labs/reliant-docs/issues](https://github.com/reliant-labs/reliant-docs/issues)

Use the \"Feature Request\" template.

### Writing a Good Feature Request

**1. Problem Statement**

Describe the problem you're trying to solve:
```
As a developer working on multiple projects simultaneously, I find it 
difficult to keep track of which worktrees are related to which features.
```

**2. Proposed Solution**

Describe your proposed solution:
```
Add the ability to tag worktrees with custom labels (e.g., "frontend", 
"backend", "experimental") and filter the worktree list by tags.
```

**3. Alternatives Considered**

What other solutions did you consider?
```
- Using branch naming conventions (current workaround)
- External documentation (not integrated)
- Status field only (too limited)
```

**4. Use Cases**

Provide specific examples of how you'd use this:
```
Use Case 1: Quickly find all experimental branches
Use Case 2: Filter worktrees by project area (frontend/backend)
Use Case 3: Group related worktrees for review
```

**5. Priority**

How important is this to you?
- Critical: Blocking my workflow
- High: Would significantly improve my workflow
- Medium: Nice to have
- Low: Enhancement for edge cases

### Feature Request Template

```markdown
**Is your feature request related to a problem?**
A clear description of what the problem is. Ex. I'm always frustrated when [...]

**Describe the solution you'd like**
A clear description of what you want to happen.

**Describe alternatives you've considered**
Other solutions or features you've considered.

**Use cases**
Specific scenarios where this feature would be useful.

**Additional context**
Add any other context, screenshots, or examples.

**Priority**
How important is this feature to your workflow?
- [ ] Critical
- [ ] High
- [ ] Medium
- [ ] Low
```

## Community (Coming Soon)

We're building a community around Reliant. Stay tuned for:

### Slack Community (Launching Soon)

Connect with other Reliant users to:
- Share custom agents and configurations
- Get help from experienced users
- Discuss best practices
- Share workflows and tips
- Vote on feature priorities

**Join the waitlist**: Email community@reliant.ai with subject \"Slack Access\"

### Discord Server (Planned)

Real-time chat with the community:
- #general - General discussion
- #help - Get assistance
- #agents - Share custom agents
- #workflows - Discuss development workflows
- #showcase - Show what you've built

### Community Forums (Planned)

Long-form discussions and knowledge base:
- Tutorials and guides
- Agent configurations
- Workflow best practices
- Q&A archive

## Contributing

Want to contribute to Reliant? Here's how:

### Documentation

**This documentation is open source!**

**Repository**: [github.com/reliant-labs/reliant-docs](https://github.com/reliant-labs/reliant-docs)

**How to contribute**:
1. Fork the repository
2. Make your changes
3. Submit a pull request

**What to contribute**:
- Fix typos or unclear explanations
- Add examples and code snippets
- Create tutorials
- Translate documentation
- Improve organization

See our [Documentation Contributing Guide](https://github.com/reliant-labs/reliant-docs/blob/main/CONTRIBUTING.md) for details.

### Agent Configurations

Share your custom agent configurations with the community:

1. Create your agent following the [Custom Agents Guide]({{< relref "agents/custom-agents" >}})
2. Test thoroughly
3. Submit to [Community Agent Repository](https://github.com/reliant-labs/community-agents) (coming soon)

### MCP Servers

Built an MCP server for Reliant? Share it:

1. Document your server's capabilities
2. Provide usage examples
3. Add to [Community MCP Servers](https://github.com/reliant-labs/community-mcp) (coming soon)

### Code Contributions

**Reliant core is proprietary**, but we welcome:
- Bug fixes (via GitHub issues)
- Feature implementations (coordinate first)
- Performance improvements
- Test coverage

Contact: contribute@reliant.ai

## Release Notes and Changelog

Stay updated on new features and fixes:

### Release Channels

**Stable** (Recommended)
- Thoroughly tested releases
- Released monthly
- Production-ready

**Beta**
- Early access to new features
- Released weekly
- May have minor bugs

**Nightly**
- Latest development builds
- Daily releases
- For testing and feedback only

### Where to Find Release Notes

**In-App**: Help → What's New

**GitHub**: [Releases page](https://github.com/reliant-labs/reliant/releases)

**Website**: [reliant.ai/releases](https://reliant.ai/releases)

**RSS Feed**: Subscribe to [reliant.ai/releases.rss](https://reliant.ai/releases.rss)

## Social Media

Follow us for updates, tips, and community highlights:

**Twitter/X**: [@ReliantAI](https://twitter.com/ReliantAI) (coming soon)

**LinkedIn**: [Reliant Labs](https://linkedin.com/company/reliant-labs) (coming soon)

**YouTube**: Tutorials and feature demos (coming soon)

**Blog**: [reliant.ai/blog](https://reliant.ai/blog) (coming soon)

## Feedback Directly to the Team

### Email

**General feedback**: feedback@reliant.ai

**Feature requests**: features@reliant.ai

**Documentation**: docs@reliant.ai

**Enterprise inquiries**: enterprise@reliant.ai

**Security issues**: security@reliant.ai

### Response Times

**Security issues**: Within 24 hours

**Bug reports**: Within 3 business days

**Feature requests**: Reviewed monthly

**General feedback**: Within 1 week

## Community Guidelines

To keep our community welcoming and productive:

**Do**:
- ✅ Be respectful and constructive
- ✅ Help others when you can
- ✅ Share knowledge and learnings
- ✅ Report inappropriate behavior
- ✅ Stay on topic

**Don't**:
- ❌ Personal attacks or harassment
- ❌ Spam or self-promotion
- ❌ Share others' private information
- ❌ Post malicious code or content
- ❌ Engage in off-topic debates

Violations may result in warnings, temporary suspension, or permanent ban.

## Recognition

We appreciate our community contributors!

### Hall of Fame

Contributors who make significant impacts:
- Top bug reporters
- Documentation contributors
- Feature requesters whose ideas ship
- Community helpers
- Agent creators

**Submit nominations**: community@reliant.ai

### Contributor Benefits

Regular contributors receive:
- Early access to new features
- Direct line to the development team
- Special badge in community spaces
- Invitation to contributor calls
- Swag (stickers, t-shirts, etc.)

## Roadmap Transparency

See what we're working on:

**Public Roadmap**: [github.com/reliant-labs/reliant/projects](https://github.com/reliant-labs/reliant/projects) (coming soon)

**Priority Voting**: Vote on features you want most

**Development Updates**: Monthly blog posts on progress

## Thank You

Reliant wouldn't exist without our amazing community of users, contributors, and supporters. Every bug report, feature request, and piece of feedback makes Reliant better.

Thank you for being part of the journey! 🚀

## Related Topics

- [Troubleshooting]({{< relref "troubleshooting" >}}) - Solve common issues
- [Privacy & Security]({{< relref "privacy" >}}) - Understand data handling
- [Getting Started]({{< relref "getting-started" >}}) - New to Reliant?
