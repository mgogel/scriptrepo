-- neat-contacts
-- Apple Contacts cleanup tool

-- If you've ever synced your Contacts with Facebook,
-- there's a chance that you got a really screwed up
-- Contacts as a result. This will help you clean
-- up your Contacts.

-- Three tools:
-- 1) Delete all birthdays (so they don't pop up in Mac/iPhone and stay there)
-- 2) Delete all Facebook fields
-- 3) Delete all Homepages for people that start with "fb://"

-- How to use it:
-- 1) BACKUP YOUR CONTACTS! File > Export > Contacts Archive...
-- 2) Figure out for which people you want to make the change.
--    You can leave it as it is to change everyone, or you can
--    do it for a specific person (maybe to just try it out).
-- 3) Decide which of these tools you want to use.
-- 4) For the tools that you don't want to use, simply delete them.
-- 5) Run the script.

-- Credits:
-- Facebook field deleter adapted from
-- http://macscripter.net/viewtopic.php?id=38956&p=2

tell application "Contacts"
	-- Define the changeset:
	
	-- We can either do all people:
	set peopleToChange to selection
	
	-- Only do a specific person (uncomment this below):
	-- set peopleToChange to people whose (first name) contains "John" and (last name) contains "Smith"
	
	-- For all people that match:
	repeat with thisPerson in peopleToChange
		
		
		
		-- START EDITING WHAT YOU WANT THE SCRIPT TO DO HERE --
		-- Delete the tools you don't want
		-- There are three tools:
		-- 
		-- 1) Delete birthdays
		-- 2) Delete Facebook contact field
		-- 3) Delete home pages for people that start with fb://
		
		
		
		-- START -- 1) Delete birthday for each person
		
		delete birth date of thisPerson
		
		-- END -- 1) Delete birthday for each person
		delete (every url of thisPerson whose value contains "/")
		
		delete address of thisPerson
		delete note of thisPerson
		delete home page of thisPerson
		
		delete nickname of thisPerson
		-- set {theIDs, theJabberHandles} to {id, Jabber handles} of every person
		
		-- delete skypeid of thisPerson
		-- 	delete SkypeURL of thisPerson
		-- 	delete skypeid of thisPerson
		
		delete AIM Handle of thisPerson
		-- delete IM of thisPerson
		
		
		repeat with thisPhone in every phone of thisPerson
			if label of thisPhone = "_Main_" then
				set label of thisPhone to "mobile"
			end if
			if label of thisPhone = "Main" then
				set label of thisPhone to "mobile"
			end if
			if label of thisPhone = "X-Main" then
				set label of thisPhone to "mobile"
			end if
			if label of thisPhone = "_MAIN" then
				set label of thisPhone to "mobile"
			end if
			if label of thisPhone = "Other" then
				set label of thisPhone to "mobile"
			end if
			if label of thisPhone = "_MAIN_" then
				set label of thisPhone to "mobile"
			end if
			if label of thisPhone = "(Null)" then
				set label of thisPhone to "mobile"
			end if
			if label of thisPhone = "(null)" then
				set label of thisPhone to "mobile"
			end if
			if label of thisPhone = "EMAIL" then
				set label of thisPhone to "mobile"
			end if
			if label of thisPhone = "Phone" then
				set label of thisPhone to "mobile"
			end if
			if label of thisPhone = "phone" then
				set label of thisPhone to "mobile"
			end if
		end repeat
		
		repeat with thisEmail in every email of thisPerson
			if label of thisEmail = "_Main_" then
				set label of thisEmail to "work"
			end if
			if label of thisEmail = "Main" then
				set label of thisEmail to "work"
			end if
			if label of thisEmail = "_MAIN" then
				set label of thisEmail to "work"
			end if
			if label of thisEmail = "Other" then
				set label of thisEmail to "work"
			end if
			if label of thisEmail = "_MAIN_" then
				set label of thisEmail to "work"
			end if
			if label of thisEmail = "EMAIL" then
				set label of thisEmail to "work"
			end if
			if label of thisEmail = "(null)" then
				set label of thisEmail to "work"
			end if
			if label of thisEmail = "INTERNET" then
				set label of thisEmail to "work"
			end if
			if label of thisEmail = "email" then
				set label of thisEmail to "work"
			end if
			if label of thisEmail = "other" then
				set label of thisEmail to "work"
			end if
			if label of thisEmail = "homepage" then
				set label of thisEmail to "work"
			end if
		end repeat
		save
		if related name ­ {} then
			-- has a social profile
			delete related name of thisPerson
		end if
		
		-- START -- Delete Facebook contact field for each person
		
		set SocialProfileList to (every social profile of thisPerson whose service name contains "Facebook")
		if SocialProfileList ­ {} then
			delete (url of every social profile of thisPerson)
			delete (user name of social profile of thisPerson)
			delete (nickname of social profile of thisPerson)
			delete (address of social profile of thisPerson)
			
			-- We have to repeat this again because sometimes
			-- Applescript converts a username into a URL
			-- And doesn't fully delete it
			delete (url of every social profile of thisPerson)
			delete (user name of social profile of thisPerson)
		end if
		
		-- END -- Delete Facebook contact field for each person
		
		
		
		-- START -- Delete Twitter contact field for each person
		
		set SocialProfileList to (every social profile of thisPerson whose service name contains "Twitter")
		if SocialProfileList ­ {} then
			delete (url of every social profile of thisPerson)
			delete (user name of social profile of thisPerson)
			
			-- We have to repeat this again because sometimes
			-- Applescript converts a username into a URL
			-- And doesn't fully delete it
			delete (url of every social profile of thisPerson)
			delete (user name of social profile of thisPerson)
		end if
		
		-- END -- Delete Twitter contact field for each person
		
		
		
		-- START -- Delete LinkedIn contact field for each person
		
		set SocialProfileList to (every social profile of thisPerson whose service name contains "LinkedIn")
		if SocialProfileList ­ {} then
			delete (url of every social profile of thisPerson)
			delete (user name of social profile of thisPerson)
			
			-- We have to repeat this again because sometimes
			-- Applescript converts a username into a URL
			-- And doesn't fully delete it
			delete (url of every social profile of thisPerson)
			delete (user name of social profile of thisPerson)
		end if
		
		set SocialProfileList to (every social profile of thisPerson whose service name contains "Foursquare")
		if SocialProfileList ­ {} then
			delete (url of every social profile of thisPerson)
			delete (user name of social profile of thisPerson)
			
			-- We have to repeat this again because sometimes
			-- Applescript converts a username into a URL
			-- And doesn't fully delete it
			delete (url of every social profile of thisPerson)
			delete (user name of social profile of thisPerson)
		end if
		
		
		-- END -- Delete LinkedIn contact field for each person
		
		
		
		-- START -- Delete "home pages" that look like fb://profile/12345
		
		set homePageList to (every url of thisPerson whose value contains "/")
		if SocialProfileList ­ {} then
			delete (every url of thisPerson whose value contains "/")
		end if
		
		
		
		-- END -- Delete "home pages" that look like fb://profile/12345
		
		
		log "OK - " & (first name of thisPerson) & " " & (last name of thisPerson)
		
		save
		
	end repeat
end tell