#!/bin/bash
set -e

echo "Deploying APISIX configuration..."

curl -X PUT "$APISIX_ADMIN_URL/apisix/admin/configs" \
  -H "X-API-KEY: $APISIX_ADMIN_KEY" \
  -H "Content-Type: application/yaml" \
  --data-binary @apisix/apisix-config.yaml

echo "Deployment finished"
