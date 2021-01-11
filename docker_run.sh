#!/bin/bash

#Build docker image with env tags
docker build -t go-calc:$env .
docker tag go-calc:$env ujjwalvns/go-calc:$env
docker push ujjwalvns/go-calc:$env
