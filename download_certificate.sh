#!/usr/bin/env bash

scp root@192.168.1.2:/etc/rancher/k3s/k3s.yaml .
sed -i "s/127.0.0.1/192.168.1.2/g" k3s.yaml
