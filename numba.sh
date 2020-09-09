#!/bin/bash

## WRITTEN BY ACTIVE
## HTML2TEXT IS REQUIRED!
## INSTALL: "apt-get install html2text" OR "brew install html2text" IF YOU USE MACOS!

echo -e "NumBASH! - Written by Active"
echo -e "Enter the area code below:"
read ac
echo -e "Output to:"
read out
curl -X GET "https://www.allareacodes.com/$ac" | html2text > temptxt.txt

	LANG=C grep -a -B 4 "New Cingular Wireless PCS" temptxt.txt >> temp2.txt
	LANG=C grep -a -B 4 "T-Mobile USA" temptxt.txt >> temp2.txt
	LANG=C grep -a -B 4 "Sprint Spectrum" temptxt.txt >> temp2.txt
	LANG=C fgrep -a "$ac" temp2.txt > $out
echo -e "Output written to $out!"
rm temptxt.txt
rm temp2.txt
