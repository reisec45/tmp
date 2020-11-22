# inxi
# Autogenerated from man page /usr/lib/jvm/default/man/man1/inxi.1.gz
complete -c inxi -o AG -s A -s G -o c10 --description '.'
complete -c inxi -l audio --description 'Show Audio/sound card(s) information, including card driver.'
complete -c inxi -s b -l basic --description 'Show basic output, short form.  Same as: inxi -v 2.'
complete -c inxi -s B -l battery --description 'Show system battery (ID-x) data, charge, condition, plus extra information  (…'
complete -c inxi -s c -l color --description 'Set color scheme.  If no scheme number is supplied, 0 is assumed.'
complete -c inxi -s C -l cpu --description 'Show full CPU output, including per CPU clock speed and CPU max speed (if ava…'
complete -c inxi -s d -l disk-full -l optical --description 'Show optical drive data as well as -D hard drive data.'
complete -c inxi -s D -l disk --description 'Show Hard Disk info.  Shows total disk space and used percentage.'
complete -c inxi -s f -l flags --description 'Show all CPU flags used, not just the short list.'
complete -c inxi -s F -l full --description 'Show Full output for inxi.'
complete -c inxi -s i -s l -s m -s o -s p -s r -s t -s u -s x --description 'the command, e. g. : inxi -Frmxx.'
complete -c inxi -l graphics --description 'Show Graphic card(s) information, including details of card and card driver, …'
complete -c inxi -s h -l help --description 'The help menu.  Features dynamic sizing to fit into terminal window.'
complete -c inxi -l ip --description 'Show WAN IP address and local interfaces (latter requires ifconfig or ip netw…'
complete -c inxi -s I -l info --description 'Show Information: processes, uptime, memory, IRC client (or shell type if run…'
complete -c inxi -l label --description 'Show partition labels.  Default: main partitions -P.'
complete -c inxi -l memory --description 'Memory (RAM) data.'
complete -c inxi -l memory-modules --description 'Memory (RAM) data.  Show only RAM arrays and modules in Memory report.'
complete -c inxi -l memory-short --description 'Memory (RAM) data.  Show a one line RAM report in Memory, e. g.'
complete -c inxi -s M -l machine --description 'Show machine data.'
complete -c inxi -l dmidecode --description 'Will also attempt to show if the system was booted by BIOS, UEFI, or UEFI [Le…'
complete -c inxi -s n -l network-advanced --description 'Show Advanced Network card information in addition to that produced by -N.'
complete -c inxi -s N -l network --description 'Show Network card(s) information, including card driver.'
complete -c inxi -l unmounted --description 'Show unmounted partition information (includes UUID and LABEL if available).'
complete -c inxi -l partitions-full --description 'Show full Partition information (-P plus all other detected mounted partition…'
complete -c inxi -s P -l partitions --description 'Show basic Partition information.'
complete -c inxi -l repos --description 'Show distro repository data.  Currently supported repo types:.'
complete -c inxi -s R -l raid --description 'Show RAID data.'
complete -c inxi -l recommends --description 'Checks inxi application dependencies and recommends, as well as directories, …'
complete -c inxi -s s -l sensors --description 'Show output from sensors if sensors installed/configured: Motherboard/CPU/GPU…'
complete -c inxi -l slots --description 'Show PCI slots with type, speed, and status information.'
complete -c inxi -s S -l system --description 'Show System information: host name, kernel, desktop environment (if in X), di…'
complete -c inxi -l processes --description '[c|m|cm|mc NUMBER] Show processes.  If no arguments, defaults to cm.'
complete -c inxi -l usb --description 'Show USB data for attached Hubs and Devices.  Hubs also show number of ports.'
complete -c inxi -l uuid --description 'Show partition UUIDs.  Default: main partitions -P.'
complete -c inxi -s U -l update --description 'Note - Maintainer may have disabled this function.'
complete -c inxi -s V -l version --description 'inxi version information.  Prints information then exits.'
complete -c inxi -s v -l verbosity --description 'Script verbosity levels.  If no verbosity level number is given, 0 is assumed.'
complete -c inxi -o xxx --description '.'
complete -c inxi -s w -l weather --description 'Adds weather line.  To get weather for an alternate location, use.'
complete -c inxi -s W -o xx --description 'Please note that your distribution\'s maintainer may chose to disable this fea…'
complete -c inxi -l weather-location --description 'Get weather/time for an alternate location.'
complete -c inxi -o '122.6762' --description '.'
complete -c inxi -l weather-source -l ws --description '[1-9] Switches weather data source.  Possible values are 1-9.'
complete -c inxi -l weather-unit --description '[m|i|mi|im] Sets weather units to metric (m), imperial (i),  metric (imperial…'
complete -c inxi -s y -l width --description 'This is an absolute width override which sets the output line width max.'
complete -c inxi -s 1 -o Fxx --description '.'
complete -c inxi -s z -l filter --description 'Adds security filters for IP addresses, serial numbers, MAC,  location (-w), …'
complete -c inxi -s Z -l filter-override --description 'Absolute override for output filters.'
complete -c inxi -o 'xx;' --description '.'
complete -c inxi -l extra -l extra -l extra --description '.'
complete -c inxi -o xt --description '(-xt m).'
complete -c inxi -l display --description '(info).  If none found, shows nothing.'
complete -c inxi -s a --description '.'
complete -c inxi -o Cx --description 'Format is hexadecimal (decimal) if greater than 9, otherwise hexadecimal.'
complete -c inxi -l alt --description 'Bypass Perl as a downloader option.'
complete -c inxi -l downloader --description 'Force inxi to use Curl, Fetch, Perl, or Wget for downloads.'
complete -c inxi -l host --description 'Turns on hostname in System line.  Overrides inxi config file value (if set):.'
complete -c inxi -l indent-min --description 'Overrides default indent minimum value.'
complete -c inxi -l limit --description 'Raise or lower max output limit of IP addresses for -i.  -1 removes limit.'
complete -c inxi -l man --description 'Updates / installs man page with -U if pinxi or using -U 3 dev branch.'
complete -c inxi -l no-host --description 'Turns off hostname in System line.'
complete -c inxi -l no-man --description 'Disables man page install with -U for master and active development branches.'
complete -c inxi -l no-ssl --description 'Skip SSL certificate checks for all downloader actions (-U, -w,.'
complete -c inxi -l output --description 'Change data output type.  Requires --output-file if not screen.'
complete -c inxi -l output-file --description 'The given directory path must exist.'
complete -c inxi -l partition-sort --description 'Change default sort order of partition output.'
complete -c inxi -l pm-type --description 'For distro package maintainers only, and only for non apt, rpm, or pacman bas…'
complete -c inxi -l sleep --description 'Usually in decimals.  Change CPU sleep time for -C (current:  . 35).'
complete -c inxi -l tty --description 'Forces internal IRC flag to off.'
complete -c inxi -o Ixxx --description 'of whitelisted programs.'
complete -c inxi -l usb-sys --description 'Forces the USB data generator to use /sys as data source  instead of lsusb.'
complete -c inxi -l usb-tool --description 'Forces the USB data generator to use lsusb as data source.'
complete -c inxi -l wan-ip-url --description 'Force -i to use supplied URL as WAN IP source.'
complete -c inxi -l wm --description 'Force System item wm to use wmctrl as data source,  override default ps sourc…'
complete -c inxi -l dbg --description '.'
complete -c inxi -l debug --description '.'
complete -c inxi -l ftp --description 'For alternate ftp upload locations: Example:.'
complete -c inxi -l debug-proc --description 'Force debugger to parse /proc directory data when run as root.'
complete -c inxi -l debug-proc-print --description 'Use this to locate file that /proc debugger hangs on.'
complete -c inxi -l debug-no-exit --description 'Skip exit on error when running debugger.'
complete -c inxi -l debug-no-proc --description 'Skip /proc debugging in case of a hang.'
complete -c inxi -l debug-no-sys --description 'Skip /sys debugging in case of a hang.'
complete -c inxi -l debug-sys --description 'Force PowerPC debugger parsing of /sys as sudo/root.'
complete -c inxi -l debug-sys-print --description 'Use this to locate file that /sys debugger hangs on.'

