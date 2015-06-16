# Finder -> Go -> Recent Folders -> Clear Menu
tell application "System Events" to tell process "Finder"
	set frontmost to true
	tell menu bar item "Go" of menu bar 1
		click
		tell menu item "Recent Folders" of menu 1
			click
			click menu item "Clear Menu" of menu 1
		end tell
	end tell
end tell
