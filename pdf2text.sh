#!/bin/bash
# Author: Swapneel Naphade, UMD
# Date: 4/14/2019
# Licence: GPL-3.0
# Usage: Convert PDF files to Text files
#	Install XpdfReader before running the script from: https://www.xpdfreader.com/
# Dependencies: XpdfReader

mkdir textfiles
shopt -s nullglob
for f in *.pdf
do
	echo "Converting pdf file to text - $f"
        pdftotext "$f" "textfiles/text.$f.txt" 
done
