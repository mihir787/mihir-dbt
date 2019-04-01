PGPASSWORD=mypassword psql --host mihir-dbt-project.clgajo53ovo8.us-east-1.rds.amazonaws.com --port 5432 --username mihir787 --dbname mihirdbt

docker build -t mihir-dbt . --no-cache
docker images #top id
docker run -i -t 0d2c8c15d61e /bin/bash

dbt run --profiles-dir .dbt
