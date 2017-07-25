#!/bin/bash

echo "What is your last name?"
read LASTNAME

echo "How old are you?"
read AGE

echo "Which country, that you haven't visited, do you want to visit the most"
read COUNTRY

echo "What is your favorite ice cream flavor?"
read ICECREAM

echo "How many siblings do you have?"
read SIBLING

TIMESTAMP=`date --iso-8601=seconds`

IDENTIFIER="`echo $RANDOM$RANDOM$RANDOM | sha256sum | sed 's/[^0-9a-fA-F]//g' | sed -e 's/^/0x/'`"

# Write data to tmp.csv

echo "$IDENTIFIER,$TIMESTAMP,$LASTNAME,$AGE,$COUNTRY,$ICECREAM,$SIBLING" > ./tmp.csv

# Read out the data in the CSV file

cat ./tmp.csv

# Write data to database

bash ./$GHUSERNAME-write-to-db.sh

# Back up data

cat ./tmp.csv >> data-backup.csv

# Remove temp file

rm tmp.csv

...>> ./tmp.csv

cat tmp.csv
#create uniqge identifier

bash ./write-to-db.sh