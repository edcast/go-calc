#!/bin/bash


##########CHECK IF PREVIOUS VERSION OF APP IS RUNNING#########


PODSTATUS=`kubectl get pods/gocalc-app | awk 'NR == 2 {print $3}'`

if [ $PODSTATUS == "Running" ]

then

echo "Terminating the pod"

kubectl delete pods/gocalc-app

sleep 15

kubectl create -f /tmp/deploy.yaml

else

kubectl create -f /tmp/deploy.yaml

fi

###WAIT FOR THE POD TO BE IN RUNNING STATE####

sleep 10
