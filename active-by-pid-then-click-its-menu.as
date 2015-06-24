# osascript active-by-pid-then-click-its-menu.as $(ps -ef | grep Simulator$ | grep Xcode | awk '{print $2}') 'iOS 7.1' 'iPhone 4s'
on run argv
	tell application "System Events"
		set wantedProcess to the first process whose unix id is item 1 of argv
		set frontmost of wantedProcess to true
		delay 1
		tell wantedProcess
			tell menu bar item "Hardware" of menu bar 1
				click
				tell menu item "Device" of menu 1
					click
					tell menu item (item 2 of argv) of menu 1
						click
						click menu item (item 3 of argv) of menu 1
					end tell
				end tell
			end tell
		end tell
	end tell
end run
