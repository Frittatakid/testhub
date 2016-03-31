#! /bin/bash

for file in *.md
do
	pandoc	--standalone \
			--from markdown \
			--to html \
			--output ${file%.md}.html \
			$file
	xmllint ${file%.md}.html --noout --valid
done
