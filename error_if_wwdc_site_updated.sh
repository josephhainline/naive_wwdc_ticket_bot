#!/bin/bash

num_2013_lines=$(curl https://developer.apple.com/wwdc/tickets/ | grep 2013 -n | wc -l)

if [[ $num_2013_lines -le 1 ]]; then
  echo "WWDC site unchanged...";
else
  echo "WWDC site updated!";
  exit 1;
fi
