#!/bin/bash
docker build --no-cache -t daanhorn/daanhorn.nl --build-arg BASE_URL=http://daanhorn.nl .
