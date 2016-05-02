# osascript switch-shadowsocks.as 'example.com:8388'
on run argv
    tell application "System Events"
        tell application process "ShadowsocksX" of application "System Events"
            tell menu bar item 1 of menu bar 1
                click
                tell menu item "Servers" of menu 1
                    click
                    tell menu item (item 1 of argv) of menu 1
                        click
                    end tell
                end tell
            end tell
        end tell
    end tell
end run
