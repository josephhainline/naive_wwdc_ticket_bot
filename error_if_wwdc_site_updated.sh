#!/bin/bash

wwdc_size=$(curl https://developer.apple.com/wwdc/tickets/ | wc -c)

if [[ $wwdc_size -eq 9349 ]]; then
  echo "WWDC site unchanged...";
else
  echo "WWDC site updated!";
  exit 1;
fi
