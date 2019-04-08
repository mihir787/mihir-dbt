#!/bin/bash

docker build -t mihir-dbt .
docker run -i -t mihir-dbt:latest /bin/bash
