#!/bin/bash

set -e

version=($(cat ../source/versions))
echo ${#version[@]}
versionnum=${#version[@]}
for i in $(seq 0 $((versionnum-1)));
do
	./build.sh ${version[i]}
done 