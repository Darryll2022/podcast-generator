#!/bin/bash

echo "=============="
#track who is using the action, by saying their username
#use git
git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"
#adding this to the safe list of directories to run git ops here
git config --global --add safe.directory /github/workspace
#use wtv python u installed here. link is as per dockerfile

#run python
python3 /usr/bin/feed.py

#send things back to server,push back to main
git add -A && git commit -m "Update Feed"
#ensure upstream branch is set up
git push --set-upstream origin main

echo "=============="