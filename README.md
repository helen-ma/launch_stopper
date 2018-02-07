# launch_stopper
Disables auto launching of annoying Avid and Adobe background app managers.

Repository includes launch_stopper.sh and commandline how-to. 
## Features 
Download and run launch_stopper.sh in terminal
```
bash path/file/launch_stopper.sh
```
User will be prompted with
```
USAGE: launch_stopper < load | unload >
```
'load' endables and 'unload' disables agents/apps/jobs from auto launching at startup.
Enter arguement after file path, ie
```
bash path/file/launch_stopper.sh unload
```
Answer prompts and done!


## Disable auto launching of Avid and Adobe background app managers using launchctl:
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

