tell application "Address Book"
	tell application "Finder" to get folder of (path to me) as Unicode text
	set PathName to result
	--
	set npersons to count of people
	repeat with i from 1 to npersons
		set vcardinfo to (vcard of person i) as text
		set personName to (name of person i) as text
		set target_file to PathName & personName & ".vcf" as text
		try
			set the open_target_file to Â
				open for access file target_file with write permission
			set eof of the open_target_file to 0
			write vcardinfo to the open_target_file starting at eof
			close access the open_target_file
		on error theErrMsg number theErrNumber
			return theErrNumber & " " & personName
		end try
	end repeat
end tell

