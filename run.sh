#!/bin/bash

docker build -t mihir-dbt .
docker run -i -t mihir-dbt /bin/bash
dbt run --profiles-dir .dbt
dbt test --profiles-dir .dbt
