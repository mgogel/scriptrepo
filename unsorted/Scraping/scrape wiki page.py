from bs4 import BeautifulSoup
import urllib.request

def main():
    url = 'http://yugioh.wikia.com/wiki/Card_Tips%3aBlue-Eyes_White_Dragon'
    page = urllib.request.urlopen(url)
    soup = BeautifulSoup(page.read())
    content = soup.find('div',id='mw-content-text')
    links = content.findAll('a')
    for link in links:
        print(link.get_text())

if __name__ == "__main__":
    main()