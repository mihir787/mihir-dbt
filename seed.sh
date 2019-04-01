#!/bin/bash

psql PGPASSWORD=mypassword psql --host mihir-dbt-project.clgajo53ovo8.us-east-1.rds.amazonaws.com --port 5432 --username mihir787 --dbname mihirdbt < dump.sql
