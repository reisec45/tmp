# cec-ctl
# Autogenerated from man page /usr/lib/jvm/default/man/man1/cec-ctl.1.gz
complete -c cec-ctl -s d -l device --description 'Use device <dev> as the CEC device.'
complete -c cec-ctl -s v -l verbose --description 'Turn on verbose reporting.'
complete -c cec-ctl -s w -l wall-clock --description 'Show timestamps as wall-clock time.  This also turns on verbose reporting.'
complete -c cec-ctl -s h -l help --description 'Prints the help message.'
complete -c cec-ctl -s p -l phys-addr --description 'Use this physical address.  The address can be a number (e. g.'
complete -c cec-ctl -s o -l osd-name --description 'Use this OSD name.  The maximum length is 14 characters.'
complete -c cec-ctl -s V -l vendor-id --description 'Use this vendor ID.  The vendor ID is a number from 0x0 to 0xffffff.'
complete -c cec-ctl -s l -l logical-address --description 'Show first configured logical address or nothing if the device is unconfigure…'
complete -c cec-ctl -s L -l logical-addresses --description 'Show all configured logical addresses or nothing if the device is unconfigure…'
complete -c cec-ctl -s C -l clear --description 'Clear all logical addresses, leaving the CEC device unconfigured.'
complete -c cec-ctl -s n -l no-reply --description 'By default when sending a CEC message that expects a reply this utility will …'
complete -c cec-ctl -s N -l non-blocking --description 'Transmit messages in non-blocking mode.'
complete -c cec-ctl -s t -l to --description 'Send the message to the given logical address (0-15).'
complete -c cec-ctl -s f -l from --description 'Send message from the given logical address.'
complete -c cec-ctl -s r -l show-raw --description 'Show the raw CEC message in hex.'
complete -c cec-ctl -s s -l skip-info --description 'Skip the Driver Info output section.'
complete -c cec-ctl -s S -l show-topology --description 'Show the CEC topology, detecting which other CEC devices are on the CEC bus.'
complete -c cec-ctl -s P -l poll --description 'Send a poll message.'
complete -c cec-ctl -s T -l trace --description 'Trace all called ioctls.  Useful for debugging.'
complete -c cec-ctl -l 'cec-version-1.4' --description 'Use CEC Version 1. 4 instead of 2. 0 (the default).'
complete -c cec-ctl -l allow-unreg-fallback --description 'Allow fallback to Unregistered if all logical addresses are claimed.'
complete -c cec-ctl -l no-rc-passthrough --description 'Disable the RC passthrough.'
complete -c cec-ctl -l reply-to-followers --description 'The reply will be sent to followers as well.'
complete -c cec-ctl -l timeout --description 'Set the reply timeout in milliseconds (default is 1000 ms).'
complete -c cec-ctl -l list-ui-commands --description 'List all UI commands that can be used with option --control-pressed.'
complete -c cec-ctl -l tv --description 'Configure the CEC adapter as a TV.'
complete -c cec-ctl -l record --description 'Configure the CEC adapter as a recording and playback device.'
complete -c cec-ctl -l tuner --description 'Configure the CEC adapter as a tuner device.'
complete -c cec-ctl -l playback --description 'Configure the CEC adapter as a playback device.'
complete -c cec-ctl -l audio --description 'Configure the CEC adapter as an audio system device.'
complete -c cec-ctl -l processor --description 'Configure the CEC adapter as a processor device.'
complete -c cec-ctl -l switch --description 'Configure the CEC adapter as a pure CEC switch.'
complete -c cec-ctl -l cdc-only --description 'Configure the CEC adapter as a CDC-only device.'
complete -c cec-ctl -l unregistered --description 'Configure the CEC adapter as an unregistered device.'
complete -c cec-ctl -l feat-set-osd-string --description 'Signal the Set OSD String feature.'
complete -c cec-ctl -l feat-deck-control --description 'Signal the Deck Control feature.'
complete -c cec-ctl -l feat-set-audio-rate --description 'Signal the Set Audio Rate feature.'
complete -c cec-ctl -l feat-sink-has-arc-tx --description 'Signal the sink ARC Tx feature.'
complete -c cec-ctl -l feat-source-has-arc-rx --description 'Signal the source ARC Rx feature.'
complete -c cec-ctl -l rc-tv-profile-1 --description 'Signal RC TV Profile 1.'
complete -c cec-ctl -l rc-tv-profile-2 --description 'Signal RC TV Profile 2.'
complete -c cec-ctl -l rc-tv-profile-3 --description 'Signal RC TV Profile 3.'
complete -c cec-ctl -l rc-tv-profile-4 --description 'Signal RC TV Profile 4.'
complete -c cec-ctl -l rc-src-dev-root --description 'Signal that the RC source has a Dev Root Menu.'
complete -c cec-ctl -l rc-src-dev-setup --description 'Signal that the RC source has a Dev Setup Menu.'
complete -c cec-ctl -l rc-src-contents --description 'Signal that the RC source has a Contents Menu.'
complete -c cec-ctl -l rc-src-media-top --description 'Signal that the RC source has a Media Top Menu.'
complete -c cec-ctl -l rc-src-media-context --description 'Signal that the RC source has a Media Context Menu.'
complete -c cec-ctl -s m -l monitor --description 'Start monitoring CEC traffic.'
complete -c cec-ctl -s M -l monitor-all --description 'Start monitoring all CEC traffic.'
complete -c cec-ctl -l monitor-pin --description 'Start monitoring and analyzing the low-level CEC pin transitions.'
complete -c cec-ctl -l monitor-time --description 'Monitor for the given number of seconds, then exit.'
complete -c cec-ctl -l ignore --description 'Ignore messages from logical address <la> and opcode <opcode> when monitoring.'
complete -c cec-ctl -l store-pin --description 'Store the CEC pin events to the given file.'
complete -c cec-ctl -l analyze-pin --description 'Read and analyze the CEC pin events from the given file.'
complete -c cec-ctl -l help-all --description 'Prints the help message for all options.'
complete -c cec-ctl -l help-audio-rate-control --description 'Show help for the Audio Rate Control feature.'
complete -c cec-ctl -l help-audio-return-channel-control --description 'Show help for the Audio Return Channel Control feature.'
complete -c cec-ctl -l help-capability-discovery-and-control --description 'Show help for the Capability Discovery and Control feature.'
complete -c cec-ctl -l help-deck-control --description 'Show help for the Deck Control feature.'
complete -c cec-ctl -l help-device-menu-control --description 'Show help for the Device Menu Control feature.'
complete -c cec-ctl -l help-device-osd-transfer --description 'Show help for the Device OSD Transfer feature.'
complete -c cec-ctl -l help-dynamic-audio-lipsync --description 'Show help for the Dynamic Audio Lipsync feature.'
complete -c cec-ctl -l help-htng --description 'Show help for the Hospitality Profile Next Generation feature.'
complete -c cec-ctl -l help-osd-display --description 'Show help for the OSD Display feature.'
complete -c cec-ctl -l help-one-touch-play --description 'Show help for the One Touch Play feature.'
complete -c cec-ctl -l help-one-touch-record --description 'Show help for the One Touch Record feature.'
complete -c cec-ctl -l help-power-status --description 'Show help for the Power Status feature.'
complete -c cec-ctl -l help-remote-control-passthrough --description 'Show help for the Remote Control Passthrough feature.'
complete -c cec-ctl -l help-routing-control --description 'Show help for the Routing Control feature.'
complete -c cec-ctl -l help-standby --description 'Show help for the Standby feature.'
complete -c cec-ctl -l help-system-audio-control --description 'Show help for the System Audio Control feature.'
complete -c cec-ctl -l help-system-information --description 'Show help for the System Information feature.'
complete -c cec-ctl -l help-timer-programming --description 'Show help for the Timer Programming feature.'
complete -c cec-ctl -l help-tuner-control --description 'Show help for the Tuner Control feature.'
complete -c cec-ctl -l feat-record-tv-screen --description 'Signal the Record TV Screen feature.'
complete -c cec-ctl -l help-vendor-specific-commands --description 'Show help for the Vendor Specific Commands feature.'

