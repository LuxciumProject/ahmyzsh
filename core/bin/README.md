# core/bin/ — Executable Utility Scripts

← Back to [core/README.md](../README.md) | [Repository README](../../README.md)

This directory contains ~170+ standalone executable scripts for system administration, development tooling, hardware management, and shell utilities. All scripts in this directory are placed on `$PATH` via `$CORE_BIN` — making them available as commands in any shell session.

---

## Table of Contents

- [Script Categories](#script-categories)
- [NVIDIA GPU Management](#nvidia-gpu-management)
- [Timestamp and ID Generation](#timestamp-and-id-generation)
- [System Management](#system-management)
- [Node.js and Package Management](#nodejs-and-package-management)
- [Docker and Container Management](#docker-and-container-management)
- [File and Directory Utilities](#file-and-directory-utilities)
- [String and Encoding Utilities](#string-and-encoding-utilities)
- [VS Code Management](#vs-code-management)
- [Audio/Media Utilities](#audiomedia-utilities)
- [Path Management](#path-management)
- [Process Management](#process-management)
- [DNF Package Manager Helpers](#dnf-package-manager-helpers)
- [Miscellaneous](#miscellaneous)
- [Deprecated Scripts](#deprecated-scripts)

---

## Script Categories

| Category | Scripts |
|----------|---------|
| NVIDIA GPU | `Antialias`, `DitheringDynamic`, `DitheringStatic`, `DitheringTemporal`, `GPUTargetFanSpeed`, `OpenGLImagePerform`, `OpenGLImagePerformHigh`, `OpenGLImageQuality`, `OpenGLImageQualityHigh`, `set-nvidia-01`, `set-nvidia-02`, `nvidia-connect` |
| Timestamps | `getdate`, `getdateu`, `getdatey`, `getdateyy`, `getepochstamp`, `getnanoepochstamp`, `getstamp`, `getstamp1`–`getstamp8`, `getstampa`, `getstampd`, `getstampdty`, `gettimestamp`, `gettimestampu`, `gettimestampz`, `getSTMP4_`–`getSTMP8a_`, `utcxid`, `uxid`, `uxid16`–`uxid24` |
| System | `binram`, `defaultprocvm`, `renicer`, `meminfo`, `meminfowatch`, `watchmem_0`, `watchmem_1`, `crtmeminfo` |
| Node.js | `allNodeJSStuff`, `nodejsversion`, `nodejsversions`, `fnm-update`, `updatenpm`, `updatenpm7`, `updateyarn`, `updateyarnglobal` |
| Docker | `cdocker`, `enable_containerd`, `enable_systemctl` |
| File/Dir ops | `duls`, `cdx`, `maybelist`, `foldercontain`, `contain`, `notcontain`, `fordirdo`, `fordotdirdo`, `foreachdirdo`, `foreachfile`, `foreachline`, `remfilenamepartial`, `tolower`, `toupper` |
| Encoding | `encodeURI`, `encodeURIComponent`, `urlencode` |
| VS Code | `updatevscode`, `upgrade-vscode`, `vsbackup`, `vsbackupwatch`, `vspy`, `lxcode`, `startvsz` |
| Audio | `beep-sound`, `play_shutdown`, `playtest` |
| PATH | `dedup_path`, `dedup_pathvar` |
| Process | `pw`, `randx`, `getrandomelement`, `argvenumerate` |
| DNF | `dnfcleandownload`, `dnfdownloadonly`, `dnfupdateall`, `dnfupgrade`, `getupdates` |
| Conda | `updateconda` |
| Misc | `consoles`, `cudarepoadd`, `dalle`, `echostderr`, `echostdout`, `panel-restart`, `promptversions`, `saybye`, `setrandoplymouththeme`, `systemctlbatch`, `unsplash` |
| ZSH | `clearzshwordcode`, `___err_compute_pl10k` |
| Deprecated | `updateall.deprecated` |

---

## NVIDIA GPU Management

These scripts use `nvidia-settings` to control GPU rendering parameters, typically invoked via the aliases in `core/aliases/78000-nvidia.sh`.

| Script | Purpose |
|--------|---------|
| `Antialias` | Configure GPU antialiasing mode |
| `DitheringDynamic` | Set GPU dithering to dynamic mode |
| `DitheringStatic` | Set GPU dithering to static mode |
| `DitheringTemporal` | Set GPU dithering to temporal mode |
| `GPUTargetFanSpeed` | Set GPU fan speed target (for thermal management) |
| `OpenGLImagePerform` | Set OpenGL to performance mode |
| `OpenGLImagePerformHigh` | Set OpenGL to high-performance mode |
| `OpenGLImageQuality` | Set OpenGL to quality mode |
| `OpenGLImageQualityHigh` | Set OpenGL to high-quality mode |
| `set-nvidia-01` / `set-nvidia-02` | Apply preset NVIDIA configuration profiles |
| `nvidia-connect` | Re-initialize NVIDIA display connection |

---

## Timestamp and ID Generation

A comprehensive suite of timestamp generators in various formats. All scripts output to stdout.

| Script | Output Format |
|--------|--------------|
| `getdate` | Current date in locale format |
| `getdateu` | Date in UTC |
| `getdatey` | Date with year |
| `getdateyy` | Date with full year |
| `getepochstamp` | Unix epoch seconds |
| `getnanoepochstamp` | Unix epoch nanoseconds |
| `getstamp` | Default timestamp stamp |
| `getstamp1`–`getstamp8` | Numbered format variants |
| `getstampa` | Alphanumeric stamp |
| `getstampd` | Date-only stamp |
| `getstampdty` / `getstampdtyy` | Date-time-year stamps |
| `getstamphelp` | List available stamp formats |
| `gettimestamp` | Full timestamp |
| `gettimestampu` | UTC timestamp |
| `gettimestampz` | Timezone-aware timestamp |
| `gettimeshortstampu` | Short UTC timestamp |
| `getSTMP4_`–`getSTMP8a_` | Extended stamp variants |
| `utcxid` | UTC-based unique ID |
| `uxid` | Short unique ID |
| `uxid16` / `uxid18` / `uxid24` | Fixed-length unique IDs |
| `uxidec` / `uxienc` | Encoded unique IDs |

---

## System Management

| Script | Purpose |
|--------|---------|
| `binram` | Create 2GB tmpfs RAM disk at `/opt/ramdisk`, copy `/bin` and `/sbin` to it, add to PATH for performance |
| `defaultprocvm` | Set default process and VM priorities |
| `renicer` | Adjust `nice` values for running processes |
| `meminfo` | Display formatted memory usage statistics |
| `meminfowatch` | Real-time memory monitoring (watch mode) |
| `crtmeminfo` | CRT-specific memory information |
| `watchmem_0` / `watchmem_1` | Memory watchdog variants |

---

## Node.js and Package Management

| Script | Purpose |
|--------|---------|
| `allNodeJSStuff` | Install/update all Node.js-related global tools |
| `nodejsversion` | Display current Node.js version |
| `nodejsversions` | List all installed Node.js versions (via FNM) |
| `fnm-update` | Update FNM binary to latest version |
| `updatenpm` | Update NPM to latest |
| `updatenpm7` | Update NPM to version 7 specifically |
| `updateyarn` | Update Yarn to latest |
| `updateyarnglobal` | Update all global Yarn packages |
| `updateconda` | `conda update --all` |

---

## Docker and Container Management

| Script | Purpose |
|--------|---------|
| `cdocker` | Navigate to Docker-related directory |
| `enable_containerd` | Enable and start `containerd` service |
| `enable_systemctl` | Enable and start systemd services in batch |

---

## File and Directory Utilities

| Script | Purpose |
|--------|---------|
| `duls` | `du` + `ls` combined directory size listing |
| `cdx` | `cd` to a directory and execute a command |
| `maybelist` | Conditionally list directory contents |
| `foldercontain` | Check if a folder contains a specific item |
| `contain` | Check if a string contains a substring |
| `notcontain` | Inverse of `contain` |
| `fordirdo` | Execute a command for each directory |
| `fordotdirdo` | Execute for each hidden directory |
| `foreachdirdo` | For-each loop over directories |
| `foreachfile` | For-each loop over files |
| `foreachline` | For-each loop over lines of input |
| `remfilenamepartial` | Remove partial filenames matching a pattern |
| `tolower` | Convert string to lowercase |
| `toupper` | Convert string to uppercase |

---

## String and Encoding Utilities

| Script | Purpose |
|--------|---------|
| `encodeURI` | URL-encode a string (RFC 3986, keep path characters) |
| `encodeURIComponent` | Fully URL-encode a string (encode all special chars) |
| `urlencode` | Generic URL encoding |
| `echostderr` | Echo to stderr |
| `echostdout` | Echo to stdout (explicit) |

---

## VS Code Management

| Script | Purpose |
|--------|---------|
| `updatevscode` | Download and update VS Code stable |
| `upgrade-vscode` | Upgrade VS Code to latest version |
| `vsbackup` | Backup VS Code configuration and extensions |
| `vsbackupwatch` | Watch for VS Code config changes and backup |
| `vspy` | VS Code with Python environment |
| `lxcode` | Custom VS Code launcher with personal settings |
| `startvsz` | Start VS Code with Zsh environment |

---

## Audio/Media Utilities

| Script | Purpose |
|--------|---------|
| `beep-sound` | Play a system beep/notification sound |
| `play_shutdown` | Play shutdown/reboot audio cue (used by `upnboot`) |
| `playtest` | Test audio playback |

---

## Path Management

| Script | Purpose |
|--------|---------|
| `dedup_path` | Remove duplicate entries from `$PATH` |
| `dedup_pathvar` | Remove duplicates from any colon-separated path variable |

These are the executable counterparts to the `dedup_pathvar_()` function in `core/compute-path/path.sh`.

---

## Process Management

| Script | Purpose |
|--------|---------|
| `pw` | Process watcher / `ps` wrapper |
| `randx` | Execute a random command/element |
| `getrandomelement` | Get a random element from a list |
| `argvenumerate` | Enumerate command-line arguments |

---

## DNF Package Manager Helpers

| Script | Purpose |
|--------|---------|
| `dnfcleandownload` | Clean DNF download cache |
| `dnfdownloadonly` | Download packages without installing |
| `dnfupdateall` | Update all packages |
| `dnfupgrade` | Perform a full DNF upgrade with refresh |
| `getupdates` | List available package updates |

---

## Miscellaneous

| Script | Purpose |
|--------|---------|
| `consoles` | List or manage virtual consoles |
| `cudarepoadd` | Add CUDA repository to DNF |
| `dalle` | Interface to DALL-E image generation API |
| `panel-restart` | Restart KDE Plasma panel |
| `promptversions` | Display versions of prompt-related tools |
| `saybye` | Graceful system shutdown wrapper |
| `setrandoplymouththeme` | Set a random Plymouth boot theme |
| `systemctlbatch` | Run multiple `systemctl` commands in batch |
| `unsplash` | Download a random wallpaper from Unsplash |
| `clearzshwordcode` | Clear compiled Zsh word-code cache files |
| `___err_compute_pl10k` | Error handler for P10k computation failures |
| `ramlxmdev` / `mkloopback` | RAM disk and loopback device management |

---

## Deprecated Scripts

| Script | Status |
|--------|--------|
| `updateall.deprecated` | Superseded by `all_update()` in `core/functions/00021-update.sh` |

---

## Notes

### Scripts Are on PATH

`$CORE_BIN` is added to `$PATH` by `__compute_extended_path()`. All scripts in this directory are available as commands without a path prefix.

### No `.sh` Extensions

Scripts use no file extension by convention — they are executables, not scripts to be sourced. This follows Unix convention for commands.

### Adding New Scripts

1. Create the script file in this directory
2. Make it executable: `chmod +x scriptname`
3. Add a shebang line (`#!/usr/bin/env bash`, `#!/usr/bin/env python3`, etc.)
4. Document it in this README

---



### Implementation Status Overview

- **Total Scripts**: 170+
- **Primary Categories**: System management, utility functions, development tools, and interface enhancements

### Script Categories

1. **System Management**: Scripts for system administration, RAM usage, and process management
2. **Date and Time Utilities**: Timestamp generation tools with various formats
3. **Development Tools**: Tools for Node.js, Git, VSCode, and other development environments
4. **File Operations**: Directory and file manipulation utilities
5. **User Interface**: Terminal enhancements and visual feedback scripts
6. **Network and Hardware**: Tools for network configuration and hardware management
7. **Path Management**: PATH variable manipulation utilities
8. **Container Management**: Docker and containerd management scripts
9. **Package Management**: DNF, NPM, and other package manager helpers

## System Management

### binram

- **Status**: Complete ✅
- **Purpose**: Creates a RAM disk and copies essential binaries for improved performance
- **Features**:
  - Creates a 2GB tmpfs RAM disk at /opt/ramdisk
  - Copies /bin and /sbin to the RAM disk
  - Adds custom binaries from user and AHMYZSH directories
  - Adds RAM disk locations to PATH
- **Dependencies**:
  - sudo privileges
  - mount command
  - AHMYZSH environment variable

### defaultprocvm

- **Purpose**: Sets default process priority for virtual machines
- **Features**:
  - Adjusts CPU and IO scheduling priorities

### renicer

- **Purpose**: Adjusts process priority for specific applications
- **Features**:
  - Targets processes by name and adjusts nice values

### meminfo / meminfowatch

- **Purpose**: Displays system memory information
- **Features**:
  - Formatted output of memory usage statistics
  - Watch mode for real-time monitoring

## Date and Time Utilities

### getstamp / getstamp[1-8]

- **Purpose**: Generates timestamps in various formats
- **Features**:
  - Different precision levels (1-8 digits)
  - Various date formats (ISO, custom)
  - Support for UTC and local time

### getdate / getdateyu

- **Purpose**: Outputs formatted date strings
- **Features**:
  - Year-month-day formats
  - Custom separators
  - Optional time components

### gettimestamp / gettimestampu / gettimestampz

- **Purpose**: Generates full timestamps with time
- **Features**:
  - UTC support
  - Unix timestamp conversion
  - Timezone notation

## Development Tools

### getvscode / getvscodeportable / getvscodestable

- **Status**: Complete ✅
- **Purpose**: Downloads, installs, and manages VSCode installations
- **Features**:
  - Support for stable and insider builds
  - Portable installation options
  - Custom user data directories
  - Extension management
- **Dependencies**:
  - curl for downloads
  - sudo privileges
  - Source file templates

### latesteslint / latesttypescript

- **Purpose**: Updates to the latest versions of ESLint and TypeScript
- **Features**:
  - Global package installation
  - Dependency management

### gitram

- **Purpose**: Creates a RAM disk for Git repositories
- **Features**:
  - Improves Git performance by using RAM storage
  - Configurable size and location

### allNodeJSStuff

- **Purpose**: JavaScript utility to list available Node.js APIs
- **Features**:
  - Comprehensive listing of available objects and types
  - Type information display

## File Operations

### foreachfile

- **Purpose**: Executes commands for each file in a directory
- **Features**:
  - Batch file processing
  - Command templating
  - Recursive option

### fordirdo / fordotdirdo / foreachdirdo

- **Purpose**: Directory processing utilities
- **Features**:
  - Various directory selection criteria
  - Batch command execution

### contain / notcontain / itcontain / ithas

- **Purpose**: File content searching utilities
- **Features**:
  - Text pattern matching
  - Exit status based on match results

## User Interface

### saybye

- **Status**: Complete ✅
- **Purpose**: Displays an animated goodbye message with sound
- **Features**:
  - ANSI color animations
  - Sound effects
  - Custom text display

### consoles

- **Status**: Complete ✅
- **Purpose**: Enhanced terminal display utilities
- **Features**:
  - Terminal color manipulation
  - Cursor positioning
  - Visual effects

### clearzshwordcode

- **Purpose**: Clears terminal and resets state
- **Features**:
  - Custom clear with additional resets

## Network and Hardware

### GPUTargetFanSpeed / gpu-max-cool-60

- **Purpose**: NVIDIA GPU fan control and cooling management
- **Features**:
  - Temperature monitoring
  - Fan speed adjustment
  - Thermal throttling prevention

### nvidia-connect / set-nvidia-01 / set-nvidia-02

- **Purpose**: NVIDIA driver and settings management
- **Features**:
  - Driver configuration
  - Graphics settings optimization
  - Performance profiles

## Path Management

### dedup_path / dedup_pathvar

- **Purpose**: Removes duplicate entries from PATH variables
- **Features**:
  - Handles various path-like environment variables
  - Maintains order of unique entries

## Container Management

### cdocker

- **Purpose**: Docker container management utilities
- **Features**:
  - Container lifecycle management
  - Volume and network handling

### enable_containerd

- **Purpose**: Enables and configures containerd service
- **Features**:
  - Service activation
  - Configuration application

## Package Management

### dnfcleandownload / dnfdownloadonly / dnfupdateall / dnfupgrade

- **Purpose**: Enhanced DNF package manager operations
- **Features**:
  - Background downloads
  - Cleanup operations
  - Prioritized updates

### updatenpm / updateyarn / updateconda

- **Purpose**: Package manager update utilities
- **Features**:
  - Global package updates
  - Cache management
  - Dependency resolution

## Common Improvement Areas

1. **Error Handling**: Many scripts would benefit from improved error detection and reporting
2. **Documentation**: Several scripts lack comprehensive inline documentation
3. **Configuration**: Many scripts have hardcoded paths and settings that could be configurable
4. **Validation**: Input and dependency validation is often limited or missing
5. **Consolidation**: Several scripts have overlapping functionality that could be unified

## Usage Guide

Most scripts in this directory can be executed directly from the command line:

```bash
# Example: Create a RAM disk with binaries
binram

# Example: Get a formatted timestamp
getstamp8

# Example: Install VSCode portable
getvscodeportable
```

## Integration with Core Functions

Many scripts in this directory work in conjunction with functions defined in the `core/functions` directory. They often provide command-line interfaces to functionality that's also available as shell functions.

## Development Notes

When extending or modifying these scripts, consider the following:

1. Follow the existing naming conventions
2. Add comprehensive error handling
3. Include usage examples in comments
4. Test in various environments
5. Update this README with any new scripts or categories
6. Consider consolidating similar functionality

## License and Attribution

Many scripts contain licensing information and attribution to their original authors. Respect these notices when modifying or adapting the scripts.

---

† Scientia es lux principium✨ ™
Copyright © 2020-2024 AHMYZSH Contributors
