#!/usr/bin/env bash

# File name: "ahmyzsh-project-loader.sh"
# File location "${AHMYZSH}/layouts/kwin/ahmyzsh-project-loader.sh"

# Using KDE kstart5 to launch Visual Studio Code with a specific project

# What can copilot do to help me?
# What are the setting that can be changed and how they would impact my experience with copilot?
# the mos important thing to consider whne usinc copilot is not oly yhe top_p but mor important is to consider top_k and the temperature setting
# one other consideration is to make sure copilot can analyse all your codebase by setting the max codebase size to 0 as there is no limit to the size of codebase that can be used you can change this setting in the copilot settings menu or by editing the settings json file in your home directory. this is an example of how to do it: { "copilot": { "max_codebase_size": 0 } }

true
APP_PATH="/home/luxcium/main-vscode/bin/code"
ICON_FILE="/home/luxcium/.local/share/icons/vscode-material-icon-theme/folder-vm-open.svg"
WM_CLASS="°Ah! MYZSH°"
VSCODE_PROJECT_PATH="/projects/ahmyzsh"

kstart5 --qwindowicon "${ICON_FILE}" --windowclass "${WM_CLASS}" --currentdesktop --activate "${APP_PATH}" "${VSCODE_PROJECT_PATH}"

#--args "--new-window --project ${VSCODE_PROJECT_PATH}"

# kstart5 \
# --qwindowicon "/home/luxcium/main-vscode/data/icons/code-outlined-logo.svg" \
# --qwindowtitle "° CODE °" \
# --windowclass "° CODE °" \
# --windowrole "AH MY ZSH" \
# --name "° CODE ° AH MY ZSH" \
# --class "code-oss" \
# --role "code-oss" \
# --title "Visual Studio Code" \
# --window "°Ah! MAZSH°"

# _KDE_NET_WM_APPMENU_OBJECT_PATH(STRING) = "/com/canonical/menu/2600003"
# _KDE_NET_WM_APPMENU_SERVICE_NAME(STRING) = ":1.148"
# _NET_WM_ALLOWED_ACTIONS(ATOM) = _NET_WM_ACTION_MOVE, _NET_WM_ACTION_RESIZE,
# _NET_WM_ACTION_MINIMIZE, _NET_WM_ACTION_MAXIMIZE_VERT, _NET_WM_ACTION_MAXIMIZE_HORZ, _NET_WM_ACTION_FULLSCREEN, _NET_WM_ACTION_CHANGE_DESKTOP, _NET_WM_ACTION_CLOSE
# _NET_WM_DESKTOP(CARDINAL) = 0
# _KDE_NET_WM_ACTIVITIES(STRING) = "596df604-ff67-47d2-a7b9-78f147a7aca2"
# __WM_STATE(WM_STATE):window state: Normal icon window: 0x0
# _NET_WM_STATE(ATOM) = _NET_WM_STATE_MAXIMIZED_VERT, _NET_WM_STATE_MAXIMIZED_HORZ, _NET_WM_STATE_FOCUSED
# _NET_WM_USER_TIME(CARDINAL) = 8457361
# _NET_WM_ICON(CARDINAL) =
# __WM_NORMAL_HINTS(WM_SIZE_HINTS):
#                 program specified location: 2018, 199
#                 program specified minimum size: 400 by 270
#                 program specified maximum size: 2147483647 by 2147483647
# _MOTIF_WM_HINTS(_MOTIF_WM_HINTS) = 0x2, 0x0, 0x0, 0x0, 0x0
# __XdndAware(ATOM) = BITMAP
# _NET_WM_BYPASS_COMPOSITOR(CARDINAL) = 2
# _GTK_THEME_VARIANT(UTF8_STRING) = "dark"
# _GTK_HIDE_TITLEBAR_WHEN_MAXIMIZED(CARDINAL) = 1
# __WM_NAME(UTF8_STRING) = "°Ah! MYZSH° ✨Visual Studio Code✨ /ahmyzsh zsh"
# _NET_WM_NAME(UTF8_STRING) = "°Ah! MYZSH° ✨Visual Studio Code✨ /ahmyzsh zsh"
# __WM_WINDOW_ROLE(STRING) = "browser-window"
# __WM_CLASS(STRING) = "code", "Code"
# _NET_WM_WINDOW_TYPE(ATOM) = _NET_WM_WINDOW_TYPE_NORMAL
# _NET_WM_PID(CARDINAL) = 26180
# __WM_CLIENT_MACHINE(STRING) = "corsair-one"
# __WM_PROTOCOLS(ATOM): protocols  WM_DELETE_WINDOW, _NET_WM_PING, _NET_WM_SYNC_REQUEST
# _KDE_NET_WM_USER_CREATION_TIME(CARDINAL) = 6929617

