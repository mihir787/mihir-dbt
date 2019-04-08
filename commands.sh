PGPASSWORD=mypassword psql --host mihir-dbt-project.clgajo53ovo8.us-east-1.rds.amazonaws.com --port 5432 --username mihir787 --dbname mihirdbt

docker build -t mihir-dbt . --no-cache
docker images #top id
docker run -i -t 0d2c8c15d61e /bin/bash

dbt run --profiles-dir .dbt
dbt test --profiles-dir .dbt

$(aws ecr get-login --no-include-email --region us-east-1) #login

docker tag mihir-dbt:latest 335090205743.dkr.ecr.us-east-1.amazonaws.com/mihir/dbt-project:latest
docker push 335090205743.dkr.ecr.us-east-1.amazonaws.com/mihir/dbt-project:latest
