#!/bin/bash

PODSTATUS=`kubectl get pods/gocalc-app | awk 'NR == 2 {print $3}'`

if [ $PODSTATUS == "Running" ]

then

echo "Success"

else
echo "Failure"

exit 1

fi



