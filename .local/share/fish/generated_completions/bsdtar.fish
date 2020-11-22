# bsdtar
# Autogenerated from man page /usr/lib/jvm/default/man/man1/bsdtar.1.gz
complete -c bsdtar -s c --description 'Create a new archive containing the specified items.'
complete -c bsdtar -s r --description 'Like c, but new entries are appended to the archive.'
complete -c bsdtar -s t --description 'List archive contents to stdout.  The long option form is list.'
complete -c bsdtar -s u --description 'Like r, but new entries are added only if they have a modification date newer…'
complete -c bsdtar -s x --description 'Extract to disk from the archive.'
complete -c bsdtar -s a --description '(c mode only) Use the archive suffix to decide a set of the format and the co…'
complete -c bsdtar -l acls --description '(c, r, u, x modes only) Archive or extract POSIX. 1e or NFSv4 ACLs.'
complete -c bsdtar -s B --description 'Ignored for compatibility with other tar 1 implementations.'
complete -c bsdtar -s b --description 'Specify the block size, in 512-byte records, for tape drive I/O.'
complete -c bsdtar -s C --description 'In c and r mode, this changes the directory before adding the following files.'
complete -c bsdtar -l chroot --description '(x mode only) chroot to the current directory after processing any C options …'
complete -c bsdtar -l clear-nochange-fflags --description '(x mode only) Before removing file system objects to replace them, clear plat…'
complete -c bsdtar -l exclude --description 'Do not process files or directories that match the specified pattern.'
complete -c bsdtar -l exclude-vcs --description 'Do not process files or directories internally used by the version control sy…'
complete -c bsdtar -l fflags --description '(c, r, u, x modes only) Archive or extract platform-specific file attributes …'
complete -c bsdtar -l format --description '(c, r, u mode only) Use the specified format for the created archive.'
complete -c bsdtar -s f --description 'Read the archive from or write the archive to the specified file.'
complete -c bsdtar -l gid --description 'Use the provided group id number.'
complete -c bsdtar -l gname --description 'Use the provided group name.'
complete -c bsdtar -s H --description '(c and r modes only) Symbolic links named on the command line will be followe…'
complete -c bsdtar -s h --description '(c and r modes only) Synonym for L.'
complete -c bsdtar -s I --description 'Synonym for T.'
complete -c bsdtar -l help --description 'Show usage.'
complete -c bsdtar -l hfsCompression --description '(x mode only) Mac OS X specific (v10. 6 or later).'
complete -c bsdtar -l ignore-zeros --description 'An alias of options Cm read_concatenated_archives for compatibility with GNU …'
complete -c bsdtar -l include --description 'Process only files or directories that match the specified pattern.'
complete -c bsdtar -s J --description '(c mode only) Compress the resulting archive with xz 1.'
complete -c bsdtar -s j --description '(c mode only) Compress the resulting archive with bzip2 1.'
complete -c bsdtar -s k --description '(x mode only) Do not overwrite existing files.'
complete -c bsdtar -l keep-newer-files --description '(x mode only) Do not overwrite existing files that are newer than the version…'
complete -c bsdtar -s L --description '(c and r modes only) All symbolic links will be followed.'
complete -c bsdtar -s l --description '(c and r modes only) Issue a warning message unless all links to each file ar…'
complete -c bsdtar -l lrzip --description '(c mode only) Compress the resulting archive with lrzip 1.'
complete -c bsdtar -l lz4 --description '(c mode only) Compress the archive with lz4-compatible compression before wri…'
complete -c bsdtar -l zstd --description '(c mode only) Compress the archive with zstd-compatible compression before wr…'
complete -c bsdtar -l lzma --description '(c mode only) Compress the resulting archive with the original LZMA algorithm.'
complete -c bsdtar -l lzop --description '(c mode only) Compress the resulting archive with lzop 1.'
complete -c bsdtar -s m --description '(x mode only) Do not extract modification time.'
complete -c bsdtar -l mac-metadata --description '(c, r, u and x mode only) Mac OS X specific.'
complete -c bsdtar -s n --description 'Do not operate recursively on the content of directories.'
complete -c bsdtar -l newer --description '(c, r, u modes only) Only include files and directories newer than the specif…'
complete -c bsdtar -l newer-mtime --description '(c, r, u modes only) Like newer, except it compares mtime entries instead of …'
complete -c bsdtar -l newer-than --description '(c, r, u modes only) Only include files and directories newer than the specif…'
complete -c bsdtar -l newer-mtime-than --description '(c, r, u modes only) Like newer-than, except it compares mtime entries instea…'
complete -c bsdtar -l nodump --description '(c and r modes only) Honor the nodump file flag by skipping this file.'
complete -c bsdtar -l nopreserveHFSCompression --description '(x mode only) Mac OS X specific (v10. 6 or later).'
complete -c bsdtar -l null --description '(use with I or T ) Filenames or patterns are separated by null characters, no…'
complete -c bsdtar -l no-acls --description '(c, r, u, x modes only) Do not archive or extract POSIX. 1e or NFSv4 ACLs.'
complete -c bsdtar -l no-fflags --description '(c, r, u, x modes only) Do not archive or extract file attributes or file fla…'
complete -c bsdtar -l no-mac-metadata --description '(x mode only) Mac OS X specific.'
complete -c bsdtar -l no-same-owner --description '(x mode only) Do not extract owner and group IDs.'
complete -c bsdtar -l no-same-permissions --description '(x mode only) Do not extract full permissions (SGID, SUID, sticky bit, file a…'
complete -c bsdtar -l no-xattrs --description '(c, r, u, x modes only) Do not archive or extract extended file attributes.'
complete -c bsdtar -l numeric-owner --description 'This is equivalent to uname Qq gname .'
complete -c bsdtar -s O --description '(x, t modes only) In extract (-x) mode, files will be written to standard out…'
complete -c bsdtar -s o --description '(x mode) Use the user and group of the user running the program rather than t…'
complete -c bsdtar -l older --description '(c, r, u modes only) Only include files and directories older than the specif…'
complete -c bsdtar -l older-mtime --description '(c, r, u modes only) Like older, except it compares mtime entries instead of …'
complete -c bsdtar -l older-than --description '(c, r, u modes only) Only include files and directories older than the specif…'
complete -c bsdtar -l older-mtime-than --description '(c, r, u modes only) Like older-than, except it compares mtime entries instea…'
complete -c bsdtar -l one-file-system --description '(c, r, and u modes) Do not cross mount points.'
complete -c bsdtar -l options --description 'Select optional behaviors for particular modules.'
complete -c bsdtar -s P --description 'Preserve pathnames.'
complete -c bsdtar -s p --description '(x mode only) Preserve file permissions.'
complete -c bsdtar -l passphrase --description 'The passphrase is used to extract or create an encrypted archive.'
complete -c bsdtar -l posix --description '(c, r, u mode only) Synonym for format Ar pax.'
complete -c bsdtar -s q --description '(x and t mode only) Extract or list only the first archive entry that matches…'
complete -c bsdtar -s S --description '(x mode only) Extract files as sparse files.'
complete -c bsdtar -s s --description 'Modify file or archive member names according to pattern.'
complete -c bsdtar -l same-owner --description '(x mode only) Extract owner and group IDs.'
complete -c bsdtar -l strip-components --description 'Remove the specified number of leading path elements.'
complete -c bsdtar -s T --description 'In x or t mode, bsdtar will read the list of names to be extracted from filen…'
complete -c bsdtar -l totals --description '(c, r, u modes only) After archiving all files, print a summary to stderr.'
complete -c bsdtar -s U --description '(x mode only) Unlink files before creating them.'
complete -c bsdtar -l uid --description 'Use the provided user id number and ignore the user name from the archive.'
complete -c bsdtar -l uname --description 'Use the provided user name.'
complete -c bsdtar -l use-compress-program --description 'Pipe the input (in x or t mode) or the output (in c mode) through program ins…'
complete -c bsdtar -s v --description 'Produce verbose output.'
complete -c bsdtar -l version --description 'Print version of bsdtar and bsdtar libarchive, and exit.'
complete -c bsdtar -s w --description 'Ask for confirmation for every action.'
complete -c bsdtar -s X --description 'Read a list of exclusion patterns from the specified file.'
complete -c bsdtar -l xattrs --description '(c, r, u, x modes only) Archive or extract extended file attributes.'
complete -c bsdtar -s y --description '(c mode only) Compress the resulting archive with bzip2 1.'
complete -c bsdtar -s Z --description '(c mode only) Compress the resulting archive with compress 1.'
complete -c bsdtar -s z --description '(c mode only) Compress the resulting archive with gzip 1.'

