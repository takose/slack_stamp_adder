#!usr/bin/env bash

yaml=emojis.yaml

echo "title: emoji" > $yaml
echo "emojis:" >> $yaml

for png in png/*.png
do
  p=$(echo $png | awk -F/ '{ print $NF }'g | awk -F. '{ print $1 }')
  echo "  - name: $p" >> $yaml
  echo "    src: https://raw.githubusercontent.com/takose/slack_stamp_adder/master/$png" >> $yaml
done
