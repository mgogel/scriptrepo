#! /bin/csh
#
# Script to fix the permissions required for proper operation of
# ClamAV engine for ClamXav. This script must be run *after* the
# ClamAV engine has been installed.
#
# Based upon:
#   http://www.clamxav.com/index.php?page=byo
#
echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo "-    Attempting to fix the ClamXav file permissions   -"
echo "- Please type in an administrator password to proceed -"
echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - -"

sudo echo
set d = "/usr/local/clamXav"
echo "Fixing File ownership on $d"
echo find $d -exec chown root:admin {} \;
sudo find $d -exec chown root:admin {} \;
echo find $d -type d -exec chmod 0775 {} \;
sudo find $d -type d -exec chmod 0775 {} \;

echo
set d = "/usr/local/clamXav/share/clamav"
echo "Fixing File ownership/Permissions on $d"
echo find $d -exec chown clamav:clamav {} \;
sudo find $d -exec chown clamav:clamav {} \;
echo find $d -type d -exec chmod 0775 {} \;
sudo find $d -type d -exec chmod 0775 {} \;
echo find $d -type f -exec chmod 0666 {} \;
sudo find $d -type f -exec chmod 0666 {} \;

echo
set f = "/usr/local/clamXav/share/clamav/freshclam.log"
echo "Fixing File Permissions on $f"
if (! -e $f) then
   echo touch $f
   sudo touch $f
endif
echo chmod 666 $f
sudo chmod 666 $f

echo
set d = "/usr/local/clamXav/etc"
echo "Fixing File Permissions on $d"
echo find $d -type d -exec chmod 0755 {} \;
sudo find $d -type d -exec chmod 0755 {} \;
echo find $d -type f -exec chmod 0664 {} \;
sudo find $d -type f -exec chmod 0664 {} \;

echo
set d = "/usr/local/clamXav/bin"
echo "Fixing File Permissions on $d"
echo find $d -exec chmod 0755 {} \;
sudo find $d -exec chmod 0755 {} \;
set f = "/usr/local/clamXav/bin/freshclam"
echo chmod u+s $f
sudo chmod u+s $f
echo chown clamav $f
sudo chown clamav $f
set f = "/usr/local/clamXav/sbin/clamd"
echo chmod 755 $f
sudo chmod 755 $f

echo
echo "Creating/fixing custom folders..."
foreach d ("/usr/local/clamXav/run" "/usr/local/clamXav/log")
   if (! -d $d) then
      echo mkdir $d
      sudo mkdir $d
   endif
   echo chmod 777 $d
   sudo chmod 777 $d
end
set f = "/usr/local/clamXav/log/clamd.log"
touch $f
echo chown root:admin $f
sudo chown root:admin $f
echo chmod 666 $f
sudo chmod 666 $f

echo
echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo "-    Fixing File/Directory Permissions: Completed!    -"
echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - -"
exit (0)
