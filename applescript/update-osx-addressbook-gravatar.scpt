-- Set selected Address Book contact pictures from Gravatar.
-- Released under GPL.
-- by Doug Smith, http://smithsrus.com
-- Fixed md5_email routine by Tatsuhiko Miyagawa


-- Grab the selected records and see how many there are.
tell application "Address Book"
	set selected_contacts to selection
	set count_selected to number of items in selected_contacts
	
	-- Bail out if there are no records selected. Otherwise ask about how to deal 
	-- with contacts having existing pictures.
	if count_selected < 1 then
		tell me to display dialog "You must first select some Address Book contacts." buttons {"Cancel"} default button 1 cancel button 1
	else
		if count_selected = 1 then
			set plural to ""
		else
			set plural to "s"
		end if
		tell me to set user_result to display dialog "We're about to try updating " & count_selected & " selected Address Book contact picture" & plural & " from Gravatar. Would you like to overwrite existing pictures or skip those contacts?" buttons {"Cancel", "Overwrite Existing", "Skip Existing"} cancel button 1 default button 1 with icon caution
		set overwrite to (button returned of user_result contains "Overwrite")
	end if
	
	-- Step through each contact and find Gravatars.
	with timeout of 600 seconds
		repeat with one_contact in selected_contacts
			if not ((image of one_contact exists) and not overwrite) then
				
				-- Step through the contact's e-mail addresses.
				set all_emails to emails of one_contact
				repeat with one_email_record in all_emails
					set one_email_address to value of one_email_record
					
					set grav_file to (my get_gravatar(my trim_email(one_email_address)))
					
					-- If we have a Gravatar image add it to the contact.
					if grav_file is not "" then
						set image of one_contact to my get_pict_data(grav_file)
					end if
				end repeat
			end if
		end repeat
	end timeout
	tell me to display dialog "Done. You may need to select a different record to force Address Book to refresh the screen before changes show." buttons {"Okay"} default button 1
end tell


-- Trim junk off the end of the e-mail address field. Assume space separated.
on trim_email(email_address)
	set AppleScript's text item delimiters to " "
	return text item 1 of email_address
end trim_email


-- Look up a Gravatar from an e-mail address and save to a file.
on get_gravatar(email_address)
	-- Calculate an MD5 for the e-mail address.
	set md5_email to do shell script "md5 -q -s `echo " & email_address & " | tr '[:upper:]' '[:lower:]'`"
	
	-- Construct the Gravatar URL. Max Address Book picture size stored is 218 pixels.
	set grav_url to quoted form of ("http://gravatar.com/avatar/" & md5_email & "?s=218&d=" & "%22%22" as text)
	
	-- Make a file name in which to temporarily save the Gravatar.
	set grav_file to (path to temporary items) & "gravatar" & md5_email & ".jpg" as text
	set grav_POSIX_file to quoted form of POSIX path of grav_file
	
	-- Download the Gravatar image to the temporary file with a timeout of 10 seconds.
	do shell script "curl " & grav_url & " -m 10 -o " & grav_POSIX_file
	
	tell application "System Events"
		if exists file grav_file then
			return grav_file
		else
			return ""
		end if
	end tell
end get_gravatar

-- Read the picture data into a variable in TIFF format then delete the file.
on get_pict_data(grav_file)
	tell application "System Events"
		set file_ref to open for access grav_file
		set pict_data to read file_ref as "TIFF"
		close access file_ref
		
		delete file grav_file
		return pict_data
	end tell
end get_pict_data