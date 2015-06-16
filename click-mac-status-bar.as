# turn wi-fi on
tell application "System Events" to tell process "SystemUIServer"
	tell (menu bar item 1 of menu bar 1 where description is "network")
		click
		click menu item "Turn Wi-Fi On" of menu 1
	end tell
end tell
