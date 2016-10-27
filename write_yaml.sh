#!usr/bin/env bash

yaml=node_modules/emojipacks/packs/emojis.yaml

echo "title: devicon" > $yaml
echo "emojis:" >> $yaml

for png in png/*.png
do
  echo "  - name: $png" >> $yaml
  echo "   src: https://raw.githubusercontent.com/takose/slack_stamp_adder/master/png/$png" >> $yaml
done
