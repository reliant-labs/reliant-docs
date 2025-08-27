---
title: "Troubleshooting"
description: "Solve common issues and get help when needed"
weight: 50
icon: "build"
---

# Troubleshooting

Find solutions to common issues and learn how to get help when you need it.

## Common Problems

### Application Won't Launch

**Symptoms**: Reliant doesn't start or crashes immediately

**Solutions**:

1. **Check System Requirements**
   - Verify your OS version is supported
   - Ensure you have sufficient RAM (8GB minimum)
   - Check available disk space (2GB minimum)

2. **Permission Issues**
   - **macOS**: Check System Preferences > Security & Privacy
   - **macOS**: Check file permissions and execute rights

3. **Port Conflicts**
   - Close other applications that might use ports 8080 or 3000
   - Restart your computer to clear port usage
   - Check firewall settings

4. **Corrupted Installation**
   - Uninstall Reliant completely
   - Download a fresh copy from GitHub Releases
   - Reinstall the application

### Backend Connection Issues

**Symptoms**: "Backend not responding" or connection errors

**Solutions**:

1. **Check Backend Status**
   - Look for backend process in Activity Monitor/Task Manager
   - Check if ports are in use: `lsof -i :8080`

2. **Restart Backend Services**
   - Close Reliant completely
   - Wait 10-15 seconds
   - Relaunch the application

3. **Port Configuration**
   - Check if other services are using the default ports
   - Configure custom ports in settings if needed
   - Restart your computer to clear port conflicts

4. **Firewall Issues**
   - Check system firewall settings
   - Allow Reliant through macOS firewall
   - Verify macOS firewall permissions

### AI Not Responding

**Symptoms**: Chat interface works but AI doesn't respond

**Solutions**:

1. **Check Internet Connection**
   - Verify you have internet access
   - Check if AI model downloads are complete
   - Try accessing other online services

2. **Model Loading Issues**
   - Wait for initial model loading to complete
   - Check available disk space for model storage
   - Restart Reliant to reload models

3. **Backend Communication**
   - Verify WebSocket connections are working
   - Check browser console for connection errors
   - Restart the application

4. **Resource Constraints**
   - Close other resource-intensive applications
   - Check system memory usage
   - Restart your computer

### Performance Issues

**Symptoms**: Slow responses, laggy interface, high resource usage

**Solutions**:

1. **Resource Management**
   - Close unused chat tabs
   - Limit the number of open projects
   - Restart Reliant periodically

2. **System Optimization**
   - Close unnecessary background applications
   - Check for system updates
   - Monitor resource usage in Activity Monitor/Task Manager

3. **Project Size**
   - Very large projects may cause performance issues
   - Consider excluding unnecessary directories
   - Use `.gitignore` patterns to limit indexing

4. **Cache Management**
   - Clear application cache
   - Reset project indexes if needed
   - Restart the application

## Error Messages

### Common Error Messages

**"Backend connection failed"**
- Backend service is not running
- Port conflicts or firewall issues
- Insufficient system resources

**"Project indexing failed"**
- Insufficient permissions to access project files
- Project path is invalid or inaccessible
- Disk space issues

**"AI model not available"**
- Model download incomplete or corrupted
- Insufficient disk space
- Network connectivity issues

**"File access denied"**
- File permission issues
- File is locked by another application
- Antivirus software blocking access

### Understanding Error Codes

- **HTTP 500**: Internal server error in backend
- **HTTP 404**: Resource not found
- **HTTP 403**: Access forbidden
- **Connection refused**: Backend not running or port blocked
- **Timeout**: Request took too long to complete

## Getting Help

### Self-Help Resources

1. **Check this documentation** for your specific issue
2. **Review the FAQ** for common questions
3. **Search existing issues** on GitHub
4. **Check system logs** for detailed error information

### GitHub Issues

When filing an issue on GitHub:

1. **Use the issue template** if available
2. **Provide detailed information**:
   - Operating system and version
   - Reliant version
   - Steps to reproduce the problem
   - Error messages and logs
   - System specifications

3. **Include relevant files**:
   - Screenshots of the issue
   - Log files (if available)
   - Configuration files (remove sensitive information)

### Contact Support

For additional help:

- **Email**: support@reliantlabs.com
- **GitHub Discussions**: Community support and questions
- **Documentation**: This comprehensive guide

## Diagnostic Tools

### Built-in Diagnostics

Reliant includes several diagnostic tools:

1. **Status Bar**: Shows connection status and backend health
2. **Console Logs**: Access through Developer Tools (F12)
3. **Connection Test**: Built-in connection diagnostics
4. **Performance Monitor**: Resource usage information

### System Diagnostics

Use system tools to diagnose issues:

**macOS**:
```bash
# Check port usage
lsof -i :8080

# Monitor system resources
top -o cpu

# Check application logs
log show --predicate 'process == "Reliant"'
```



## Prevention

### Best Practices

1. **Regular Updates**: Keep Reliant updated to the latest version
2. **System Maintenance**: Regular system updates and maintenance
3. **Resource Management**: Don't overload your system with too many applications
4. **Backup Configuration**: Export your settings regularly

### Monitoring

1. **Watch for Warning Signs**: Slow performance, frequent crashes
2. **Check System Resources**: Monitor memory and CPU usage
3. **Review Logs**: Periodically check for error patterns
4. **Test Functionality**: Verify core features work after system changes

---

**Next**: [FAQ]({{< relref "faq" >}}) - Find answers to frequently asked questions.
