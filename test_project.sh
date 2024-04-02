#!/bin/sh
docker-compose run --rm \
               odoo odoo \
               -d test2 \
               -i tc_base_setup,tc_project \
               --stop-after-init --test-enable $@
