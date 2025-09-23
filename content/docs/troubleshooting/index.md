---
title: "Troubleshooting"
description: "Solve common issues and get help when needed"
weight: 70
icon: "build"
---

Find solutions to common issues and learn how to get help when you need it.

## Common Issues

### Application Won't Start

**Reliant doesn't launch or crashes immediately**

**Solutions**:

1. **macOS Security Block**
   - Right-click Reliant and select "Open"
   - Go to System Settings → Privacy & Security
   - Click "Open Anyway" if Reliant is blocked

2. **Check System Requirements**
   - macOS 11.0 (Big Sur) or later
   - 8GB RAM minimum
   - 4GB free disk space

3. **Reset Application**
   ```bash
   # Remove preferences
   defaults delete com.reliantlabs.reliant

   # Clear application support
   rm -rf ~/Library/Application\ Support/Reliant
   ```

4. **Reinstall**
   - Delete Reliant from Applications
   - Empty Trash
   - Download fresh copy from GitHub
   - Reinstall

### Backend Connection Issues

**"Backend not responding" or "Connection failed"**

**Solutions**:

1. **Check Backend Status**
   - Look for "reliant" process in Activity Monitor
   - Backend should start automatically
   - Takes 5-10 seconds to initialize

2. **Port Conflicts**
   ```bash
   # Check if ports are in use
   lsof -i :8080
   lsof -i :8081

   # Kill conflicting processes if needed
   kill -9 [PID]
   ```

3. **Restart Backend**
   - Quit Reliant completely (Cmd+Q)
   - Wait 10 seconds
   - Relaunch Reliant

4. **Firewall Issues**
   - Check System Settings → Network → Firewall
   - Allow incoming connections for Reliant
   - Disable VPN temporarily to test

### AI Not Responding

**Chat works but AI doesn't respond**

**Solutions**:

1. **Check API Key**
   - Go to Settings → API Configuration
   - Verify key is entered correctly
   - Test connection
   - Check API provider status

2. **API Provider Issues**
   - **OpenAI**: Check [status.openai.com](https://status.openai.com)
   - **Anthropic**: Check [status.anthropic.com](https://status.anthropic.com)
   - Verify billing is active
   - Check rate limits

3. **Network Connection**
   - Verify internet connection
   - Check proxy settings
   - Disable VPN if using one
   - Try different network

4. **Clear Chat**
   - Start a new chat
   - Clear conversation history
   - Restart Reliant

### Slow Performance

**Laggy interface or slow responses**

**Solutions**:

1. **Free Up Resources**
   - Close unused chats
   - Limit open projects to 1-2
   - Close other heavy applications
   - Check Activity Monitor for CPU/Memory usage

2. **Large Projects**
   - Add `.reliantignore` file to exclude folders
   - Exclude `node_modules`, `build`, `dist`
   - Reduce project scope
   - Use specific folders instead of entire repo

3. **Clear Cache**
   ```bash
   rm -rf ~/Library/Caches/Reliant
   ```

4. **Optimize Settings**
   - Reduce chat history length
   - Disable unnecessary features
   - Use simpler theme
   - Disable animations

### Project Issues

**Can't open or index projects**

**Solutions**:

1. **Permission Issues**
   - Grant file access when prompted
   - Check folder permissions
   - Try different project location

2. **Git Issues**
   - Ensure Git is installed
   - Check `.git` folder exists
   - Try non-Git folder to test

3. **Path Problems**
   - Use absolute paths
   - Avoid special characters in path
   - Don't use symlinks
   - Keep path length reasonable

### Chat Problems

**Messages not sending or displaying**

**Solutions**:

1. **Input Issues**
   - Press Enter to send (not Shift+Enter)
   - Check for invisible characters
   - Clear input and retype

2. **Display Issues**
   - Refresh the interface (Cmd+R)
   - Clear chat history
   - Check zoom level (Cmd+0 to reset)

3. **WebSocket Issues**
   - Check console for errors (View → Developer → Developer Tools)
   - Restart Reliant
   - Check network stability

## Error Messages

### Common Errors and Solutions

**"API key is invalid"**
- Double-check key in Settings
- Ensure no extra spaces
- Verify with provider's website
- Generate new key if needed

**"Rate limit exceeded"**
- Wait before sending more messages
- Check API provider limits
- Consider upgrading plan
- Use different API key

**"Model not available"**
- Check API tier/access
- Verify model name in settings
- Try different model
- Contact API provider

**"Project too large"**
- Add `.reliantignore` file
- Exclude unnecessary directories
- Split into smaller projects
- Increase memory limit in settings

**"Cannot read file"**
- Check file permissions
- Ensure file exists
- Close file in other applications
- Check file encoding (UTF-8 required)

## Logs and Diagnostics

### Finding Logs

Reliant logs are stored in:
```
~/Library/Logs/Reliant/
```

View logs:
```bash
# View main log
tail -f ~/Library/Logs/Reliant/main.log

# View backend log
tail -f ~/Library/Logs/Reliant/backend.log

# Search for errors
grep -i error ~/Library/Logs/Reliant/*.log
```

### Developer Tools

Access browser console:
1. View → Developer → Developer Tools
2. Or press `Cmd+Option+I`
3. Check Console tab for errors
4. Check Network tab for failed requests

### System Information

Gather info for support:
```bash
# macOS version
sw_vers

# Reliant version
cat /Applications/Reliant.app/Contents/Info.plist | grep -A1 CFBundleShortVersionString

# System resources
top -l 1 | head -n 10

# Disk space
df -h
```

## Getting Help

### Before Asking for Help

1. **Check Documentation**
   - Review relevant sections
   - Search for your issue
   - Check FAQ

2. **Try Basic Fixes**
   - Restart Reliant
   - Clear cache/preferences
   - Update to latest version
   - Restart your Mac

3. **Gather Information**
   - Error messages (exact text)
   - Steps to reproduce
   - System info
   - Reliant version
   - Relevant logs

### Reporting Issues

**GitHub Issues**

File a bug report:
1. Go to [GitHub Issues](https://github.com/reliant-labs/reliant/issues)
2. Search existing issues first
3. Click "New Issue"
4. Use the template
5. Include:
   - macOS version
   - Reliant version
   - Steps to reproduce
   - Expected vs actual behavior
   - Screenshots if applicable
   - Error messages
   - Logs (remove sensitive data)

**Support Email**

Contact: support@reliantlabs.com

Include:
- Subject: Clear problem description
- Reliant version
- macOS version
- Detailed issue description
- Steps you've tried
- Attachments (screenshots, logs)

## Prevention Tips

### Best Practices

1. **Regular Maintenance**
   - Keep Reliant updated
   - Update macOS regularly
   - Clear cache periodically
   - Restart app weekly

2. **Project Management**
   - Keep projects organized
   - Use `.reliantignore` files
   - Archive old projects
   - Limit project size

3. **Resource Management**
   - Monitor system resources
   - Close unused features
   - Limit concurrent operations
   - Regular app restarts

4. **Backup**
   - Export settings regularly
   - Save important chats
   - Backup custom prompts
   - Document custom agents

### Quick Fixes Checklist

When something goes wrong, try these in order:

1. ✓ Restart Reliant
2. ✓ Check API key and connection
3. ✓ Clear cache
4. ✓ Check for updates
5. ✓ Restart your Mac
6. ✓ Reinstall Reliant
7. ✓ Contact support

---

**Still having issues?** Don't hesitate to reach out for help. We're here to ensure Reliant works perfectly for your development workflow.