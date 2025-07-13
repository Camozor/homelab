#!/usr/bin/env bash

source .env

kubectl create secret generic cloudflared-secret --namespace=cloudflared --dry-run=client --from-literal=token=$TOKEN_CLOUDFLARED -o yaml >k3s/cloudflared/cloudflared-secret-template.yml
kubeseal --format=yaml --secret-file=k3s/cloudflared/cloudflared-secret-template.yml -w k3s/cloudflared/cloudflared-secret.yml

kubectl create secret generic rebot-secret --namespace=rebot --dry-run=client --from-literal=DISCORD_TOKEN=$DISCORD_TOKEN --from-literal=DISCORD_SERVER_ID=$DISCORD_SERVER_ID -o yaml >k3s/rebot/rebot-secret-template.yml
kubeseal --format=yaml --secret-file=k3s/rebot/rebot-secret-template.yml -w k3s/rebot/rebot-secret.yml
