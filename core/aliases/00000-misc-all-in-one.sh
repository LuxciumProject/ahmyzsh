eval "$(gh completion -s zsh)"
export NMON="mknd.jJ"


# h = This help
alias monhelp="sudo nice -n -15 ionice -c 1 -n 3 env NMON=h nmon -a"

# r = Resources OS & Proc
alias monres="sudo nice -n -15 ionice -c 1 -n 3 env NMON=r nmon -a"

# c = CPU Util  C = wide view
alias moncpu="sudo nice -n -15 ionice -c 1 -n 3 env NMON=c nmon -a"
alias monccpu="sudo nice -n -15 ionice -c 1 -n 3 env NMON=C nmon -a"

# l = longer term CPU averages
alias monlcpu="sudo nice -n -15 ionice -c 1 -n 3 env NMON=l nmon -a"

# m = Memory & Swap    L=Huge
alias monmem="sudo nice -n -15 ionice -c 1 -n 3 env NMON=m nmon -a"

# V = Virtual Memory
alias monvirt="sudo nice -n -15 ionice -c 1 -n 3 env NMON=V nmon -a"

# n = Network
alias monnetwork="sudo nice -n -15 ionice -c 1 -n 3 env NMON=n nmon -a"

# N = NFS
alias monnfs="sudo nice -n -15 ionice -c 1 -n 3 env NMON=N nmon -a"


#
# d = Disk I/O Graphs  D=Stats
alias mondisk="sudo nice -n -15 ionice -c 1 -n 3 env NMON=d nmon -a"
alias mondiskstats="sudo nice -n -15 ionice -c 1 -n 3 env NMON=D nmon -a"

# o = Disks %Busy Map
#

# k = Kernel stats & loadavg
alias monkern="sudo nice -n -15 ionice -c 1 -n 3 env NMON=k nmon -a"

# j = Filesystem Usage J=reduced
alias monfs="sudo nice -n -15 ionice -c 1 -n 3 env NMON=jJ nmon -a"
alias monfsall="sudo nice -n -15 ionice -c 1 -n 3 env NMON=j nmon -a"


#
# M = MHz by thread & CPU
alias monmhz="sudo nice -n -15 ionice -c 1 -n 3 env NMON=M nmon -a"

#


# t = TopProcess 1=Priority/Nice/State
# ReOrder by: 3=CPU 4=RAM 5=I/O
alias montopnice="sudo nice -n -15 ionice -c 1 -n 3 env NMON=t1 nmon -a"
alias montopproc="sudo nice -n -15 ionice -c 1 -n 3 env NMON=t3 nmon -a"
alias montopmem="sudo nice -n -15 ionice -c 1 -n 3 env NMON=t4 nmon -a"
alias montopio="sudo nice -n -15 ionice -c 1 -n 3 env NMON=t5 nmon -a"

# u = TopProc with command line
# ReOrder by: 3=CPU 4=RAM 5=I/O
alias montopniceu="sudo nice -n -15 ionice -c 1 -n 3 env NMON=t1u nmon -a"
alias montopprocu="sudo nice -n -15 ionice -c 1 -n 3 env NMON=t3u nmon -a"
alias montopmemu="sudo nice -n -15 ionice -c 1 -n 3 env NMON=t4u nmon -a"
alias montopiou="sudo nice -n -15 ionice -c 1 -n 3 env NMON=t5u nmon -a"





# alias nmonmmm="sudo nice -n -15 ionice -c 1 -n 3 env NMON=MMM nmon -a"
# alias nmonV="sudo nice -n -15 ionice -c 1 -n 3 env NMON=V nmon -a"
# alias nmonN="sudo nice -n -15 ionice -c 1 -n 3 env NMON=N nmon -a"
# alias nmonr="sudo nice -n -15 ionice -c 1 -n 3 env NMON=r nmon -a"
# alias nmono="sudo nice -n -15 ionice -c 1 -n 3 env NMON=o nmon -a"
# alias monddisk="sudo nice -n -15 ionice -c 1 -n 3 env NMON=d nmon -a"
# alias mondisk="sudo nice -n -15 ionice -c 1 -n 3 env NMON=d. nmon -a"

# nmon -h
# Hint for nmon version 16k
#         Full Help Info : nmon -h

#         On-screen Stats: nmon
#         Data Collection: nmon -f [-s <seconds>] [-c <count>] [-t|-T]
#         Capacity Plan  : nmon -x
# Interactive-Mode:
#         Read the Welcome screen & at any time type: "h" for more help
#         Type "q" to exit nmon

# For Data-Collect-Mode
#         -f            Must be the first option on the line (switches off interactive mode)
#                       Saves data to a CSV Spreadsheet format .nmon file in then local directory
#                       Note: -f sets a defaults -s300 -c288    which you can then modify
#         Further Data Collection Options:
#         -s <seconds>  time between data snapshots
#         -c <count>    of snapshots before exiting
#         -t            Includes Top Processes stats (-T also collects command arguments)
#         -x            Capacity Planning=15 min snapshots for 1 day. (nmon -ft -s 900 -c 96)
# ---- End of Hints
# ---- Full Help Information for nmon 16k

# For Interactive and Data Collection Mode:
#         User Defined Disk Groups (DG) - This works in both modes
#         It is a work around Linux issues, where disks & partitions are mixed up in /proc files
#         & drive driver developers use bizarre device names, making it trick to separate them.
#         -g <filename> Use this file to define the groups
#                       - On each line: group-name <disks-list>   (space separated list)
#                       - Example line: database sdb sdc sdd sde
#                       - Up to 64 disk groups, 512 disks per line
#                       - Disks names can appear more than one group
#         -g auto       - Will generate a file called "auto" with just disks from "lsblk|grep disk" output
#          For Interactive use define the groups then type: g or G
#          For Data Capture defining the groups switches on data collection

# Data-Collect-Mode = spreadsheet format (i.e. comma separated values)
#         Note: Use only one of f, F, R, x, X or z to switch on Data Collection mode
#         Note: Make it the first argument then use other options to modify the defaults
#         Note: Don't collect data that you don't want - it just makes the files too large
#         Note: Too many snapshots = too much data and crashes Analyser and other tools
#         Note: 500 to 800 snapshots make a good graph on a normal size screen
#         Recommended normal minimal options: snapshots every 2 minutes all day:
#                 Simple capture:      nmon -f  -s 120 -c 720
#                 With Top Procs:      nmon -fT -s 120 -c 720
#                 Set the directory:   nmon -fT -s 120 -c 720 -m /home/nag/nmon
#                 Capture a busy hour: nmon -fT -s   5 -c 720 -m /home/nag/nmon

