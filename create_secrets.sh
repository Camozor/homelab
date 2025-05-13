#!/usr/bin/env bash

source .env

kubectl create secret generic cloudflared-secret --namespace=cloudflared --dry-run=client --from-literal=token=$TOKEN_CLOUDFLARED -o yaml >k3s/cloudflared/cloudflared-secret-template.yml
kubeseal --format=yaml --secret-file=k3s/cloudflared/cloudflared-secret-template.yml -w k3s/cloudflared/cloudflared-secret.yml
