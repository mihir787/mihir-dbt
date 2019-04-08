#!/bin/bash

dbt run --profiles-dir .dbt && dbt test --profiles-dir .dbt && exit