# For Data-Collect-Mode Options
#         -f            spreadsheet output format [note: default -s300 -c288]
#                          output file is <hostname>_YYYYMMDD_HHMM.nmon
#         -F <filename> same as -f but user supplied filename
#                          Not recommended as the default file name is perfect
#         The other options in alphabetical order:
#         -a            Include Accelerator GPU stats
#         -b            Online only: for black and white mode (switch off colour)
#         -c <number>   The number of snapshots before nmon stops
#         -d <disks>    To set the maximum number of disks [default 256]
#                       Ignores disks if the systems has 100's of disk or the config is odd!
#         -D            Use with -g to add the Disk Wait/Service Time & in-flight stats
#         -f and -F     See above
#         -g <filename> User Defined Disk Groups (see above) - Data Capture: Generates  BBBG & DG lines
#         -g auto       See above but makes the file "auto" for you of just the disks like sda etc.
#         -h            This help output
#         -I <percent>  Set the ignore process & disks busy threshold (default 0.1%)
#                       Don't save or show proc/disk using less than this percent
#         -J            Switch-off Journel Filesystem stats collection (can causes issues with automound NFS)
#         -l <dpl>      Disks per line in data capture to avoid spreadsheet width issues. Default 150. EMC=64.
#         -m <directory> nmon changes to this directory before saving to file
#                       Useful when starting nmon via cron
#         -M              Adds MHz stats for each CPU thread. Some POWER8 model CPU cores can be different frequencies
#         -N            Include NFS Network File System for V2, V3 and V4
#         -p            nmon outputs the PID when it starts. Useful in scripts to capture the PID for a later safe stop.
#         -r <runname>  Use in a benchmark to record the run details for later analysis [default hostname]
#         -R              Old rrdtool format used by some - may be removed in the future. If you use this email Nigel
#         -s <seconds>  Time between snap shots - with "-c count" decides duration of the data capture
#         -t            Include Top Processes in the output
#         -T            As -t plus it saves command line arguments in UARG section
#         -U            Include the Linux 10 CPU utilisation stats (CPUUTIL lines in the file)
#         -V            Print nmon version & exit immediately

#         To manually load nmon files into a spreadsheet:
#                 sort -A *nmon >stats.csv
#                 Transfer the stats.csv file to your PC
#                 Start spreadsheet & then Open with type=comma-separated-value ASCII file
#                 This puts every datum in a different cell
#                 Now select the data of one type (same 1st column) and graph it
#                 The nmon Analyser & other tools do not need the file sorted.

# Capacity Planning mode - use cron to run each day
#         -x            Sensible spreadsheet output for one day
#                       Every 15 mins for 1 day ( i.e. -ft -s 900 -c 96)
#         -X            Sensible spreadsheet output for busy hour
#                       Every 30 secs for 1 hour ( i.e. -ft -s 30 -c 120)
#         -z            Like -x but the output saved in /var/perf/tmp assuming root user

# Interactive Mode Keys in Alphabetical Order
#     Start nmon then type the letters below to switch on & off particular stats
#     The stats are always in the same order on-screen
#     To see more stats: make the font smaller or use two windows

#         Key --- Toggles on off to control what is displayed ---
#         b   = Black and white mode (or use -b command line option)
#         c   = CPU Utilisation stats with bar graphs (CPU core threads)
#         C   = CPU Utilisation as above but concise wide view (up to 192 CPUs)
#         d   = Disk I/O Busy% & Graphs of Read and Write KB/s
#         D   = Disk I/O Numbers including Transfers, Average Block Size & Peaks (type: 0 to reset)
#         g   = User Defined Disk Groups            (assumes -g <file> when starting nmon)
#         G   = Change Disk stats (d) to just disks (assumes -g auto   when starting nmon)
#         h   = This help information
#         j   = File Systems including Journal File Systems
#         J   =  Reduces "j" output by removing unreal File Systems
#         k   = Kernel stats Run Queue, context-switch, fork, Load Average & Uptime
#         l   = Long term Total CPU (over 75 snapshots) via bar graphs
#         L   = Large and =Huge memory page stats
#         m   = Memory & Swap stats
#         M   = MHz for machines with variable frequency 1st=Threads 2nd=Cores 3=Graphs
#         n   = Network stats & errors (if no errors it disappears)
#         N   = NFS - Network File System
#               1st NFS V2 & V3, 2nd=NFS4-Client & 3rd=NFS4-Server
#         o   = Disk I/O Map (one character per disk pixels showing how busy it is)
#               Particularly good if you have 100's of disks
#         q   = Quit
#         r   = Resources: Machine type, name, cache details & OS version & Distro + LPAR
#         t   = Top Processes: select the data & order 1=Basic, 3=Perf 4=Size 5=I/O=root only
#         u   = Top Process with command line details
#         U   = CPU utilisation stats - all 10 Linux stats:
#               user, user_nice, system, idle, iowait, irq, softirq, steal, guest, guest_nice
#         v   = Experimental Verbose mode - tries to make recommendations
#         V   = Virtual Memory stats

#         Key --- Other Interactive Controls ---
#         +   = Double the screen refresh time
#         -   = Halves the screen refresh time
#         0   = Reset peak counts to zero (peak highlight with ">")
#         1   = Top Processes mode 1 Nice, Priority, Status
#         3   = Top Processes mode 3 CPU, Memory, Faults
#         4   = Top Processes mode 4 as 3 but order by memory
#         5   = Top Processes mode 5 as 3 but order by I/O (if root user)
#         6   = Highlights 60% row on Long Term CPU view
#         7   = Highlights 70% row on Long Term CPU view
#         8   = Highlights 80% row on Long Term CPU view
#         9   = Highlights 90% row on Long Term CPU view
#         .   = Minimum mode i.e. only busy disks and processes shown
#         space = Refresh screen now

# Interactive Start-up Control
#         If you find you always type the same toggles every time you start
#         then place them in the NMON shell variable. For example:
#          export NMON=cmdrtn

# Other items for Interactive and Data Collection mode:
#         a) To limit the processes nmon lists (online and to a file)
#             either set NMONCMD0 to NMONCMD63 to the program names
#             or use -C cmd:cmd:cmd etc. example: -C ksh:vi:syncd
# Other items for Data Collection mode:
#         b) To you want to stop nmon use: kill -USR2 <nmon-pid>
#         c) Use -p and nmon outputs the background process pid
#         d) If you want to pipe nmon output to other commands use a FIFO:
#             mkfifo /tmp/mypipe
#             nmon -F /tmp/mypipe &
#             tail -f /tmp/mypipe
#         e) If nmon fails please report it with:
#            1) nmon version like: 16k
#            2) the output of: cd /proc; cat cpuinfo meminfo partitions stat vmstat
#            3) some clue of what you were doing
#            4) I may ask you to run the debug version or collect data files
#         f) If box & line characters are letters then check: terminal emulator & $TERM
#         g) External Data Collectors - nmon will execute a command or script at each snapshot time
#            They must output to a different file which is merge afterwards with the nmon output
#            Set the following shell variables:
#             NMON_START  = script to generate CVS Header test line explaining the columns
#                  Generate: TabName,DataDescription,Column_name_and_units,Column_name_and_units ...
#             NMON_SNAP   = script for each snapshots data, the parameter is the T0000 snapshot number
#                  Generate: TabName,T00NN,Data,Data,Data ...
#             NMON_END    = script to clean up or finalise the data
#             NMON_ONE_IN = call NMON_START less often (if it is heavy in CPU terms)
#             Once capture done: cat nmon-file data-file >merged-file ; ready for Analyser or other tools
#             The nmon Analyser will automatically do its best to graph the data on a new Tab sheet

#         Developer: Nigel Griffiths      See http://nmon.sourceforge.net
#         Feedback welcome - On the current release only
#         No warranty given or implied. (C) Copyright 2009 Nigel Griffiths GPLv3
export EDITOR="nano"
IS_ZSH_="$(ps -o comm= -p $$ | grep 'zsh')"
IS_BASH_="$(ps -o comm= -p $$ | grep 'bash')"

alias iszsh="([[ -n ${IS_ZSH_:-''} ]] && (echo 'zsh'; exit 0) || (echo 'not zsh'; exit 1))"
alias isbash="([[ -n ${IS_BASH_:-''} ]] && (echo 'bash'; exit 0) || (echo 'not bash'; exit 1))"

