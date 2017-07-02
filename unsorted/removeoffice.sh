osascript -e 'tell application "Microsoft Database Daemon" to quit'
rm -rf '/Applications/Microsoft Communicator.app/'
rm -rf '/Applications/Microsoft Messenger.app/'
rm -rf '/Applications/Microsoft Office 2011/'
rm -rf '/Applications/Remote Desktop Connection.app/'
rm -rf '/Library/Application Support/Microsoft/'
rm -rf '/Library/Automator/*Excel*'
rm -rf '/Library/Automator/*Office*'
rm -rf '/Library/Automator/*Outlook*'
rm -rf '/Library/Automator/*PowerPoint*'
rm -rf '/Library/Automator/*Word*'
rm -rf '/Library/Automator/Add New Sheet to Workbooks.action'
rm -rf '/Library/Automator/Create List from Data in Workbook.action'
rm -rf '/Library/Automator/Create Table from Data in Workbook.action'
rm -rf '/Library/Automator/Get Parent Presentations of Slides.action'
rm -rf '/Library/Automator/Get Parent Workbooks.action'
rm -rf '/Library/Automator/Set Document Settings.action'
rm -rf '/Library/Fonts/Microsoft/'
rm -rf '/Library/Internet Plug-Ins/*SharePoint*'
rm -rf '/Library/LaunchDaemons/*Microsoft*'
rm -rf '/Library/Preferences/*Microsoft*'
rm -rf '/Library/PrivilegedHelperTools/*Microsoft*'
OFFICERECEIPTS=$(pkgutil --pkgs=com.microsoft.office*)
for ARECEIPT in $OFFICERECEIPTS
do
	pkgutil --forget $ARECEIPT
done}