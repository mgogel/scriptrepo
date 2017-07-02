#!/usr/bin/env python
# Extracts (downloads) all MP3 files listed at the given URL to the current directory.

import sys, re, os, urllib
from mechanize import Browser
from BeautifulSoup import BeautifulSoup

if len(sys.argv) != 2: # require a URL to scan
	sys.exit("Must specify a URL")

url = sys.argv[1]
print "Scanning: %s " % url
print

mech = Browser()
page = mech.open(url)
html = page.read()
soup = BeautifulSoup(html)
 
# Extract all anchors on the page that include the string ".mp3"
anchors = soup.findAll(attrs={'href' : re.compile(".mp3")})
for a in anchors:
    mp3link = a['href'] # Get the value of the href, not the whole tag/container!
    
    # To get an output filename, split the URL on slashes and grab the last array item
    urlfrags = mp3link.split('/')
    save_as = urlfrags[len(urlfrags)-1] # Resolves to e.g. urlfrags[4]
    print mp3link
    print "Saving: %s" % save_as
    print
    # The actual download
    urllib.urlretrieve(mp3link, save_as)