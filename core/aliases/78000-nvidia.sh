#!/usr/bin/env bash

alias DynamicDithering='DitheringDynamic'
alias StaticDithering='DitheringStatic'
alias TemporalDithering='DitheringTemporal'

alias imagePerformNormal='OpenGLImagePerform'
alias imagePerformHigh='OpenGLImagePerformHigh'
alias imageQualityNormal='OpenGLImageQuality'
alias imageQualityHigh='OpenGLImageQualityHigh'

# export XDG_RUNTIME_DIR='/home/luxcium/nvidia-tmp'
# export NVIDIA_CONF='/home/luxcium/.nvidia-settings-rc'
# alias nvidia-conf='nvidia-settings -i -V --write-config --config=${NVIDIA_CONF} &'
# alias nvidia-loadconf='nvidia-settings --load-config-only'

# nvidia-settings --help

# nvidia-settings:  version 525.78.01
#   The NVIDIA Settings tool.

#   This program is used to configure the NVIDIA Linux graphics driver.
#   For more detail, please see the nvidia-settings(1) man page.

# nvidia-settings [options]

#   -v, --version
#       Print the nvidia-settings version and exit.

#   -h, --help
#       Print usage information and exit.

#   --config=CONFIG
#       Use the configuration file CONFIG rather than the default ~/.nvidia-settings-rc

#   -c CTRL-DISPLAY, --ctrl-display=CTRL-DISPLAY
#       Control the specified X display.  If this option is not given, then nvidia-settings will control the display specified by '--display'; if that is not given, th
#       en the $DISPLAY environment variable is used.

#   -l, --load-config-only
#       Load the configuration file, send the values specified therein to the X server, and exit.  This mode of operation is useful to place in your xinitrc file, for
#       example.

#   -n, --no-config
#       Do not load the configuration file.  This mode of operation is useful if nvidia-settings has difficulties starting due to problems with applying settings in th
#       e configuration file.

#   -r, --rewrite-config-file
#       Write the X server configuration to the configuration file, and exit, without starting the graphical user interface.  See EXAMPLES section.

#   -V VERBOSE, --verbose=VERBOSE
#       Controls how much information is printed.  Valid values are 'none' (do not print status messages), 'errors' (print error messages), 'deprecations' (print error
#       and deprecation messages), 'warnings' (print error, deprecation, and warning messages), and 'all' (print error, deprecation, warning and other informational me
#       ssages).  By default, 'deprecations' is set.

#   -a ASSIGN, --assign=ASSIGN
#       The ASSIGN argument to the '--assign' command line option is of the form:

#         {DISPLAY}/{attribute name}[{display devices}]={value}

#       This assigns the attribute {attribute name} to the value {value} on the X Display {DISPLAY}.  {DISPLAY} follows the usual {host}:{display}.{screen} syntax of t
#       he DISPLAY environment variable and is optional; when it is not specified, then it is implied following the same rule as the --ctrl-display option.  If the X s
#       creen is not specified, then the assignment is made to all X screens.  Note that the '/' is only required when {DISPLAY} is present.

#       {DISPLAY} can additionally include a target specification to direct an assignment to something other than an X screen.  A target specification is contained wit
#       hin brackets and consists of a target type name, a colon, and the target id.  The target type name can be one of "screen", "gpu", "framelock", "fan", "thermals
#       ensor", "svp", or "dpy"; the target id is the index into the list of targets (for that target type).  The target specification can be used in {DISPLAY} whereve
#       r an X screen can be used, following the syntax {host}:{display}[{target_type}:{target_id}].  See the output of

#         nvidia-settings -q all

#       for information on which target types can be used with which attributes.  See the output of

#          nvidia-settings -q screens -q gpus -q framelocks -q fans -q thermalsensors -q svps -q dpys

#       for lists of targets for each target type.

#       The [{display devices}] portion is also optional; if it is not specified, then the attribute is assigned to all display devices.

#       Some examples:

#         -a FSAA=5
#         -a localhost:0.0/DigitalVibrance[CRT-0]=0
#         --assign="SyncToVBlank=1"
#         -a [gpu:0]/DigitalVibrance[DFP-1]=63

#   -q QUERY, --query=QUERY
#       The QUERY argument to the '--query' command line option is of the form:

#         {DISPLAY}/{attribute name}[{display devices}]

#       This queries the current value of the attribute {attribute name} on the X Display {DISPLAY}.  The syntax is the same as that for the '--assign' option, without
#       '={value}'; specify '-q screens', '-q gpus', '-q framelocks', '-q fans', '-q thermalsensors', '-q svps', or '-q dpys' to query a list of X screens, GPUs, Frame
#       Lock devices, Visual Computing Systems, Devices, Fans, Thermal Sensors, 3D Vision Pro Transceivers, or Display Devices, respectively, that are present on the X
#       Display {DISPLAY}.  Specify '-q all' to query all attributes.

#   -t, --terse
#       When querying attribute values with the '--query' command line option, only print the current value, rather than the more verbose description of the attribute,
#       its valid values, and its current value.

#   -d, --display-device-string
#       When printing attribute values in response to the '--query' option, if the attribute value is a display device mask, print the value as a list of display devic
#       es (e.g., "CRT-0, DFP-0"), rather than a hexadecimal bit mask (e.g., 0x00010001).

#   -g, --glxinfo
#       Print GLX Information for the X display and exit.

#   -E, --eglinfo
#       Print EGL Information for the X display and exit.

#   -e DESCRIBE, --describe=DESCRIBE
#       Prints information about a particular attribute.  Specify 'all' to list the descriptions of all attributes.  Specify 'list' to list the attribute names without
#       a descriptions.

#   -p PAGE, --page=PAGE
#       The PAGE argument to the '--page' commandline option selects a particular page in the nvidia-settings user interface to display upon starting nvidia-settings.
#       Valid values are the page names in the tree view on the left side of the nvidia-settings user interface; e.g.,

#         --page="X Screen 0"

#       Because some page names are not unique (e.g., a "PowerMizer" page is present under each GPU), the page name can optionally be prepended with the name of the pa
#       rent X Screen or GPU page, followed by a comma.  E.g.,

#         --page="GPU 0 - (Quadro 6000), PowerMizer"

#       The first page with a name matching the PAGE argument will be used.  By default, the "System Information" page is displayed.

#   -L, --list-targets-only
#       When performing an attribute query (from the '--query' command line option) or an attribute assignment (from the '--assign' command line option or when loading
#       an ~/.nvidia-settings-rc file), nvidia-settings identifies one or more targets on which to query/assign the attribute.

#       The '--list-targets-only' option will cause nvidia-settings to list the targets on which the query/assign operation would have been performed, without actually
#       performing the operation(s), and exit.

#   -w, --write-config, --no-write-config
#       Save the configuration file on exit (enabled by default).

#   -i, --use-gtk2
#       Force nvidia-settings to use the GTK+ 2 library for the graphical user interface if a user interface is required. This option is only available on systems wher
#       e nvidia-settings supports both the GTK+ 2 and GTK+ 3 user interfaces.

#   -I GTK-LIBRARY, --gtk-library=GTK-LIBRARY
#       Specify the graphical user interface library to use if a nvidia-settings user interface is required. This value may be the exact location of the library or it
#       may be the directory containing the appropriately named library. If this is the exact location, the 'use-gtk2' option is ignored.
