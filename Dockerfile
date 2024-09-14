#open our own virtual machine
From ubuntu:latest
#apt-get is to load things into ubuntu, use \ to run multi lines
Run apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git

Run apt-get install -y python3-yaml

Copy feed.py /usr/bin/feed.py
#put entrypoint file at root level
Copy entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]