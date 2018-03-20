#!/bin/bash
docker build -t zlee/whistle-raspi3:latest --no-cache . &&
docker build -t zlee/whistle-raspi3:1.9.2 --no-cache . &&
docker push zlee/whistle-raspi3:latest &&
docker push zlee/whistle-raspi3:1.9.2 
