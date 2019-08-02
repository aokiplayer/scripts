#!/bin/sh

# GET Serial Number of this Mac
SERIAL=`ioreg -l | awk '/IOPlatformSerialNumber/ { if (gsub(/"/, "")) print $4 }'`

# Write MAC address of primary WiFi interfce in "{SERIAL NUMBER}.txt" on this user's Desktop
ifconfig en0 ether | awk '/ether/ { print $2 }' > ~/Desktop/${SERIAL}.txt

