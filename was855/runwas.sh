#!/bin/bash
docker run --rm -t -i \
   -p 9060:9060 \
   -p 9043:9043 \
   -p 9443:9443 \
   -p 9080:9080 \
   jjacobso/websphere:latest

