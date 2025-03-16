# AHMYZSH User Guide

## System Overview

AHMYZSH is a performance-focused shell configuration system that provides a rich development environment through carefully orchestrated initialization and loading sequences.

## Key Features

### 1. Performance Optimization

- Smart path caching system
- Timed execution tracking
- Conditional loading of components
- Optimized startup sequence

### 2. Development Environment

- Multiple Node.js versions via FNM
- Python environment with Conda support
- Ruby/Perl development tools
- Comprehensive Git integration

### 3. Shell Customization

- Extensive alias library
- Custom functions
- Interactive shell features
- Locale management

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/Luxcium/ahmyzsh.git
   ```

2. Choose your branch based on your system:
   - macOS: `luxcium`
   - WSL/Windows: `pc-master-race`
   - Fedora: `fedora-working-station`

3. Source the entry point in your `.zshenv`:

   ```bash
   source /path/to/ahmyzsh/source-me-in-etc-zshenv.sh
   ```

## Core Components

### Configuration Files

1. `source-me-in-etc-zshenv.sh`
   - System entry point
   - Environment variable setup
   - Path management
   - Core component loading

2. `MAIN.sh`
   - Bootstrap process
   - Shell validation
   - Interactive features

3. `MAIN-FUNCTIONS.sh`
   - Core function definitions
   - Utility functions
   - System operations

4. `MAIN_SETTINGS.sh`
   - Environment configuration
   - Development tool setup
   - Locale management

### Directory Structure

```
ahmyzsh/
├── core/
│   ├── compute-path/    # Path computation
│   ├── functions/       # Shell functions
│   ├── aliases/         # Command aliases
│   └── options/         # Shell options
├── plugins/             # Extended functionality
├── themes/              # Shell themes
└── settings/           # System settings
```

## Usage Guide

### 1. Path Management

The system optimizes PATH handling through caching:

```bash
# Refresh path cache
rm "${AHMYZSH_CACHE}/path.env"
source "${AHMYZSH}/source-me-in-etc-zshenv.sh"
```

### 2. Development Tools

Node.js version management:

```bash
# Switch Node.js versions
node-default  # Use default version
node-latest   # Use latest version
node-erbium   # Use specific version
```

### 3. Shell Functions

Utility functions for file operations:

```bash
# Smart file loading
load_ "path/to/file" "optional_function"

# Timed execution
call_ some_function

# Safe file sourcing
source_ "path/to/file"
```

### 4. Performance Monitoring

Timing functions for optimization:

```bash
# Check execution time
timer_now
timer_all
```

## Customization

### 1. Adding Aliases

Create new files in `core/aliases/`:

```bash
# Example: core/aliases/custom.sh
alias my-command='command with parameters'
```

### 2. Custom Functions

Add functions in `core/functions/`:

```bash
# Example: core/functions/utils.sh
my_function() {
    # Function implementation
}
```

### 3. Environment Settings

Modify settings in `MAIN_SETTINGS.sh`:

```bash
# Example: Custom environment variable
export MY_VARIABLE="value"
```

## Troubleshooting

### Common Issues

1. Slow Shell Startup
   - Check path cache status
   - Verify function loading sequence
   - Monitor timing with `timer_all`

2. Path Issues
   - Regenerate path cache
   - Check AHMYZSH environment variable
   - Verify directory permissions

3. Function Failures
   - Check function definitions
   - Verify file permissions
   - Monitor error outputs

### Debug Mode

Enable verbose output:

```bash
export VERBOSA="1"
source "${AHMYZSH}/source-me-in-etc-zshenv.sh"
```

## Security Considerations

1. File Permissions
   - Maintain appropriate permissions
   - Regular security audits
   - Monitor third-party integrations

2. Environment Variables
   - Protect sensitive data
   - Use secure storage
   - Regular credential rotation

## Support

- Report issues: [GitHub Issues](https://github.com/Luxcium/ahmyzsh/issues)
- Documentation: [Project Wiki](https://github.com/Luxcium/ahmyzsh/wiki)
- Security reports: Direct to repository maintainers
