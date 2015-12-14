#Stop iTunes listening to keyboard media keys
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist
#To enable it 
#launchctl load -w /System/Library/LaunchAgents/com.apple.rcd.plist

#Disable sound on boot
sudo nvram SystemAudioVolume="%00"
#Enable sound on boot
#sudo nvram -d SystemAudioVolume