alias iszsh_="([[ -n ${IS_ZSH_:-''} ]] && (exit 0) || (exit 1))"
alias isbash_="([[ -n ${IS_BASH_:-''} ]] && (exit 0) || (exit 1))"
# function getstamp8() {
#   echo -n "Z$(sha224hmac <<<${1:-$(date +%D%s%N)} | cut -c -8 | tr \[a-z\] \[A-Z\])x"
# }

function getstamp4() {
  echo -n $(sha224hmac <<<$(date +%D%s%N) | cut -c -4 | tr \[a-z\] \[A-Z\])
}

function getstamp6() {
  echo -n \#$(sha224hmac <<<$(date +%D%s%N) | cut -c -6 | tr \[a-z\] \[A-Z\])
}

function getstamp8a() {
  echo -n "$(getstamp4)-$(getstamp4)x"
}

function getstamp8d() {
  echo -n "$(getdatestamp)-$(getstamp4)x"
}

function getstamp8dy() {
  echo -n "$(getdatestampy)-$(getstamp4)x"
}

function getstamp8dyy() {
  echo -n "$(getdatestampyy)-$(getstamp4)"
}

function getstamp8dtyy() {
  echo -n "$(getdatestampyy)-$(gettimestamp)-$(getstamp4)"
}

function getdatestamp() {
  echo -n $(date +%m%d)
}

function getdatestampy() {
  echo -n $(date +%y%m%d)
}

function getdatestampyy() {
  echo -n $(date +%Y%m%d)
}

function getdatestampu() {
  echo -n $(date --utc +%m%d)
}

function getdatestampyu() {
  echo -n $(date --utc +%y%m%d)
}

function gettimestamp() {
  echo -n $(date +%H%M%S)
}

function gettimestampz() {
  echo -n $(date +%H%M%S%Z)
}

function gettimestampu() {
  echo -n $(date --utc +%H%M%S%Z)
}

function gettimeshortstampu() {
  echo -n $(date --utc +%H%M%S)
}

function getepochstamp() {
  echo -n $(date +%s)
}

