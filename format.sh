#!/bin/bash
files=$(find . -type f -name "*.st")

#Trailing whitespace
sed -i -e 's/[ \t]*$//' $files

#Point before parentheses
sed -i 's/\.)/)/g' $files
sed -i 's/\.]/]/g' $files
sed -i 's/\.}/}/g' $files

#Space before parentheses
sed -i 's/[ ]\+)/)/g' $files
sed -i 's/[ ]\+]/]/g' $files
sed -i 's/[ ]\+}/}/g' $files

#Space after parentheses
sed -i 's/\[[ ]\+/[/g' $files
sed -i 's/([ ]\+/(/g' $files
sed -i 's/{[ ]\+/{/g' $files

#Second Line is new line (Doesn't work with comments)
#sed -i '3,3s/[^"\S]\+/\n&/' $files

#Remove Space after and before |
sed -i -E 's/\|(\s)*(\S*)(\s)*\|/\|\2\|/g' $files

#Old syntax to new syntax
sed -i 's/_/:=/g' $files

#Spaces befor dots (To strict right now)
#sed -i 's/[ ]\+\./\./g' $files

#Spaces around @
sed -i 's/[ ]*@[ ]*/ @ /g' $files

#Dot after return consistency
sed -i '$s/\.$//' $files
