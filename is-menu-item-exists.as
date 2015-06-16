# check if a VPN connection is exists or not.

tell application "System Events" to tell process "SystemUIServer"
	tell (menu bar item 1 of menu bar 1 where description is "vpn")
		click
		if menu item "Connect TW1" of menu 1 exists then
			#display dialog "menu item exists! VPN connection must broken! Go connect it!"
			click menu item "Connect TW1 PPTP" of menu 1
		else
			#display dialog "menu item not exist!"
		end if
	end tell
end tell
