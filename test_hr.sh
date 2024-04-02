#!/bin/sh
docker-compose run --rm \
               odoo odoo \
               -d test2 \
               -i tc_hr \
               --stop-after-init --test-enable $@
