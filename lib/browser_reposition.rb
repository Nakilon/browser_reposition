module BrowserReposition
  def reposition
    require "cfpropertylist"
    bounds = `osascript -e 'tell application "Finder"' -e "bounds of window of desktop" -e "end tell"`.split.map(&:to_i)
    external_displays = CFPropertyList::List.new(file: "/Library/Preferences/com.apple.windowserver.plist").
      value.value["DisplayAnyUserSets"].value.flat_map(&:value).map{ |i| i.value.values_at("OriginX", "OriginY", "Width", "Height").map(&:value) }.
      select{ |ox, oy, w, h| [ox, oy] != [0, 0] && ox >= bounds[0] && oy >= bounds[1] && ox + w <= bounds[2] && oy + h <= bounds[3] }
    case external_displays.size
      when 0
      when 1 ; browser.position = {left: external_displays.first[0], top: external_displays.first[1]}
      else ; fail "supported number of external displays is 0 or 1"
    end
  end
end
