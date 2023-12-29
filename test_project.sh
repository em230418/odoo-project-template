#!/bin/sh
docker-compose run --rm \
               odoo odoo \
               -d test2 \
               -i tc_project \
               --stop-after-init --test-enable $@
