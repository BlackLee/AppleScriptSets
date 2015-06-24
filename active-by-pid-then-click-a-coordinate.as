# osascript active-by-pid-then-click-a-coordinate.as $(ps -ef | grep Simulator$ | grep Xcode | awk '{print $2}') 50 60
on run argv
	tell application "System Events"
		set wantedProcess to the first process whose unix id is item 1 of argv
		set frontmost of wantedProcess to true
        tell wantedProcess to set p to position of the front window
        set x to (item 1 of p) + (item 2 of argv)
        set y to (item 2 of p) + (item 3 of argv)
        tell wantedProcess
            click at {x, y}
        end tell
	end tell
end run
