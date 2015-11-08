#!/bin/bash
docker run -d -p 1313:1313 -e HUGO_BASE_URL=http://localhost:1313 daanhorn/daanhorn.nl
