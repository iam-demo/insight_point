#!/bin/bash
set -e
docker run --detach \
   --restart=always \
   --log-driver local \
   --log-opt max-size=100m \
   --log-opt max-file=5 \
   --env COOKIEAI_CP_ADDR="$VEZA_FQDN:443" \
   --env DP_REGISTER_KEY="$VEZA_IP_REGISTER_KEY" \
   --name insight_point \
   public.ecr.aws/b1u0k2e1/insight_point:latest
