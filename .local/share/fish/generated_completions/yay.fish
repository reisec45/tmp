# yay
# Autogenerated from man page /usr/lib/jvm/default/man/man8/yay.8.gz
complete -c yay -s Y -l yay --description 'Perform yay specific operations.'
complete -c yay -s P -l show --description 'Perform yay specific print operations.'
complete -c yay -s G -l getpkgbuild --description 'Downloads PKGBUILD from ABS or AUR.'
complete -c yay -s S -o Si -o Sl -o Ss -o Su -o Sc -o Qu --description 'These operations are extended to support both AUR and repo packages.'
complete -c yay -s R --description 'Yay will also remove cached data about devel packages.'
complete -c yay -l repo --description 'Assume all targets are from the repositories.'
complete -c yay -s a -l aur --description 'Assume all targets are from the AUR.'
complete -c yay -l gendb --description 'Generate development package database.'
complete -c yay -s c -l clean --description 'Remove unneeded dependencies.'
complete -c yay -l complete --description 'Print a list of all AUR and repo packages.'
complete -c yay -s f -l fish --description 'During complete adjust the output for the fish shell.'
complete -c yay -s d -l defaultconfig --description 'Print default yay configuration.'
complete -c yay -s g -l currentconfig --description 'Print current yay configuration.'
complete -c yay -s n -l numberupgrades --description 'Deprecated, use yay -Qu and wc -l instead%.'
complete -c yay -s s -l stats --description 'Displays information about installed packages and system health.'
complete -c yay -s u -l upgrades --description 'Deprecated, use yay -Qu instead%.'
complete -c yay -s w -l news --description 'Print new news from the Archlinux homepage.'
complete -c yay -s q -l quiet --description 'Only show titles when printing news.'
complete -c yay -l force --description 'Force download for packages that already exist in the current directory.'
complete -c yay -l save --description 'Causes the following options to be saved back to the config file.'
complete -c yay -l aururl --description 'Set an alternative AUR URL.'
complete -c yay -l builddir --description 'Directory to use for Building AUR Packages.'
complete -c yay -l absdir --description 'Directory used to store downloads from the ABS.'
complete -c yay -l editor --description 'Editor to use when editing PKGBUILDs.'
complete -c yay -l editorflags --description 'Passes arguments to the editor.'
complete -c yay -l makepkg --description 'The command to use for makepkg calls.'
complete -c yay -l pacman --description 'The command to use for pacman calls.'
complete -c yay -l tar --description 'The command to use for bsdtar calls.'
complete -c yay -l git --description 'The command to use for git calls.'
complete -c yay -l gpg --description 'The command to use for gpg calls.'
complete -c yay -l config --description 'The pacman config file to use.'
complete -c yay -l makepkgconf --description 'The config file for makepkg to use%.'
complete -c yay -l nomakepkgconf --description 'Reset the makepkg config file back to its default.'
complete -c yay -l requestsplitn --description 'The maximum amount of packages to request per AUR query.'
complete -c yay -l completioninterval --description 'Time in days to refresh the completion cache.'
complete -c yay -l sortby --description 'Sort AUR results by a specific field during search.'
complete -c yay -l searchby --description 'Search for AUR packages by querying the specified field.'
complete -c yay -l answerclean --description 'Set a predetermined answer for the clean build menu question.'
complete -c yay -l answerdiff --description 'Set a predetermined answer for the edit diff menu question.'
complete -c yay -l answeredit --description 'Set a predetermined answer for the edit pkgbuild menu question.'
complete -c yay -l answerupgrade --description 'Set a predetermined answer for the upgrade menu question.'
complete -c yay -l noanswerclean --description 'Unset the answer for the clean build menu.'
complete -c yay -l noanswerdiff --description 'Unset the answer for the diff menu.'
complete -c yay -l noansweredit --description 'Unset the answer for the edit pkgbuild menu.'
complete -c yay -l noanswerupgrade --description 'Unset the answer for the upgrade menu.'
complete -c yay -l cleanmenu --description 'Show the clean menu.'
complete -c yay -l diffmenu --description 'Show the diff menu.'
complete -c yay -l editmenu --description 'Show the edit menu.'
complete -c yay -l upgrademenu --description 'Show a detailed list of updates in a similar format to VerbosePkgLists.'
complete -c yay -l nocleanmenu --description 'Do not show the clean menu.'
complete -c yay -l nodiffmenu --description 'Do not show the diff menu.'
complete -c yay -l noeditmenu --description 'Do not show the edit menu.'
complete -c yay -l noupgrademenu --description 'Do not show the upgrade menu.'
complete -c yay -l askremovemake --description 'Ask to remove makedepends after installing packages.'
complete -c yay -l removemake --description 'Remove makedepends after installing packages.'
complete -c yay -l noremovemake --description 'Do not remove makedepends after installing packages.'
complete -c yay -l topdown --description 'Display repository packages first and then AUR packages.'
complete -c yay -l bottomup --description 'Show AUR packages first and then repository packages.'
complete -c yay -l devel --description 'During sysupgrade also check AUR development packages for updates.'
complete -c yay -l nodevel --description 'Do not check for development packages updates during sysupgrade.'
complete -c yay -l gitclone --description 'Use git to download and update PKGBUILDs.'
complete -c yay -l nogitclone --description 'Download and update PKGBUILDs using tarballs.'
complete -c yay -l cleanafter --description 'Remove package sources after successful Install.'
complete -c yay -l nocleanafter --description 'Do not remove package sources after successful Install.'
complete -c yay -l timeupdate --description 'During sysupgrade also compare the build time of installed packages against t…'
complete -c yay -l notimeupdate --description 'Do not consider build times during sysupgrade.'
complete -c yay -l redownload --description 'Always download pkgbuilds of targets even when a copy is available in cache.'
complete -c yay -l redownloadall --description 'Always download pkgbuilds of all AUR packages even when a copy is available i…'
complete -c yay -l noredownload --description 'When downloading pkgbuilds if the pkgbuild is found in cache and is equal or …'
complete -c yay -l provides --description 'Look for matching providers when searching for AUR packages.'
complete -c yay -l noprovides --description 'Do not look for matching providers when searching for AUR packages.'
complete -c yay -l pgpfetch --description 'Prompt to import unknown PGP keys from the validpgpkeys field of each PKGBUIL…'
complete -c yay -l nopgpfetch --description 'Do not prompt to import unknown PGP keys.'
complete -c yay -l useask --description 'Use pacman\'s --ask flag to automatically confirm package conflicts.'
complete -c yay -l nouseask --description 'Manually resolve package conflicts during the install.'
complete -c yay -l combinedupgrade --description 'During sysupgrade, Yay will first perform a refresh, then show its combined m…'
complete -c yay -l nocombinedupgrade --description 'During sysupgrade, Pacman -Syu will be called, then the AUR upgrade will star…'
complete -c yay -l batchinstall --description 'When building and installing AUR packages instead of installing each package …'
complete -c yay -l nobatchinstall --description 'Always install AUR packages immediately after building them.'
complete -c yay -l rebuild --description 'Always build target packages even when a copy is available in cache.'
complete -c yay -l rebuildall --description 'Always build all AUR packages even when a copy is available in cache.'
complete -c yay -l rebuildtree --description 'When installing an AUR package rebuild and reinstall all of its AUR dependenc…'
complete -c yay -l norebuild --description 'When building packages if the package is found in cache and is an equal versi…'
complete -c yay -l mflags --description 'Passes arguments to makepkg.'
complete -c yay -l gpgflags --description 'Passes arguments to gpg.'
complete -c yay -l sudoloop --description 'Loop sudo calls in the background to prevent sudo from timing out during long…'
complete -c yay -l nosudoloop --description 'Do not loop sudo calls in the background.'

