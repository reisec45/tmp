# strace
# Autogenerated from man page /usr/lib/jvm/default/man/man1/strace.1.gz
complete -c strace -s e --description 'A qualifying expression which modifies which events to trace or how to trace …'
complete -c strace -o Evar --description 'Run command with R var = val in its list of environment variables.'
complete -c strace -s E --description 'Remove R var from the inherited list of environment variables before passing …'
complete -c strace -s p --description 'Attach to the process with the process . SM ID  pid and begin tracing.'
complete -c strace -s u --description 'Run command with the user \\s-1ID\\s0, group \\s-2ID\\s0, and supplementary group…'
complete -c strace -s b --description 'If specified syscall is reached, detach from traced process.'
complete -c strace -s D --description 'Run tracer process as a detached grandchild, not as parent of the tracee.'
complete -c strace -s f --description 'Trace child processes as they are created by currently traced processes as a …'
complete -c strace -o ff --description 'If the  -o  filename option is in effect, each processes trace is written to …'
complete -c strace -s I --description 'When  strace can be interrupted by signals (such as pressing  CTRL-C ). RS.'
complete -c strace -o etrace --description 'Trace only the specified set of system calls.'
complete -c strace -o esignal --description 'Trace only the specified subset of signals.   The default is  signal = all .'
complete -c strace -o estatus --description 'Print only system calls with the specified return status.'
complete -c strace -s P --description 'Trace only system calls accessing R path .'
complete -c strace -s z --description 'Print only syscalls that returned without an error code.'
complete -c strace -s Z --description 'Print only syscalls that returned with an error code. SS Output format.'
complete -c strace -s a --description 'Align return values in a specific column (default column 40).'
complete -c strace -o eabbrev --description 'Abbreviate the output from printing each member of large structures.'
complete -c strace -o everbose --description 'Dereference structures for the specified set of system calls.'
complete -c strace -o eraw --description 'Print raw, undecoded arguments for the specified set of system calls.'
complete -c strace -o eread --description 'Perform a full hexadecimal and ASCII dump of all the data read from file desc…'
complete -c strace -o ewrite --description 'Perform a full hexadecimal and ASCII dump of all the data written to file des…'
complete -c strace -o ekvm --description 'Print the exit reason of kvm vcpu.   Requires Linux kernel version 4. 16.'
complete -c strace -s i --description 'Print the instruction pointer at the time of the system call. if \'#\'#\'.'
complete -c strace -s k --description 'if \'#\'#\' Print the execution stack trace of the traced .'
complete -c strace -s o --description 'Write the trace output to the file  filename rather than to stderr.'
complete -c strace -s A --description 'Open the file provided in the  -o option in append mode.'
complete -c strace -s q --description 'Suppress messages about attaching, detaching etc.'
complete -c strace -o qq --description 'If given twice, suppress messages about process exit status.'
complete -c strace -s r --description 'Print a relative timestamp upon entry to each system call.'
complete -c strace -s s --description 'Specify the maximum string size to print (the default is 32).'
complete -c strace -s t --description 'Prefix each line of the trace with the wall clock time.'
complete -c strace -o tt --description 'If given twice, the time printed will include the microseconds.'
complete -c strace -o ttt --description 'If given thrice, the time printed will include the microseconds and the leadi…'
complete -c strace -s T --description 'Show the time spent in system calls.'
complete -c strace -s v --description 'Print unabbreviated versions of environment, stat, termios, etc.  calls.'
complete -c strace -s x --description 'Print all non-ASCII strings in hexadecimal string format.'
complete -c strace -o xx --description 'Print all strings in hexadecimal string format.'
complete -c strace -s X --description 'Set the format for printing of named constants and flags.'
complete -c strace -s y --description 'Print paths associated with file descriptor arguments.'
complete -c strace -o yy --description 'Print protocol specific information associated with socket file descriptors, …'
complete -c strace -s c --description 'Count time, calls, and errors for each system call and report a summary on pr…'
complete -c strace -s C --description 'Like  -c but also print regular output while processes are running.'
complete -c strace -s O --description 'Set the overhead for tracing system calls to  overhead microseconds.'
complete -c strace -s S --description 'Sort the output of the histogram printed by the  -c option by the specified c…'
complete -c strace -s w --description 'Summarise the time difference between the beginning and end of each system ca…'
complete -c strace -o einject --description 'Perform syscall tampering for the specified set of syscalls.'
complete -c strace -o efault --description 'Perform syscall fault injection for the specified set of syscalls.'
complete -c strace -s d --description 'Show some debugging output of  strace itself on the standard error.'
complete -c strace -l seccomp-bpf --description 'Enable (experimental) usage of seccomp-bpf to have ptrace(2)-stops only when …'
complete -c strace -s F --description 'This option is deprecated.'
complete -c strace -s h --description 'TQ  --help Print the help summary.'
complete -c strace -l - -l - --description '+++ killed by SIGINT +++.'
complete -c strace -l help --description 'Print the help summary.'
complete -c strace -s V --description '.'
complete -c strace -l version --description 'Print the version number of strace .'

