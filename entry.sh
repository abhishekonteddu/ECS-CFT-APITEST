#!/bin/bash


# Fetch the data using curl and print it to the console

#while (true); do curl -sk https://uselessfacts.jsph.pl/api/v2/facts/random|jq -r .text; sleep 60; done


for i in {1}; do curl -sk https://uselessfacts.jsph.pl/api/v2/facts/random|jq -r .text; sleep 60; done 
#to_stop container after the 1 logs

# for i in {1..2}; do curl -sk https://uselessfacts.jsph.pl/api/v2/facts/random|jq -r .text; sleep 60; done 
#to_stop container after the 2 logs
