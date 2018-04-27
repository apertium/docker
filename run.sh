#!/bin/sh

docker build -t apertium .
docker run apertium -h
