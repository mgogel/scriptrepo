from BeautifulSoup import BeautifulSoup, SoupStrainer
import urllib
import re


start = time.clock()
url = "http://someplace.com"
html = urllib.urlopen(url).read()
product = SoupStrainer('div',{'id': 'products_list'})
soup = BeautifulSoup(html,parseOnlyThese=product)
for a in soup.findAll('a',{'title':re.compile('.+') }):
      print a.string