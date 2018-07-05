tell application "Contacts"
	repeat with i from 1 to the number of people
		set image of person i to null
	end repeat
end tell