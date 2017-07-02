import urllib2
from bs4 import BeautifulSoup
html = urllib2.urlopen( "http://www.google.com" ).read()
soup = BeautifulSoup( html )