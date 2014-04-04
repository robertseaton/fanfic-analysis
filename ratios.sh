#!/bin/bash

rm fanfic/*.paq8pxd7 gutenberg/*.paq8pxd7 fanfic/*.paq8px gutenberg/*.paq8px fanfic/*.paq8pxd gutenberg/*.paq8pxd

echo "FILE, UNCOMPRESSED, COMPRESSED, CLASS"

for f in gutenberg/*
do
    DATA=`paq8 $f | grep compressed | grep -Eo '[0-9]{1,7}' | tr '\n' ','`
    echo $f, $DATA "LITERATURE"
done

for f in fanfic/*
do
    DATA=`paq8 "$f" | grep compressed | grep -Eo '[0-9]{1,7}' | tr '\n' ','`
    echo $f, $DATA "FANFIC"
done