function getstamphelp() {
  echo "getstamp8"
  echo "getstamp4"
  echo "getstamp6"
  echo "getstamp8a"
  echo "getstamp8d"
  echo "getstamp8dy"
  echo "getstamp8dyy"
  echo "getstamp8dtyy"
  echo "getdatestamp"
  echo "getdatestampy"
  echo "getdatestampyy"
  echo "getdatestampu"
  echo "getdatestampyu"
  echo "gettimestamp"
  echo "gettimestampz"
  echo "gettimestampu"
  echo "gettimeshortstampu"
  echo "getepochstamp"
}
function init_functions() {
    function add_to_path_() {
        [ -z $1 ] || export PATH="${1}:${PATH}"
    }

    function affix_to_path_() {
        [ -z $1 ] || export PATH="${1}:${PATH}"
    }

    function perpend_to_path_() {
        [ -z $1 ] || export PATH="${1}:${PATH}"
    }

    function append_to_path_() {
        [ -z $1 ] || export PATH="${PATH}:${1}"
    }

    function timer_() {
        # local TIMER_NOW=$(/bin/date +%s%N)
        local MICROSEC='1000000'
        local TIMER_NOW=$(date +%s%N)
        local timecalc=$((${TIMER_NOW} - ${1:=TIMER_NOW}))
        local TIMER_VALUE=$((${timecalc} / ${MICROSEC}))
        if [ ${#TIMER_VALUE} = 0 ]; then
            local spacing_="    "
        elif [ ${#TIMER_VALUE} = 1 ]; then
            local spacing_="   "
        elif [ ${#TIMER_VALUE} = 2 ]; then
            local spacing_="  "
        elif [ ${#TIMER_VALUE} = 3 ]; then
            local spacing_=" "
        else
            local spacing_=""
        fi
        echo "${TIMER_VALUE}${spacing_}"
        return 0
    }

    function timer_now() {
        # local TIMER_NOW=$(/usr/bin/date +%s%N)
        # local TIMER_VALUE=$(((${TIMER_NOW} - ${TIMER_THEN}) / 1000000))
        timer_ "${TIMER_THEN}"
        # echo -n "${TIMER_VALUE} "
        # return 0
    }

    function timer_all() {
        # local TIMER_NOW=$(/usr/bin/date +%s%N)
        # local TIMER_VALUE=$(((${TIMER_NOW} - ${TIMER_ALL_THEN}) / 1000000))
        timer_ "${TIMER_ALL_THEN}"
        # echo -n "${TIMER_VALUE} "
    }

    function call_() {
        if [ -z $1 ]; then
            [ "${VERBOSA}" -gt 1 ] && echo "Error sourcing ' $1 ' no function call provided"
            return 1
        else
            TIMER_THEN=$(/usr/bin/date +%s%N)
            eval ${1}
            returnval=$?
            [ "${VERBOSA}" -gt 0 ] && echo "${BEGIN_FUNCTION} $(timer_now) '${1}()' ${END_FUNCTION}"
            return "${returnval}"
        fi
    }

    function source_() {
        if [ -z $1 ]; then
            [ "${VERBOSA}" -gt 1 ] && echo "Error sourcing ' $1 ' no file provided"
            return 1
        else
            TIMER_THEN=$(/usr/bin/date +%s%N)
            if [[ -f $1 ]]; then
                if [[ -r $1 ]]; then
                    source "${1}"
                    [ "${VERBOSA}" -gt 0 ] && echo "${BEGIN_SOURCING} $(timer_now) ${1} ${END_SOURCING}"
                    return 0
                else
                    [ "${VERBOSA}" -gt 3 ] && echo "Error sourcing '$1' file provided is not redable"
                    return 3
                fi
            else
                [ "${VERBOSA}" -gt 2 ] && echo "Error sourcing '$1' file provided does not exist"
                return 2
            fi
        fi
    }

    function load_() {
        source_ "${1}" &&
            call_ ${2}
    }
}
function parse_options() {
    o_port=(-p 9999)
    o_root=(-r WWW)
    o_log=(-d ZWS.log)
    zparseopts -K -- p:=o_port r:=o_root l:=o_log h=o_help
    if [[ $? != 0 || "$o_help" != "" ]]; then
        echo Usage: $(basename "$0") "[-p PORT] [-r DIRECTORY]"
        exit 1
    fi
    port=$o_port[2]
    root=$o_root[2]
    log=$o_log[2]
    if [[ $root[1] != '/' ]]; then root="$PWD/$root"; fi
}

function mkramdir() {
    # LASTVIRTUALRAM
    if [ -d "${MYVIRTUALRAM_PATH}" ]; then

        LASTVIRTUALRAM="${MYVIRTUALRAM_PATH}/${1}"
        mkdir -p "${LASTVIRTUALRAM}"
        chmod 1777 "${LASTVIRTUALRAM}"
        # cd "${LASTVIRTUALRAM}"
        # ln -s LASTVIRTUALRAM -v
        export LASTVIRTUALRAM

    fi
    # echo "'\$@:' $@, \n'\$1:' $1, \n'\$2:' $2, \n'\$3:' $3, \n'\$4:' $4"

}

function add_to_path_() {
    [ -z $1 ] || export PATH="${1}:${PATH}"
}

function affix_to_path_() {
    [ -z $1 ] || export PATH="${1}:${PATH}"
}

function perpend_to_path_() {
    [ -z $1 ] || export PATH="${1}:${PATH}"
}

function append_to_path_() {
    [ -z $1 ] || export PATH="${PATH}:${1}"
}

function timer_() {
    # local TIMER_NOW=$(/bin/date +%s%N)
    local MICROSEC='1000000'
    local TIMER_NOW=$(date +%s%N)
    local timecalc=$((${TIMER_NOW} - ${1:=TIMER_NOW}))
    local TIMER_VALUE=$((${timecalc} / ${MICROSEC}))
    if [ ${#TIMER_VALUE} = 0 ]; then
        local spacing_="    "
    elif [ ${#TIMER_VALUE} = 1 ]; then
        local spacing_="   "
    elif [ ${#TIMER_VALUE} = 2 ]; then
        local spacing_="  "
    elif [ ${#TIMER_VALUE} = 3 ]; then
        local spacing_=" "
    else
        local spacing_=""
    fi
    echo "${TIMER_VALUE}${spacing_}"
    return 0
}

function timer_now() {
    # local TIMER_NOW=$(/usr/bin/date +%s%N)
    # local TIMER_VALUE=$(((${TIMER_NOW} - ${TIMER_THEN}) / 1000000))
    timer_ "${TIMER_THEN}"
    # echo -n "${TIMER_VALUE} "
    # return 0
}

function timer_all() {
    # local TIMER_NOW=$(/usr/bin/date +%s%N)
    # local TIMER_VALUE=$(((${TIMER_NOW} - ${TIMER_ALL_THEN}) / 1000000))
    timer_ "${TIMER_ALL_THEN}"
    # echo -n "${TIMER_VALUE} "
}

# function call_() {
#     if [ -z $1 ]; then
#         [ "${VERBOSA}" -gt 1 ] && echo "Error sourcing ' $1 ' no function call provided"
#         return 1
#     else
#         TIMER_THEN=$(/usr/bin/date +%s%N)
#         eval ${1}
#         returnval=$?
#         [ "${VERBOSA}" -gt 0 ] && echo "${BEGIN_FUNCTION} $(timer_now) '${1}()' ${END_FUNCTION}"
#         return "${returnval}"
#     fi
# }

# function source_() {
#     if [ -z $1 ]; then
#         [ "${VERBOSA}" -gt 1 ] && echo "Error sourcing ' $1 ' no file provided"
#         return 1
#     else
#         TIMER_THEN=$(/usr/bin/date +%s%N)
#         if [[ -f $1 ]]; then
#             if [[ -r $1 ]]; then
#                 source "${1}"
#                 [ "${VERBOSA}" -gt 0 ] && echo "${BEGIN_SOURCING} $(timer_now) ${1} ${END_SOURCING}"
#                 return 0
#             else
#                 [ "${VERBOSA}" -gt 3 ] && echo "Error sourcing '$1' file provided is not redable"
#                 return 3
#             fi
#         else
#             [ "${VERBOSA}" -gt 2 ] && echo "Error sourcing '$1' file provided does not exist"
#             return 2
#         fi
#     fi
# }

# function load_() {
#     source_ "${1}" &&
#     call_ ${2}
# }

function load_functions_definitions() {

    function source_notice_now() {
        source_ "${CUSTOM_ZSH}/notice.sh"
    }

    function update() {
        (update_ >/dev/null)
        (ls node_modules 1>/dev/null 2>&1)
        if [ $? ]; then
            if [ -f yarn.lock ]; then
                S1='package-lock.json'
                [ -f "${S1}" ] && (rm "${S1}" 1>/dev/null 2>&1)

                S1='yarn-error.log'
                [ -f "${S1}" ] && (rm "${S1}" 1>/dev/null 2>&1)

                S1='yarn-error.log'
                [ -f "${S1}" ] && (rm "${S1}" 1>/dev/null 2>&1)

                S1='pnpm-lock.yaml'
                [ -f "${S1}" ] && (rm "${S1}" 1>/dev/null 2>&1)

                S1='node_modules/'
                [ -d "${S1}" ] && (rm -r "${S1}" 1>/dev/null 2>&1)

                (yarn install --force --audit --link-duplicates --check-files)

                [ -f '.yarnclean' ] && (yarn autoclean --force) || (yarn autoclean --init && yarn autoclean --force)

                # yarn add -D eslint@latest typescript@latest ts-node@latest @types/node@latest
                # yarn global add eslint@latest typescript@latest ts-node@latest @types/node@latest
                # install-peerdeps -Y -D @typescript-eslint/eslint-plugin@latest
                # install-peerdeps -Y -D @typescript-eslint/parser@latest
                # install-peerdeps -Y -D eslint-config-airbnb-base@latest
                # install-peerdeps -Y -D eslint-config-airbnb-typescript@latest
                # install-peerdeps -Y -D eslint-config-airbnb@latest
                # install-peerdeps -Y -D eslint-config-prettier@latest
                # install-peerdeps -Y -D eslint-plugin-import@latest
                # install-peerdeps -Y -D eslint-plugin-jsx-a11y@latest
                # install-peerdeps -Y -D eslint-plugin-react-hooks@latest
                # install-peerdeps -Y -D eslint-plugin-react@latest
                # install-peerdeps -Y -D eslint-plugin-node@latest
                # install-peerdeps -Y -D eslint-plugin-unicorn@latest

                #                 warning "eslint-config-airbnb-typescript > eslint-config-airbnb@18.1.0" has unmet peer dependency "eslint-plugin-import@^2.20.1".
                # warning "eslint-config-airbnb-typescript > eslint-config-airbnb@18.1.0" has unmet peer dependency "eslint-plugin-jsx-a11y@^6.2.3".
                # warning "eslint-config-airbnb-typescript > eslint-config-airbnb@18.1.0" has unmet peer dependency "eslint-plugin-react@^7.19.0".
                # warning "eslint-config-airbnb-typescript > eslint-config-airbnb@18.1.0" has unmet peer dependency "eslint-plugin-react-hooks@^2.5.0 || ^1.7.0".
                # warning "eslint-config-airbnb-typescript > eslint-config-airbnb-base@14.1.0" has unmet peer dependency "eslint-plugin-import@^2.20.1".
            fi
        fi
        return 0
    }
    function update_() {
        (fnm-update_ 2>/dev/null)
        (yarn-update_ 2>/dev/null)
        (eslint_global 2>/dev/null)
        (conda-update_ 2>/dev/null)
        return 0
    }

    function cabal-update_() {
        cabal update &
        # conda update --all -y &
        return 0
    }

    # autoload conda-update_
    # alias conda-update=conda-update_
    function conda-update_() {
        conda update conda -y &
        conda update --all -y &
        return 0
    }

    function fnm-update_() {
        fnm install latest-dubnium &
        fnm install latest-carbon &
        fnm install latest-boron &
        fnm install latest-argon &
        fnm install latest-erbium && fnm use latest-erbium && fnm default $(node -v) && fnm install latest &
        return 0

    }

    # autoload yarn-update_
    # alias yarn-update=yarn-update_
    function yarn-update_() {
        yarn global add \
            create-react-app@latest \
            eslint-config-prettier@latest \
            eslint@latest \
            prettier@latest \
            install-peerdeps@latest \
            npm@latest \
            pnpm@latest \
            serve@latest \
            shelljs@latest \
            shx@latest \
            ts-node@latest \
            typescript@latest \
            yarn@latest &
        return 0

    }

    function eslint_global() {
        npx install-peerdeps -g @typescript-eslint/parser@latest
        npx install-peerdeps -g @typescript-eslint/eslint-plugin@latest
        npx install-peerdeps -g eslint-config-airbnb-base@latest
        npx install-peerdeps -g eslint-config-prettier@latest
        npx install-peerdeps -g eslint-plugin-flowtype@latest
        npx install-peerdeps -g eslint-plugin-import@latest
        npx install-peerdeps -g eslint-plugin-jest@latest
        npx install-peerdeps -g eslint-plugin-jsx-a11y@latest
        npx install-peerdeps -g eslint-plugin-node@latest
        npx install-peerdeps -g eslint-plugin-prettier@latest
        npx install-peerdeps -g eslint-plugin-react-hooks@latest
        npx install-peerdeps -g eslint-plugin-react@latest
        npx install-peerdeps -g eslint-plugin-unicorn@latest
        yarn-update_ &
        return 0

    }

    #     /home/luxcium/.fnm/node-versions/v12.18.2/installation/lib
    # ├── @typescript-eslint/parser@3.6.1
    # ├── UNMET PEER DEPENDENCY eslint@^5.0.0 || ^6.0.0 || ^7.0.0
    # ├── npm@6.14.6
    # ├── pnpm@5.4.0
    # └── yarn@1.22.4

    # npm ERR! peer dep missing: eslint@^5.0.0 || ^6.0.0 || ^7.0.0, required by @typescript-eslint/parser@3.6.1
    # npm ERR! peer dep missing: eslint@*, required by @typescript-eslint/experimental-utils@3.6.1
    # npm ERR! peer dep missing: typescript@>=2.8.0 || >= 3.2.0-dev || >= 3.3.0-dev || >= 3.4.0-dev || >= 3.5.0-dev || >= 3.6.0-dev || >= 3.6.0-beta || >= 3.7.0-dev || >= 3.7.0-beta, required by tsutils@3.17.1
    # yarn global v1.22.4
    # info "create-react-app@3.4.1" has binaries:
    #    - create-react-app
    # info "eslint@7.5.0" has binaries:
    #    - eslint
    # info "eslint-config-prettier@6.11.0" has binaries:
    #    - eslint-config-prettier-check
    # info "install-peerdeps@2.0.3" has binaries:
    #    - install-peerdeps
    # info "npm@6.14.6" has binaries:
    #    - npm
    #    - npx
    # info "pnpm@5.4.0" has binaries:
    #    - pnpm
    #    - pnpx
    # info "prettier@2.0.5" has binaries:
    #    - prettier
    # info "serve@11.3.2" has binaries:
    #    - serve
    # info "shelljs@0.8.4" has binaries:
    #    - shjs
    # info "shx@0.3.2" has binaries:
    #    - shx
    # info "ts-node@8.10.2" has binaries:
    #    - ts-node
    #    - ts-script
    #    - ts-node-script
    #    - ts-node-transpile-only
    # info "typescript@3.9.7" has binaries:
    #    - tsc
    #    - tsserver
    # info "yarn@1.22.4" has binaries:
    #    - yarn
    #    - yarnpkg
    # Done in 0.48s.

    function tsu() {
        yarn add -D yarn@latest &&
            yarn add -D eslint@latest typescript@latest ts-node@latest @types/node@latest &
        yarn global add yarn@latest &&
            yarn global add eslint@latest typescript@latest ts-node@latest @types/node@latest &
    }
    function ts-nightly() {
        yarn add -D typescript@next ts-node@latest @types/node@latest tslib@latest &
        yarn global add typescript@next ts-node@latest @types/node@latest tslib@latest &
    }

    # autoload pw_
    # alias pw=pw_
    # function pw() {
    #     (pwd | lolcat "${@}")

    # }

    # autoload lsf_
    # alias lsf=lsf_
    # function lsf() {
    #     (
    #         local mypath="${@:-$(pwd)}"
    #         echo ''
    #         builtin cd "${mypath}"
    #         pw
    #         colorls --almost-all --gs -f
    #         pw
    #         echo ''
    #     )
    # }

    # autoload lsd_
    # alias lsd=lsd_
    # function lsd() {
    #     (
    #         local mypath="${@:-$(pwd)}"
    #         echo ''
    #         builtin cd "${mypath}"
    #         pw
    #         colorls --all -d
    #         pw
    #         echo ''
    #     )
    # }

    # autoload ll_
    # alias ll=ll_
    # function ll() {
    #     (

    #         local mypath="${@:-$(pwd)}"
    #         echo ''
    #         builtin cd "${mypath}"
    #         pw
    #         colorls -lA --sd --gs
    #         pw
    #         echo ''
    #     )
    # }

    # autoload lf_
    # alias lf=lf_
    # function lf() {
    #     (
    #         local mypath="${@:-$(pwd)}"
    #         echo ''
    #         builtin cd "${mypath}"
    #         pw
    #         colorls -lA --sf -f
    #         pw
    #         echo ''
    #     )
    # }

    # autoload ld_
    # alias ld=ld_
    # function ld() {
    #     (
    #         local mypath="${@:-$(pwd)}"
    #         echo ''
    #         builtin cd "${mypath}"
    #         pw
    #         colorls -lA --sd -d
    #         pw
    #         echo ''
    #     )
    # }

    # autoload lc_
    # alias lc=lc_
    # function lc() {
    #     (
    #         local mypath="${@:-$(pwd)}"
    #         builtin cd "${mypath}"
    #         colorls -a --sd --gs -S
    #         pw -ta -d 20
    #         echo ''
    #     )
    # }

    # autoload cls_
    # alias cls=cls_
    function cls() {
        print "${clearall}"
        pw

    }

    # autoload cd_
    # alias cd=cd_
    # unset -f cd
    function cd() {
        local catchupPATH=$(/bin/pwd)
        local tentativePath=${@:-${HOME}}
        local effectivePATH="$(builtin cd ${tentativePath} 2>/dev/null && echo -n "${tentativePath}" || echo -n ${catchupPATH})"
        local _MESSAGE=$(
            [[ "${effectivePATH}" = "${tentativePath}" ]] ||
                echo "ERROR: Path not found or not a directory cd back to ${effectivePATH}"
        )

        [[ "${effectivePATH}" = "${HOME}" ]] && [[ "${catchupPATH}" != "${HOME}" ]] &&
            echo "cd to $HOME"

        builtin cd "${effectivePATH}"
        echo ''
        echo -n "$LBOLD $FRD $_MESSAGE $RSET"
        echo ''
        [[ -x $(which lolcat) ]] && (pwd | lolcat) || ([[ -x $(which /bin/pwd) ]] && /bin/pwd)
        [[ -x $(which colorls) ]] && (colorls -lA --sd -d --gs) || ([[ -x $(which /bin/ls) ]] && /bin/ls --color=auto -hal)
        [[ -x $(which lolcat) ]] && (pwd | lolcat) || ([[ -x $(which /bin/pwd) ]] && /bin/pwd)
        echo -n "$LBOLD $FRD $_MESSAGE $RSET"
        echo ''

        [[ -z "$_MESSAGE" ]] || return 1

    }

    # brew configurations

    function perseus() {
        export WITH_ANACONDA=false
        reload_path && echo "The sleeping Medusa decapitated."
    }

    function medusa() {
        export WITH_ANACONDA=true
        reload_path && echo "Perseus turning to stone."
    }

    function brewdoc() {
        # FROM: (SOURCE) https://hashrocket.com/blog/posts/keep-anaconda-from-constricting-your-homebrew-installs
        # (C) 2018 HASHROCKET (used without permision)
        perseus
        command echo '>     UPDATING BREW  . . . '
        command brew update
        command echo '>     UPGRADING BREW  . . . '
        command brew upgrade
        command echo '>     Remove old symlinks  . . . '
        command brew cleanup --prune-prefix
        command echo ">     If nothing is returned to the terminal you're up-to-date  . . . "
        command brew outdated
        command echo '>     List forumlas that can be cleaned up  . . . '
        command brew cleanup -n
        command echo '>     Remove all old formulae from brew and cask  . . . '
        command brew cleanup
        command echo '>     Show the individual packages installed  . . . '
        command brew list
        command echo '>     Looking if everything is working correctly  . . . '
        command brew doctor
        command echo '>     UPGRADING NPM   . . . '
        npm install -g npm@latest
        command echo '>     UPGRADING YARN   . . . '
        npm install -g yarn@latest
        command echo '>     UPGRADING PNPM   . . . '
        npm install -g pnpm@latest
        # command echo '>     Will also uninstall && reinstall all Globals NPM and PNPM  . . . '
        # reinstallNPMGlobal
        medusa

    }

    function brew() {
        perseus
        command brew "$@"
        medusa
    }

    function brewx() {
        command brew "$@"
    }

    function ts-react-app() {
        npx create-react-app $1 --typescript
    }

    function git_add_comit_push() {
        git add .
        git commit -am "${1:=adding functionalities}"
        git push --tags --progress
        git push --all --progress
        git fetch
    }

    function ahmyzsh_git_update() {
        (
            builtin cd $AHMYZSH
            git_add_comit_push "${1}" &
        ) &>/dev/null
        (
            builtin cd $CUSTOM_TMUX
            git_add_comit_push "${1}" &
        ) &>/dev/null
        (
            builtin cd $CUSTOM_ZSH
            git_add_comit_push "${1}" &
        ) &>/dev/null
        (
            builtin cd $NODE_REPL
            git_add_comit_push "${1}" &
        ) &>/dev/null
        (
            builtin cd $POWERLINE
            git_add_comit_push "${1}" &
        ) &>/dev/null
        (
            builtin cd $PYTHON_REPL
            git_add_comit_push "${1}" &
        ) &>/dev/null
        # AHMYZSH="${HOME}/ahmyzsh"
        # CUSTOM_ZSH="${AHMYZSH}/custom-zsh"
        # NODE_REPL="${AHMYZSH}/node-repl"
        # OHMYZSH="${AHMYZSH}/ohmyzsh"
        # POWERLEVEL10K="${AHMYZSH}/powerlevel10k"
        # POWERLINE="${AHMYZSH}/powerline"
        # PYTHON_REPL="${AHMYZSH}/python-repl"
    }

    function mytty() {
        tty >~/.tty
        tty >~/.tty1
        tty >~/.tty2
    }

    function mytty0() {
        tty >~/.tty
    }

    function mytty1() {
        tty >~/.tty1
    }

    function mytty2() {
        tty >~/.tty2
    }

    function notmytty() {
        echo -n '' >~/.tty
        echo -n '' >~/.tty1
        echo -n '' >~/.tty2
    }

    function notmytty0() {
        echo -n '' >~/.tty
    }

    function notmytty1() {
        echo -n '' >~/.tty1
    }

    function notmytty2() {
        echo -n '' >~/.tty2
    }

    function cattty() {
        local myTY_=$(cat $HOME/.tty)
        if [ "$myTY_" != "" ]; then
            if [ "${1:-0}" = 1 ]; then
                cattty1 $@
                return 0
            fi
            if [ "${1:-0}" = 2 ]; then
                cattty2 $@
                return 0
            fi
            echo "$(cat $HOME/.tty)"
            return 0
        fi
        return 1
    }

    function cattty1() {
        local myTY_=$(cat $HOME/.tty1)
        if [ "$myTY_" != "" ]; then
            if [ "${1:-0}" = 1 ]; then
                echo -n " 1>$(cat $HOME/.tty1)"
                return 0
            fi
            if [ "${1:-0}" = 2 ]; then
                cattty2 $@
                return 0
            fi
            echo -n " 1>$(cat $HOME/.tty1)"
            # echo "$(cat $HOME/.tty1)"
            return 0
        fi
        return 1
    }

    function cattty2() {
        local myTY_=$(cat $HOME/.tty2)
        if [ "$myTY_" != "" ]; then
            if [ "${1:-0}" = 1 ]; then
                cattty1 $@
                return 0
            fi
            if [ "${1:-0}" = 2 ]; then
                echo -n " 2>$(cat $HOME/.tty2)"
                return 0
            fi
            echo -n " 2>$(cat $HOME/.tty2)"
            # echo "$(cat $HOME/.tty2)"
            return 0
        fi
        return 1
    }

    function toSD1n2() {
        # local myTY_=$(cat $HOME/.tty)
        # if [ "$myTY_" != "" ]; then
        eval $(echo "${@:-echo nothing to do} $(cattty2) $(cattty1)")
        return 0
        # fi
        eval $(echo "${@:-echo nothing to do}")
        return 0

    }

    function toSDOUT1() {
        local myTY_=$(cat $HOME/.tty1)
        if [ "$myTY_" != "" ]; then
            eval $(echo "${@:-echo nothing to do} $(cattty1)")
            return 0
        fi
        eval $(echo "${@:-echo nothing to do}")
    }

    function toSDERR2() {
        local myTY_=$(cat $HOME/.tty2)
        if [ "$myTY_" != "" ]; then
            eval $(echo "${@:-echo nothing to do} $(cattty2)")
            return 0
        fi
        eval $(echo "${@:-echo nothing to do}")
        return 0
    }

    alias to0="toSD1n2"
    alias to1="toSDOUT1"
    alias to2="toSDERR2"

    function ahmyzsh-update() {
        (ahmyzsh-update_ &)
    }

    function ahmyzsh-update_() {

        eval $(echo "(
            toSDERR2 custom-zsh-update
            toSDERR2 node-repl-update
            toSDERR2 python-repl-update
            toSDERR2 ohmyzsh-update
            toSDERR2 powerlevel10k-update
            toSDERR2 powerline-update


        )")
        toSD1n2 "custom-update ${AHMYZSH}/"

        return 0
    }

    function custom-update() {
        eval $(echo "(
            builtin cd ${1};
            git add .;
            git commit -am "refresh/update";
            push;
            git checkout ${2:-'master'};
            pull;
            git pull origin ${2:-'master'} -t --ff;
            push;
            git checkout luxcium;
            pull;
            git pull origin ${2:-'master'} -t --ff;
            push;)")
        return 0
    }

    function custom-upstream-update() {
        eval $(echo "(
            builtin cd ${1};
            git add .;
            git commit -am "refresh/update";
            push;
            git checkout ${2:-'master'};
            pull;
            git pull upstream ${2:-'master'} -t --ff;
            push;
            git checkout luxcium;
            pull;
            git pull origin ${2:-'master'} -t --ff;
            push;)")
        return 0
    }

    function ohmyzsh-update() {
        toSDOUT1 "custom-upstream-update ${OHMYZSH}/"
    }

    function powerlevel10k-update() {
        toSDOUT1 "custom-upstream-update ${POWERLEVLE10K}/"
    }

    function powerline-update() {
        toSDOUT1 "custom-upstream-update ${POWERLINE}/ develop"
    }

    function custom-zsh-update() {
        toSDOUT1 "custom-update ${CUSTOM_ZSH}/"
    }

    function node-repl-update() {
        toSDOUT1 "custom-update ${NODE_REP}/"
    }

    function python-repl-update() {
        toSDOUT1 "custom-update ${PYTHON_REPl}/"
    }

    # function useful_functions() {

    # Functions ==============================================

    # return 1 if global command line program installed, else 0
    # example
    # echo "node: $(program_is_installed node)"
    function program_is_installed() {
        # set to 1 initially
        local return_=1
        # set to 0 if not found
        type $1 >/dev/null 2>&1 || { local return_=0; }
        # return value
        echo "$return_"
    }

    # return 1 if local npm package is installed at ./node_modules, else 0
    # example
    # echo "gruntacular : $(npm_package_is_installed gruntacular)"
    function npm_package_is_installed() {
        # set to 1 initially
        local return_=1
        # set to 0 if not found
        ls node_modules | grep $1 >/dev/null 2>&1 || { local return_=0; }
        # return value
        echo "$return_"
    }

    # display a message in red with a cross by it
    # example
    # echo echo_fail "No"
    function echo_fail() {
        # echo first argument in red
        printf "\e[31m✘ ${1}"
        # reset colours back to normal
        printf "\033\e[0m"
    }

    # display a message in green with a tick by it
    # example
    # echo echo_fail "Yes"
    function echo_pass() {
        # echo first argument in green
        echo -n "\e[32m✔ ${1}"
        # reset colours back to normal
        printf "\033\e[0m"
    }

    # echo pass or fail
    # example
    # echo echo_if 1 "Passed"
    # echo echo_if 0 "Failed"
    function echo_if() {
        if [ $1 = 1 ]; then
            echo_pass $2
        else
            echo_fail $2
        fi
    }

    # ============================================== Functions

    # command line programs
    function versions() {
        printf "\033\e[0m"
        env echo "  $(echo_if $(program_is_installed node))  Node $(env node -v)"
        env echo "  $(echo_if $(program_is_installed npm))  NPM v$(env npm -v)"
        env echo "  $(echo_if $(program_is_installed fnm))  FNM v$(env fnm -v)"
        env echo "  $(echo_if $(program_is_installed yarn))  Yarn v$(env yarn -v)"
        env echo "  $(echo_if $(program_is_installed pnpm))  PNPM v$(env pnpm -v)"
        env echo "  $(echo_if $(program_is_installed tmux))  $(env tmux -V)"
        env echo "  $(echo_if $(program_is_installed eslint))  eslint $(env eslint -v)"
        env echo "  $(echo_if $(program_is_installed tsc))  TypeScript $(env tsc -v)"
        env echo "  $(echo_if $(program_is_installed conda))  $(env conda -V)"
        env echo "  $(echo_if $(program_is_installed python))  $(env python -V)"
        # env echo "  $(echo_if $(program_is_installed python3))  $(env python3 -V)"
        # Python2Version=$(echo -n $(python2 -V))
        # env echo "  $(echo_if $(program_is_installed python2))  ${Python2Version}"
        env echo "  $(echo_if $(program_is_installed rbenv))  $(env rbenv -v)"
        env echo "  $(echo_if $(program_is_installed gem))  gem v$(env gem -v)"
        env echo "  $(echo_if $(program_is_installed ruby))  $(env ruby -v)"
        env echo "  $(echo_if $(program_is_installed zsh))  $(env zsh --version)"
        env echo "  $(echo_if $(program_is_installed uname))  Kernel $(env uname -r)"
        #  uname -r
        # env echo "  $(echo_if $(program_is_installed brew))  $(env command brew -v)"

        # echo "gulp    $(echo_if $(program_is_installed gulp))  "
        # echo "webpack $(echo_if $(program_is_installed webpack))  "
        # echo "conda $(echo_if $(program_is_installed conda))
        # echo "  $(echo_if $(program_is_installed redis))  redis"
        # echo "grep2   $(echo_if $(program_is_installed grep2))"

        # local npm packages
        # echo "lodash  $(echo_if $(npm_package_is_installed lodash))"
        # echo "react   $(echo_if $(npm_package_is_installed react))"
        # echo "angular $(echo_if $(npm_package_is_installed angular))"
    }

    function zsh_version() {
        local ZSH_X=$(echo $0)
        local ZSH_V=$($(echo "${ZSH_X/'-'/}" --version))
        export MY_ZSH_VERSION=" ${TERM_ICO}  ${ZSH_V%%' (x86)'*}"
        echo "${normal}$CLRLN$BYL9K_TERM$(tput setaf 2)${MY_ZSH_VERSION} ${BKBK}${normal}"
    }

    alias reload="source_load_all"
    alias load="source_load_all"
    function source_load_all() {
        toSD1n2 source_load_all_
    }

    function source_load_all_() {
        TIMER_THEN=$(/usr/bin/date +%s%N)

        AHMYZSH="${HOME}/ahmyzsh"

        . "${AHMYZSH}/initial_load.zsh"

        . "${AH_LIBRARIES}/paths.sh"

        . "${CUSTOM_ZSH}/notice.sh"

        init_paths

        source_all_zsh
        load_fab_four

        source_TMUX

        source_path_now
        load_oh_my_zsh_now
        load_autocomplete_now

        load_oh_my_zsh
        compute_path

        echo "${BEGIN_FUNCTION} $(timer_now) 'source_load_all()' ${END_FUNCTION}"

    }

    # if [[ ! -o norcs ]]; then
    #     echo "... <commands to run if NO_RCS is not set,"
    #     echo "                    such as setting options> ..."
    # fi
    # }

    # yarn global v1.22.4
    # info "eslint@7.5.0" has binaries:
    #    - eslint
    # info "prettier@2.0.5" has binaries:
    #    - prettier
    # info "ts-node@8.10.2" has binaries:
    #    - ts-node
    #    - ts-script
    #    - ts-node-script
    #    - ts-node-transpile-only
    # info "typescript@3.9.7" has binaries:
    #    - tsc
    #    - tsserver
    # info "yarn@1.22.4" has binaries:
    #    - yarn
    #    - yarnpkg
    # Done in 0.15s.

    # function npmupdate

}
function Load_Intearctive_Login_State() {
  export Login_Start_Did_Execute=false
  export Non_Login_Start_Did_Execute=false
  export Interactive_Start_Did_Execute=false
  export Non_Interactive_Start_Did_Execute=false
  function Login_Start() {
    if [[ Login_Start_Did_Execute != true ]]; then
      export Login_Start_Did_Execute=true
      if [[ -o login ]]; then
      # echo "I'm a login shell"
      fi
    fi

  }

  function Non_Login_Start() {
    if [[ Non_Login_Start_Did_Execute != true ]]; then
      export Non_Login_Start_Did_Execute=true
      if [[ -o login ]]; then; else #+ !! ELSE !!
        # echo "I'm a non login shell"
      fi
    fi
  }

  function Interactive_Start() {
    if [[ Interactive_Start_Did_Execute != true ]]; then
      export Interactive_Start_Did_Execute=true
      if [[ -o interactive ]]; then
      # echo "I'm interactive shell"
      fi
    fi

  }

  function Non_Interactive_Start() {
    if [[ Non_Interactive_Start_Did_Execute != true ]]; then
      export Non_Interactive_Start_Did_Execute=true
      if [[ -o interactive ]]; then; else #+ !! ELSE !!
        # echo "I'm non interactive shell"
        export VERBOSA=0
      fi
    fi
  }
  Login_Start
  Non_Login_Start
  Interactive_Start
  Non_Interactive_Start
}
# # function Load_Intearctive_Login_State() {
#   export Login_Start_Did_Execute=false
#   export Non_Login_Start_Did_Execute=false
#   export Interactive_Start_Did_Execute=false
#   export Non_Interactive_Start_Did_Execute=false
#   function Login_Start() {
#     if [[ Login_Start_Did_Execute != true ]]; then
#       export Login_Start_Did_Execute=true
#       if [[ -o login ]]; then
#       # echo "I'm a login shell"
#       fi
#     fi

#   }

#   function Non_Login_Start() {
#     if [[ Non_Login_Start_Did_Execute != true ]]; then
#       export Non_Login_Start_Did_Execute=true
#       if [[ -o login ]]; then; else #+ !! ELSE !!
#         # echo "I'm a non login shell"
#       fi
#     fi
#   }

#   function Interactive_Start() {
#     if [[ Interactive_Start_Did_Execute != true ]]; then
#       export Interactive_Start_Did_Execute=true
#       if [[ -o interactive ]]; then
#       # echo "I'm interactive shell"
#       fi
#     fi

#   }

#   function Non_Interactive_Start() {
#     if [[ Non_Interactive_Start_Did_Execute != true ]]; then
#       export Non_Interactive_Start_Did_Execute=true
#       if [[ -o interactive ]]; then; else #+ !! ELSE !!
#         # echo "I'm non interactive shell"
#         export VERBOSA=0
#       fi
#     fi
#   }
#   Login_Start
#   Non_Login_Start
#   Interactive_Start
#   Non_Interactive_Start
# # }
alias reload_projects_paths="PARENT_ENV_LOADED=false;personal_projects_paths;echo 'Projects paths refreshed'"
function personal_projects_paths() {
    if [ "$PARENT_ENV_LOADED" != 'true' ]; then

        export AHMYZSH="${HOME}/ahmyzsh"
        alias ahmyzsh="cd ${AHMYZSH}"
        export CACHE_FOLDER_="${HOME}/envs/cache/p10k-${USER}"
        alias cache_folder="cd ${CACHE_FOLDER_}"

        export DEV_FOLDER="${HOME}/dev"
        alias dev_folder="cd ${DEV_FOLDER}"
        export LXI_PROJCT="${DEV_FOLDER}/luxcium-projects"
        alias lxi_projct="cd ${LXI_PROJCT}"
        export TEMP_PROJCT="${DEV_FOLDER}/temporary-projects"
        alias temp_projct="cd ${TEMP_PROJCT}"

        export LXIO="${LXI_PROJCT}/luxcium.io"
        alias lxio="cd ${LXIO}"
        export QSTRD="${LXI_PROJCT}/questrade-ts"
        alias qstrd="cd ${QSTRD}"

        export DEV_POPNLOCK="${HOME}/.vscode-insiders/extensions/dev-pop-n-lock-theme-vscode"
        alias dev_popnlock="cd ${DEV_POPNLOCK}"

        export PATH_INSDR_CODE_EXT="${HOME}/.vscode-insiders/extensions"
        alias path_insdr_code_ext="cd ${PATH_INSDR_CODE_EXT}"
        export PATH_LXIO_PRJ="${HOME}/Developer/LuxciumProject"
        alias path_lxio_prj="cd ${PATH_LXIO_PRJ}"
        export PATH_LXIO="${PATH_LXIO_PRJ}/luxcium.io"
        alias path_lxio="cd ${PATH_LXIO}"
        export PATH_OH_MY_ZSH="${ZSH}"
        alias path_oh_my_zsh="cd ${PATH_OH_MY_ZSH}"
        export PATH_IEXCLOUD_API_WRAPPER="${PATH_LXIO_PRJ}/iexcloud-api-wrapper"
        alias path_iexcloud_api_wrapper="cd ${PATH_IEXCLOUD_API_WRAPPER}"
        export PATH_IEX_API="${PATH_LXIO_PRJ}/iex-luxcium-api"
        alias path_iex_api="cd ${PATH_IEX_API}"

        export PATH_LXIO="${LXIO}"
        alias path_lxio="cd ${PATH_LXIO}"
        export PATH_QUESTRADE="${QSTRD}"
        alias path_questrade="cd ${PATH_QUESTRADE}"
        export PATH_LXIO_PRJ="${LXI_PROJCT}"
        alias path_lxio_prj="cd ${PATH_LXIO_PRJ}"

    fi
}

function init_paths() {

    # source /home/luxcium/ahmyzsh/custom-zsh/sources/functions/getportablecode.sh
    # "${HOME}"
    # "${AHMYZSH}"
    # "${CUSTOM_ZSH}"
    # "${ZSH_SOURCES}"
    # "${ZSH_FUNCTIONS_FOLDER}"
    #

    if [ "$PARENT_ENV_LOADED" != 'true' ]; then

        export CUSTOM_ZSH="${AHMYZSH}/custom-zsh"
        {
            export ZSH_BIN="${CUSTOM_ZSH}/bin"
            {
                export ZSH_BIN_ETC="${ZSH_BIN}/etc"
            }

            export ZSH_SOURCES="${CUSTOM_ZSH}/sources"
            {
                export ZSH_COMPLETION="${ZSH_SOURCES}/completion"
                export ZSH_COMPUTE="${ZSH_SOURCES}/compute"
                export ZSH_FLAGS="${ZSH_SOURCES}/flags"
                export ZSH_FUNCTIONS_FOLDER="${ZSH_SOURCES}/functions"
                export ZSH_LAYOUTS="${ZSH_SOURCES}/layouts"
                export ZSH_LUXCIUM="${ZSH_SOURCES}"
                {
                    export PATH_ZSH_FUNCTIONS="${ZSH_LUXCIUM}"
                    export ZSH_FLAGS_VALUES="${ZSH_LUXCIUM}/flags/values"
                }

            }
        }
        export NODE_REPL="${AHMYZSH}/node-repl"
        export OHMYZSH="${AHMYZSH}/ohmyzsh"
        {
            export ZSH="${OHMYZSH}"
        }
        export POWERLEVEL10K="${AHMYZSH}/powerlevel10k"
        export PYTHON_REPL="${AHMYZSH}/python-repl"
        export POWERLINE="${AHMYZSH}/powerline"
        {
            export POWERLINE_BINDINGS="${POWERLINE}/powerline/bindings"
            export PWRLN_BINDINGS="${POWERLINE}/powerline/bindings"
        }

        export AHMYZSH_CORE="${AHMYZSH}/core"
        {
            export CORE_BIN="${AHMYZSH_CORE}/bin"
        }

        export AHMYZSH_PLUGINS="${AHMYZSH}/plugins"
        {
            export PLUGINS_BIN="${AHMYZSH_PLUGINS}/bin"
        }
        export AHMYZSH_BIN="${AHMYZSH}/bin"
    fi

}
#!/usr/bin/env sh

function source_() {
  if [ -z $1 ]; then
    [ "${VERBOSA}" -gt 1 ] && echo "Error sourcing ' $1 ' no file provided"
    return 1
  else
    TIMER_THEN=$(/usr/bin/date +%s%N)
    if [[ -f $1 ]]; then
      if [[ -r $1 ]]; then
        source "${1}"
        [ "${VERBOSA}" -gt 0 ] && echo "${BEGIN_SOURCING} $(timer_now) ${1} ${END_SOURCING}"
        return 0
      else
        [ "${VERBOSA}" -gt 3 ] && echo "Error sourcing '$1' file provided is not redable"
        return 3
      fi
    else
      [ "${VERBOSA}" -gt 2 ] && echo "Error sourcing '$1' file provided does not exist"
      return 2
    fi
  fi
}

function call_() {
  if [ -z $1 ]; then
    [ "${VERBOSA}" -gt 1 ] && echo "Error sourcing ' $1 ' no function call provided"
    return 1
  else
    TIMER_THEN=$(/usr/bin/date +%s%N)
    eval ${1}
    returnval=$?
    [ "${VERBOSA}" -gt 0 ] && echo "${BEGIN_FUNCTION} $(timer_now) '${1}()' ${END_FUNCTION}"
    return "${returnval}"
  fi
}

function load_() {
  source_ "${1}" &&
    call_ ${2}
}
