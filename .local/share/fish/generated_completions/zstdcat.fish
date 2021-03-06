# zstdcat
# Autogenerated from man page /usr/share/man/man1/zstdcat.1.gz
complete -c zstdcat -l maxdict --description 'Limit dictionary to specified size (default: 112640).'
complete -c zstdcat -o 'B#' --description 'Split input files in blocks of size # (default: no split).'
complete -c zstdcat -l dictID --description 'A dictionary ID is a locally unique ID that a decoder can use to verify it is…'
complete -c zstdcat -l train-cover --description 'Select parameters for the default dictionary builder algorithm named cover.'
complete -c zstdcat -l train-fastcover --description 'Same as cover but with extra parameters f and accel and different default val…'
complete -c zstdcat -l train-legacy --description 'Use legacy dictionary builder algorithm with the given dictionary selectivity…'
complete -c zstdcat -o 'e#' --description 'benchmark file(s) using multiple compression levels, from -b# to -e# (inclusi…'
complete -c zstdcat -o 'i#' --description 'minimum evaluation time, in seconds (default: 3s), benchmark mode only.'
complete -c zstdcat -l block-size --description 'cut file(s) into independent blocks of size # (default: no block).'
complete -c zstdcat -l priority --description 'set process priority to real-time Output Format: CompressionLevel#Filename : …'
complete -c zstdcat -l zstd --description 'zstd provides 22 predefined compression levels.'

