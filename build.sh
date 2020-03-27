#!/bin/bash
docker build --no-cache -t daanhorn/horn.dev --build-arg BASE_URL=https://horn.dev .
