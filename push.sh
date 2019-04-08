#!/bin/bash

$(aws ecr get-login --no-include-email --region us-east-1)
docker build -t mihir/dbt-project .
docker tag mihir/dbt-project:latest 335090205743.dkr.ecr.us-east-1.amazonaws.com/mihir/dbt-project:latest
docker push 335090205743.dkr.ecr.us-east-1.amazonaws.com/mihir/dbt-project:latest
