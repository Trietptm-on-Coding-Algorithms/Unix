#!/bin/bash

target=$1

echo "MD5: " $(md5sum ${target} | awk '{print $1}') 
echo "sha1sum: " $(sha1sum ${target} | awk '{print $1}') 
echo "sha256sum: " $(sha256sum ${target} | awk '{print $1}') 

