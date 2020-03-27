#!/bin/bash
#docker run -d -p 80:80 -e HUGO_BASE_URL=http://localhost daanhorn/horn.dev
hugo server --baseUrl=localhost \
            --watch=true
