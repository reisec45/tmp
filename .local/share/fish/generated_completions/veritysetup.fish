# veritysetup
# Autogenerated from man page /usr/lib/jvm/default/man/man8/veritysetup.8.gz
complete -c veritysetup -l verbose -s v --description 'Print more information on command execution.'
complete -c veritysetup -l debug --description 'Run in debug mode with full diagnostic logs.'
complete -c veritysetup -l no-superblock --description 'Create or use dm-verity without permanent on-disk superblock.'
complete -c veritysetup -l format --description 'Specifies the hash version type.  Format type 0 is original Chrome OS version.'
complete -c veritysetup -l data-block-size --description 'Used block size for the data device.'
complete -c veritysetup -l hash-block-size --description 'Used block size for the hash device.'
complete -c veritysetup -l data-blocks --description 'Size of data device used in verification.'
complete -c veritysetup -l hash-offset --description 'Offset of hash area/superblock on hash_device.'
complete -c veritysetup -l salt --description 'Salt used for format or verification.  Format is a hexadecimal string.'
complete -c veritysetup -l uuid --description 'Use the provided UUID for format command instead of generating new one.'
complete -c veritysetup -l ignore-corruption -l restart-on-corruption --description 'Defines what to do if data integrity problem is detected (data corruption).'
complete -c veritysetup -l ignore-zero-blocks --description 'Instruct kernel to not verify blocks that are expected to contain zeroes and …'
complete -c veritysetup -l check-at-most-once --description 'Instruct kernel to verify blocks only the first time they are read from the d…'
complete -c veritysetup -l hash --description 'Hash algorithm for dm-verity.  For default see --help option.'
complete -c veritysetup -l version --description 'Show the program version.'
complete -c veritysetup -l fec-device --description 'Use forward error correction (FEC) to recover from corruption if hash verific…'
complete -c veritysetup -l fec-offset --description 'This is the offset, in bytes, from the start of the FEC device to the beginni…'
complete -c veritysetup -l fec-roots --description 'Number of generator roots.'

