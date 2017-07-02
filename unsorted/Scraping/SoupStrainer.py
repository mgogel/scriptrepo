from BeautifulSoup import BeautifulSoup, SoupStrainer
import re

# Find all links
links = SoupStrainer('a')
[tag for tag in BeautifulSoup(doc, parseOnlyThese=links)]

linkstodomain = SoupStrainer('a', href=re.compile('example.com/'))