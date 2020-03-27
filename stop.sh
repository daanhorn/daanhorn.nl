#!/bin/bash
docker stop $(docker ps -q -f image=daanhorn/horn.dev)
