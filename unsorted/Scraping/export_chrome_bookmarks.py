#!/usr/bin/python
# -*- coding: utf-8 -*-

# Chrome Bookmark Exporter, tested with OS X Chrome 7.0.517.41
# Jan Eden <software (a) janeden net>
# based on a Groovy script by Dan Fraser [http://www.capybara.org/~dfraser/archives/355]
# This file is public domain. Python 2.6 or newer required

import json
import datetime
import cgi
import os
import sys
import codecs

user = os.getlogin()
input_filename = "/Users/%s/Library/Application Support/Google/Chrome/Default/Bookmarks" % user
# modify if necessary
output_filename = "/Users/%s/Documents/chrome-bookmarks.html" % user

input_file = codecs.open(input_filename, encoding='utf-8')
bookmark_data = json.load(input_file)
output_file = codecs.open(output_filename, 'w', encoding='utf-8')

def print_bookmarks(bookmarks):
	for entry in bookmarks:
		if entry['type'] == 'folder':
			if not len(entry['children']) == 0:
				output_file.write(u'<DT><H3 FOLDED ADD_DATE="{0}">{1}</H3>'.format(entry['date_added'], entry['name']))
				next_folder = entry['children']
				output_file.write(u'<DL><p>')
				print_bookmarks(next_folder)
				output_file.write(u'</DL><p>')
		else:
			output_file.write(u'<DT><A DATE_ADDED="{0}" HREF="{1}">{2}</A>'.format(entry['date_added'], cgi.escape(entry['url']), entry['name']))


output_file.write(u'<!DOCTYPE NETSCAPE-Bookmark-file-1>\n<Title>Bookmarks</Title>\n<H1>Bookmarks</H1><DL>\n')

roots = bookmark_data['roots']

for entry in roots:
	output_file.write(u'<DT><H3 FOLDED ADD_DATE="{0}">{1}</H3>'.format(roots[entry]['date_added'], entry))
	print_bookmarks(roots[entry]['children'])
	output_file.write(u'</DL><p>')
	
output_file.write(u'</DL>')