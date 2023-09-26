set filterList to {}

set profiles to do shell script "'/Library/Application Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli' --list-profile-names"
set profileList to paragraphs of profiles

set currentProfile to do shell script "'/Library/Application Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli' --show-current-profile-name"


repeat with profile in profileList
	if profile is currentProfile then -- Can't figure out why it's not matching
		set thisReccord to {title:(">>>  " & profile), arg:(profile)}
		set the end of filterList to thisReccord -- That should point to the currently active profile, however it's not working
	else
		set thisReccord to {title:(profile), arg:(profile)}
		set the end of filterList to thisReccord
	end if
	
end repeat

set |items| to {|items|:filterList}

tell application "JSON Helper"
	set theList to make JSON from Â
		|items| with pretty printing
end tell
