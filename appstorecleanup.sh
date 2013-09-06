#!/bin/sh
#
# We are first going to reset three plists. Copy the first line, paste it into your 
#Terminal window, and hit enter. Repeat for the remaining lines, (again, separately).
#
rm -f ~/Library/Preferences/com.apple.appstore.plist
rm -f ~/Library/Preferences/com.apple.storeagent.plist
rm -f ~/Library/Cookies/com.apple.appstore.plist
#
# Next we are going to reset two caches. Again, copy and paste each line separately 
# into Terminal, hitting enter after each.
#
rm -fr ~/Library/Caches/com.apple.appstore
rm -fr ~/Library/Caches/com.apple.storeagent
