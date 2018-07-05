tell application "Address Book"
	
	try
		set picGroup to group "Contacts with Pictures"
	on error
		set picGroup to make new group with properties {name:"Contacts with Pictures"}
	end try
	
	
	
	repeat with ThisOne in people
		if (count of image of ThisOne) > 0 then
			add ThisOne to picGroup
		end if
	end repeat
	save
	
	"Done"
	
end tell