# --desktopfile <nom du fichier>
# --!+command
# --service <desktopfile>
# --application <desktopfile>
# --url <url>
# --window <regexp>
#  <class>
# --desktop <number>
# --currentdesktop
# --alldesktops
# --iconify
# --maximize
# --maximize-vertically
# --maximize-horizontally
# --fullscreen
# --type <type>
# --activate
# --ontop, --keepabove
# --onbottom, --keepbelow
# --skiptaskbar
# --skippager
# --qmljsdebugger <value>
# --platform <platformName[:options]>
# --platformpluginpath <path>
# --platformtheme <theme>
# --plugin <plugin>
# --qwindowgeometry <geometry>
# --qwindowicon <icon>
# --qwindowtitle <title>
# --reverse
# --session <session>

# Visual Studio Code 1.74.2

# Usage: code [options][paths...]

# To read from stdin, append '-' (e.g. 'ps aux | grep code | code -')

# Options
#   -d --diff <file> <file>                    Compare two files with each other.
#   -m --merge <path1> <path2> <base> <result> Perform a three-way merge by providing paths for two modified versions of a file, the common origin of both modified versions and the output file to save merge results.
#   -a --add <folder>                          Add folder(s) to the last active window.
#   -g --goto <file:line[:character]>          Open a file at the path on the specified line and character position.
#   -n --new-window                            Force to open a new window.
#   -r --reuse-window                          Force to open a file or folder in an already opened window.
#   -w --wait                                  Wait for the files to be closed before returning.
#   --locale <locale>                          The locale to use (e.g. en-US or zh-TW).
#   --user-data-dir <dir>                      Specifies the directory that user data is kept in. Can be used to open multiple distinct instances of Code.
#   --profile <profileName>                    Opens the provided folder or workspace with the given profile and associates the profile with the workspace. If the profile does not exist, a new empty one is created. A folder or
#                                              workspace must be provided for the profile to take effect.
#   -h --help                                  Print usage.

# Extensions Management
#   --extensions-dir <dir>              Set the root path for extensions.
#   --list-extensions                   List the installed extensions.
#   --show-versions                     Show versions of installed extensions, when using --list-extensions.
#   --category <category>               Filters installed extensions by provided category, when using --list-extensions.
#   --install-extension <ext-id | path> Installs or updates an extension. The argument is either an extension id or a path to a VSIX. The identifier of an extension is '${publisher}.${name}'. Use '--force' argument to update to
#                                       latest version. To install a specific version provide '@${version}'. For example: 'vscode.csharp@1.2.3'.
#   --pre-release                       Installs the pre-release version of the extension, when using --install-extension
#   --uninstall-extension <ext-id>      Uninstalls an extension.
#   --enable-proposed-api <ext-id>      Enables proposed API features for extensions. Can receive one or more extension IDs to enable individually.

# Troubleshooting
#   -v --version                    Print version.
#   --verbose                       Print verbose output (implies --wait).
#   --log <level>                   Log level to use. Default is 'info'. Allowed values are 'critical', 'error', 'warn', 'info', 'debug', 'trace', 'off'. You can also configure the log level of an extension by passing extension
#                                   id and log level in the following format: '${publisher}.${name}:${logLevel}'. For example: 'vscode.csharp:trace'. Can receive one or more such entries.
#   -s --status                     Print process usage and diagnostics information.
#   --prof-startup                  Run CPU profiler during startup.
#   --disable-extensions            Disable all installed extensions.
#   --disable-extension <ext-id>    Disable an extension.
#   --sync <on | off>               Turn sync on or off.
#   --inspect-extensions <port>     Allow debugging and profiling of extensions. Check the developer tools for the connection URI.
#   --inspect-brk-extensions <port> Allow debugging and profiling of extensions with the extension host being paused after start. Check the developer tools for the connection URI.
#   --disable-gpu                   Disable GPU hardware acceleration.
#   --max-memory <memory>           Max memory size for a window (in Mbytes).
#   --telemetry                     Shows all telemetry events which VS code collects.

# Subcommands
#   tunnel       Make the current machine accessible from vscode.dev or other machines through a secure tunnel
