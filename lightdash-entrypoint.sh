#!/bin/bash

# -- OPTIONAL --
# Only needed if you want to run dbt commands on deploying lightdash
cd /usr/app/dbt
dbt seed --full-refresh
dbt run
cd /usr/app/packages/backend
# --------------


exec yarn start
