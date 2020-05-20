#!/usr/bin/env bash
cd ./HoldMusic/plugin
./gradlew build
cp ./build/libs/holdmusic-1.0-SNAPSHOT.jar ../../plugins/
# I know these two statements could easily be combined, but I want to be able to easily comment out one or the other
cd ../..
cd ./Velocity
# I get that we should probably do style checks. I'm usually just experimenting with Velocity rather than actually trying to make any changes. Anything that shouldn't already be a PR should be a plugin feature.
./gradlew velocity-proxy:build -x checkstyleMain
cd ..
# This is hardcoded to version 1.0.8 but we should really be doing some kind of a search here. This will break if I ever decide to update, but it will break pretty quickly and loudly so I'm not too worried about it.
cp ./Velocity/proxy/build/libs/velocity-proxy-1.0.8-SNAPSHOT-all.jar ./velocity.jar
java -jar velocity.jar
