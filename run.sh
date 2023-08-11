#!/bin/bash

CERTPATH=/certs/live

while [ true ]
do
  fswatch -d $CERTPATH
  echo "File change detected."

  for d in $CERTPATH/*/
    do
      echo "Updating host $d..."
      cp $d\privkey.pem $d.key
      cp $d\fullchain.pem $d.crt
   done
done
