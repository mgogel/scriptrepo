from BeautifulSoup import BeautifulSoup
from BeautifulSoup import Tag

count = 1
links_dict = {}
soup = BeautifulSoup(text)
for link_tag in soup.findAll('a'):
  if link_tag['href'] and len(link_tag['href']) > 0:
    links_dict[count]  = link_tag['href']  
    newTag = Tag(soup, "a", link_tag.attrs)
    newTag.insert(0, ''.join([''.join(link_tag.contents), "[%s]" % str(count)]))
    link_tag.replaceWith(newTag)
    count += 1