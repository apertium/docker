#!/bin/sh

docker build -t apertium .
echo "hello" | docker run -i apertium
