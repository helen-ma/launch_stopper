# launch_stopper
Disables auto launching of annoying Avid and Adobe background app managers

Repository includes commandline how-to and customizable launch_stopper script. 


## Disable auto launching of Avid and Adobe background app managers:
### Avid application manager
App agent is loaded by default from /Library/LaunchAgents/com.avid.ApplicationManager.plist

In terminal run
```
launchctl unload -w /Library/LaunchAgents/com.avid.ApplicationManager.plist
```

### Avid background services manager
App agent is loaded by default from /Library/LaunchAgents/com.avid.backgroundservicesmanager.plist

In terminal run
```
launchctl unload -w /Library/LaunchAgents/com.avid.backgroundservicesmanager.plist
```

### Adobe creative cloud
App agent is loaded by default from /Library/LaunchAgents/com.adobe.AdobeCreativeCloud.plist

In terminal run
```
launchctl unload -w /Library/LaunchAgents/com.adobe.AdobeCreativeCloud.plist
```


