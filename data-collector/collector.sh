#!/bin/bash

i="0"

while read link; do
  youtube-dl --extract-audio --audio-format wav $link --output "../songs/song${i}.wav"

  i=$[$i+1]
done <links.txt

