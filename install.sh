#!/bin/bash
mkdir -p bitjoe
mkdir -p bitjoe/conf
wget https://github.com/urbien/bitjoe/raw/master/build/bitjoe.jar -P bitjoe
wget https://github.com/urbien/bitjoe/raw/master/conf/config.json -P bitjoe/conf

mkdir -p bitkeeper
mkdir -p bitkeeper/conf
wget https://github.com/urbien/bitkeeper/raw/master/build/bitkeeper.jar -P bitkeeper
wget https://github.com/urbien/bitkeeper/raw/master/conf/config.json -P bitkeeper/conf
