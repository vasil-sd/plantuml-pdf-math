#!/bin/bash

mkdir -p build

cp ./jar/* ./build

cd build
for i in *.jar; do unzip -o $i; done
unzip -o plantuml.jar
rm *.jar
fastjar cvf ../plantuml.jar *
cd ..
rm -rf build