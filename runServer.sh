#!/bin/bash
docker run -d -p 80:80 -p 443:443 -e HUGO_BASE_URL=https://daanhorn.nl daanhorn/daanhorn.nl
