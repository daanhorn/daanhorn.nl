#!/bin/bash
docker run -d -p 80:80 -e HUGO_BASE_URL=http://`wget -qO- http://ipecho.net/plain ; echo` daanhorn/daanhorn.nl
