#!/bin/bash
trap 'exit' ERR

now=$(date +%s)
folder="builds/build_$now"
mkdir -p $folder
cp install.rdf $folder
zip builds/vc-$now.xpi $folder/*
unzip -t builds/vc-$now.xpi && rm -rf $folder
