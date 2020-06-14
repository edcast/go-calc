#!/bin/bash

####DOCKER LOGIN######
docker login -u=naveen09 -p=Absolution999


####CREATE DEPLOYMENT MANIFEST FILE#####
kubectl run --generator=run-pod/v1 gocalc-app --image=naveen09/go-calc:latest --dry-run -o yaml > /tmp/deploy.yaml


