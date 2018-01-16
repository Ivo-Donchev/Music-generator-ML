#!/bin/bash

i="0"

while read link; do
  youtube-dl --extract-audio --audio-format mp3 $link --output "../songs/song${i}.mp3"

  i=$[$i+1]
done <links.txt

