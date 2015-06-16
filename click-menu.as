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


# Switch iOS Simulator to iOS 7.1 - iPhone 4s
tell application "System Events" to tell process "iOS Simulator"
	set frontmost to true
	tell menu bar item "Hardware" of menu bar 1
		click
		tell menu item "Device" of menu 1
			click
			tell menu item "iOS 7.1" of menu 1
				click
				click menu item "iPhone 4s" of menu 1
			end tell
		end tell
	end tell
end tell
