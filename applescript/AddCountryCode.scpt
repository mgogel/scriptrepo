(*

AddCountryCode.scpt
=====================

Customization of Andreas Amann's script posted on https://discussions.apple.com/message/9169756#9169756

Description
------------

Adds RS country code prefix (+381) to all phonebook entries with leading zero (RS local number format): 063123456 -> +38163123456

Back up your Address book before running this script, your mileage may vary!!!

Usage
------

Paste to AppleScript Editor and click "Run".

*)

tell application "Contacts"
	repeat with eachPerson in people
		repeat with eachNumber in phones of eachPerson
			set theNum to (get value of eachNumber)
			if (theNum does not start with "+" and theNum does not start with "381" and theNum starts with "0") then
				-- log "+381" & (get text 2 thru (length of theNum) of theNum)
				set value of eachNumber to "+381" & (get text 2 thru (length of theNum) of theNum)
			end if
		end repeat
	end repeat
	save
end tell