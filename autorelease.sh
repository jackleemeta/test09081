#!/bin/bash

git pull

cd test0913

xcodebuild docbuild

cd ..

$(xcrun --find docc) process-archive transform-for-static-hosting test0913/build/Release-iphoneos/test0913.doccarchive --hosting-base-path test09081 --output-path docs
