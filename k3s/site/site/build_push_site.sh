#!/usr/bin/env bash

docker login
docker build -t camzor/site .
docker push camzor/site
