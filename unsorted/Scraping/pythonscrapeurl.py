import libxml2, sys

doc = libxml2.parseFile("source.xml")
ctxt = doc.xpathNewContext()
res = ctxt.xpathEval("//@href")
print len(res)
count = 0
twitters = []
feeds = []

for href in res:
    content = href.content
    print content
    if count % 2 == 0:
        twitters.append(content)
    else:
        feeds.append(content)
    count = count + 1
print twitters
print feeds
doc.freeDoc()
ctxt.xpathFreeContext

print "Writing file"
f = open('output.xml', 'w')
f.write('<?xml version="1.0" encoding="UTF-8"?>')
f.write('<opml version="1.0">')
f.write('<head><title>Top 200</title></head><body>')
for url in feeds:
    f.write('<outline xmlUrl=\"%s\"/>' % (url))
f.write('</body></opml>')
f.close()