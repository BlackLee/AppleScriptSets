tell application "System Events" to tell process "Finder"
	set frontmost to true
	tell menu bar item "File" of menu bar 1
		click
		click menu item "Open With" of menu 1
	end tell
end tell
