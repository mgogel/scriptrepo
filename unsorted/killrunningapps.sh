/bin/bash

killall Finder "$app" > /dev/null 2>&1
killall Dock "$app" > /dev/null 2>&1
killall Mail "$app" > /dev/null 2>&1
killall Safari "$app" > /dev/null 2>&1
killall iTunes "$app" > /dev/null 2>&1
killall iCal "$app" > /dev/null 2>&1
killall Address\ Book "$app" > /dev/null 2>&1
killall SystemUIServer "$app" > /dev/null 2>&1
killall Twitter; do "$app" > /dev/null 2>&1
killall "$app" > /dev/null 2>&1
done
echo "Done. Note that some of these changes require a logout/restart to take effect."
