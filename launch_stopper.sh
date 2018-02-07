#!/bin/bash
# disables application's auto launch at computer startup
# by Helen Ma
# Github: https://github.com/helen-ma

#Native apple agents/jobs/apps
SYS_AGENT_DIR="/System/Library/LaunchAgents"

#Proprietary software agents/jobs/apps
USR_AGENT_DIR="/Library/LaunchAgents"

#Subcommand Variable
HELP="USAGE: launch_stopper < load | unload >\n"

if [ -z $1 ]
then
	printf "$HELP"
	exit 1
fi

if [ $1 == "load" ]
then
	SUBCMD="load"

elif [ $1 == "unload"  ]
then
	SUBCMD="unload"
else
	printf "$HELP"
fi

#Software User LaunchAgents Prompts
input=""
printf " %s Adobe creative cloud manger (y/n)? " $SUBCMD
read input
if [ "$input" == "y" ]; then
	printf " %sed!\n" $SUBCMD
	launchctl $SUBCMD -w $USR_AGENT_DIR/com.adobe.AdobeCreativeCloud.plist
else
	printf " skipped\n"
fi

printf " %s Avid application manager (y/n)? " $SUBCMD
read input
if [ "$input" == "y" ]; then
	printf " %sed!\n" $SUBCMD
	launchctl $SUBCMD -w $USR_AGENT_DIR/com.avid.ApplicationManager.plist
else
	printf " skipped\n"
fi

printf " %s Avid background manager (y/n)? " $SUBCMD
read input
if [ "$input" == "y" ]; then
	printf " %sed!\n" $SUBCMD
	launchctl $SUBCMD -w $USR_AGENT_DIR/com.avid.backgroundservicesmanager.plist
else
	printf " skipped\n"
fi

printf " done!\n"
