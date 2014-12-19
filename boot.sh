#!/bin/bash
trap 'exit' ERR

now=$(date +%s)
folder="builds/build_$now"
mkdir -p $folder
cp install.rdf $folder
cp chrome.manifest $folder
(cd $folder && zip ../vc-$now.xpi *)
unzip -t builds/vc-$now.xpi && rm -rf $folder
