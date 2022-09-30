#!/bin/bash

file=$(curl-config --ca)
# file="./file"
echo -n | openssl s_client -showcerts -connect $1 2> /dev/null  | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' | sudo tee -a $file
