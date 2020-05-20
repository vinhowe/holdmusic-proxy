#!/usr/bin/env bash
cd ./HoldMusic/plugin
./gradlew build
cp ./build/libs/holdmusic-1.0-SNAPSHOT.jar ../../plugins/
cd ../..
# cd ../../Velocity
# ./gradlew velocity-proxy:build -x checkstyleMain
# cd ..
# cp ./Velocity/proxy/build/libs/velocity-proxy-1.0.8-SNAPSHOT-all.jar ./velocity.jar
java -jar velocity.jar
