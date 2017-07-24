#!/bin/bash

echo "What is your last name?"
read LASTNAME

echo "In what year were you born?"
read BORNYEAR

echo "Which country, that you haven't visited, do you want to visit the most"
read VISITCOUNTRY

echo ""

echo ""
TIMESTAMP=`date --iso-8601=seconds`

IDENTIFIER = "`echo '$RANDOM$RANDOM$RANDOM' | sha256sum | sed 's/[\t\s-]//g'`"
echo "$"

...>> ./tmp.csv

cat tmp.csv
#create uniqge identifier

bash ./write-to-db.sh