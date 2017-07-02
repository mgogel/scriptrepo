import urllib
import urllib.request
from bs4 import BeautifulSoup

soup =BeautifulSoup(urllib.request.urlopen('http://yugioh.wikia.com/wiki/Card_Tips:Blue-Eyes_White_Dragon').read())

for row in soup('span', {'class' : 'mw-headline'})[0].tbody('tr'):
      tds = row('td')
      print(tds[0].string, tds[1].string, tds[2].string)

      for headline in soup('span', {'class' : 'mw-headline'}):
    print(headline.text)
    links = headline.find_next('ul').find_all('a')
    for link in links:
        print('*', link.text)        