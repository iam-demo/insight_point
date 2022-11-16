#!/bin/bash
set -e
ecr_registry=public.ecr.aws/b1u0k2e1/insight_point:latest
docker run --detach \
   --restart=always \
   --log-driver local \
   --log-opt max-size=100m \
   -e COOKIEAI_CP_ADDR="$VEZA_FQDN:443" \
   -e DP_REGISTER_KEY="$VEZA_IP_REGISTER_KEY" \
   $ecr_registry
