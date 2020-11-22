# ts
# Autogenerated from man page /usr/lib/jvm/default/man/man1/ts.1ssl.gz
complete -c ts -o rand --description 'A file or files containing random data used to seed the random number generat…'
complete -c ts -o writerand --description 'Writes random data to the specified file upon exit.'
complete -c ts -o config --description 'The configuration file to use.'
complete -c ts -o data --description 'The data file for which the time stamp request needs to be created.'
complete -c ts -o digest --description 'It is possible to specify the message imprint explicitly without the data fil…'
complete -c ts -o tspolicy --description 'The policy that the client expects the \\s-1TSA\\s0 to use for creating the tim…'
complete -c ts -o no_nonce --description 'No nonce is specified in the request if this option is given.'
complete -c ts -o cert --description 'The \\s-1TSA\\s0 is expected to include its signing certificate in the response.'
complete -c ts -o in --description 'This option specifies a previously created time stamp request in \\s-1DER\\s0 f…'
complete -c ts -o out --description 'Name of the output file to which the request will be written.'
complete -c ts -o text --description 'If this option is specified the output is human-readable text format instead …'
complete -c ts -o section --description 'The name of the config file section containing the settings for the response …'
complete -c ts -o queryfile --description 'The name of the file containing a \\s-1DER\\s0 encoded time stamp request.'
complete -c ts -o passin --description 'Specifies the password source for the private key of the \\s-1TSA.'
complete -c ts -o signer --description 'The signer certificate of the \\s-1TSA\\s0 in \\s-1PEM\\s0 format.'
complete -c ts -o inkey --description 'The signer private key of the \\s-1TSA\\s0 in \\s-1PEM\\s0 format.'
complete -c ts -o chain --description 'The collection of certificates in \\s-1PEM\\s0 format that will all be included…'
complete -c ts -o token_in --description 'This flag can be used together with the -in option and indicates that the inp…'
complete -c ts -o token_out --description 'The output is a time stamp token (ContentInfo) instead of time stamp response…'
complete -c ts -o engine --description 'Specifying an engine (by its unique id string) will cause ts to attempt to ob…'
complete -c ts -o CApath --description 'The name of the directory containing the trusted \\s-1CA\\s0 certificates of th…'
complete -c ts -o CAfile --description 'The name of the file containing a set of trusted self-signed \\s-1CA\\s0 certif…'
complete -c ts -o untrusted --description 'Set of additional untrusted certificates in \\s-1PEM\\s0 format which may be ne…'

