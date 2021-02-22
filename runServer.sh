#!/bin/bash
docker run -d -p 80:80 -e HUGO_BASE_URL=https://horn.dev daanhorn/horn.dev
#docker run -d -p 81:80 -e HUGO_BASE_URL=http://localhost:81 daanhorn/horn.dev
