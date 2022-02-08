export NMON='mknd.jJ'

# h = This help
alias nmonhelp='sudo nice -n -15 ionice -c 2 -n 3 env NMON=h nmon -a'

# r = Resources OS & Proc
alias nmonres='sudo nice -n -15 ionice -c 2 -n 3 env NMON=r nmon -a'

# c = CPU Util  C = wide view
alias nmoncpu='sudo nice -n -15 ionice -c 2 -n 3 env NMON=c nmon -a'
alias nmonccpu='sudo nice -n -15 ionice -c 2 -n 3 env NMON=C nmon -a'

# l = longer term CPU averages
alias nmonlcpu='sudo nice -n -15 ionice -c 2 -n 3 env NMON=l nmon -a'

# m = Memory & Swap    L=Huge
alias nmonmem='sudo nice -n -15 ionice -c 2 -n 3 env NMON=m nmon -a'

# V = Virtual Memory
alias nmonvirt='sudo nice -n -15 ionice -c 2 -n 3 env NMON=V nmon -a'

# n = Network
alias nmonnetwork='sudo nice -n -15 ionice -c 2 -n 3 env NMON=n nmon -a'

# N = NFS
alias nmonnfs='sudo nice -n -15 ionice -c 2 -n 3 env NMON=N nmon -a'

#
# d = Disk I/O Graphs  D=Stats
alias nmondisk='sudo nice -n -15 ionice -c 2 -n 3 env NMON=d nmon -a'
alias nmondiskstats='sudo nice -n -15 ionice -c 2 -n 3 env NMON=D nmon -a'

# o = Disks %Busy Map
#

# k = Kernel stats & loadavg
alias nmonkern='sudo nice -n -15 ionice -c 2 -n 3 env NMON=k nmon -a'

# j = Filesystem Usage J=reduced
alias nmonfs='sudo nice -n -15 ionice -c 2 -n 3 env NMON=jJ nmon -a'
alias nmonfsall='sudo nice -n -15 ionice -c 2 -n 3 env NMON=j nmon -a'

#
# M = MHz by thread & CPU
alias nmonmhz='sudo nice -n -15 ionice -c 2 -n 3 env NMON=M nmon -a'

#

# t = TopProcess 1=Priority/Nice/State
# ReOrder by: 3=CPU 4=RAM 5=I/O
alias nmontopnice='sudo nice -n -15 ionice -c 2 -n 3 env NMON=t1 nmon -a'
alias nmontopproc='sudo nice -n -15 ionice -c 2 -n 3 env NMON=t3 nmon -a'
alias nmontopmem='sudo nice -n -15 ionice -c 2 -n 3 env NMON=t4 nmon -a'
alias nmontopio='sudo nice -n -15 ionice -c 2 -n 3 env NMON=t5 nmon -a'

# u = TopProc with command line
# ReOrder by: 3=CPU 4=RAM 5=I/O
alias nmontopniceu='sudo nice -n -15 ionice -c 2 -n 3 env NMON=t1u nmon -a'
alias nmontopprocu='sudo nice -n -15 ionice -c 2 -n 3 env NMON=t3u nmon -a'
alias nmontopmemu='sudo nice -n -15 ionice -c 2 -n 3 env NMON=t4u nmon -a'
alias nmontopiou='sudo nice -n -15 ionice -c 2 -n 3 env NMON=t5u nmon -a'

# alias nmonmmm='sudo nice -n -15 ionice -c 2 -n 3 env NMON=MMM nmon -a'
# alias nmonV='sudo nice -n -15 ionice -c 2 -n 3 env NMON=V nmon -a'
# alias nmonN='sudo nice -n -15 ionice -c 2 -n 3 env NMON=N nmon -a'
# alias nmonr='sudo nice -n -15 ionice -c 2 -n 3 env NMON=r nmon -a'
# alias nmono='sudo nice -n -15 ionice -c 2 -n 3 env NMON=o nmon -a'
# alias nmonddisk='sudo nice -n -15 ionice -c 2 -n 3 env NMON=d nmon -a'
# alias nmondisk='sudo nice -n -15 ionice -c 2 -n 3 env NMON=d. nmon -a'

# nmon -h
# Hint for nmon version 16k
#         Full Help Info : nmon -h

#         On-screen Stats: nmon
#         Data Collection: nmon -f [-s <seconds>] [-c <count>] [-t|-T]
#         Capacity Plan  : nmon -x
# Interactive-Mode:
#         Read the Welcome screen & at any time type: 'h' for more help
#         Type 'q' to exit nmon

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
#         -g auto       - Will generate a file called 'auto' with just disks from 'lsblk|grep disk' output
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
#         -g auto       See above but makes the file 'auto' for you of just the disks like sda etc.
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
#         -s <seconds>  Time between snap shots - with '-c count' decides duration of the data capture
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
#         J   =  Reduces 'j' output by removing unreal File Systems
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
#         0   = Reset peak counts to zero (peak highlight with '>')
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
