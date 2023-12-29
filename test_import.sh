#!/bin/sh
docker-compose run --rm \
               odoo odoo \
               -d test1 \
               -i tc_base_import \
               --stop-after-init --test-enable $@
