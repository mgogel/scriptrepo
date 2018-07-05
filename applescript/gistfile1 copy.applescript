tell application "Contacts"
	repeat with i from 1 to ((count every person))
		-- repeat with thePerson in every person
		-- set currentPerson to thePerson
		set currentPerson to person i
		set telefonos to phone of currentPerson
		set mails to email of currentPerson
		set nombre to name of currentPerson
		if telefonos is {} then
			if mails is {} then
				log "Removing " & nombre
				delete currentPerson
				save
			end if
		end if
	end repeat
end tell