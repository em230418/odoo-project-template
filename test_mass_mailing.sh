#!/bin/sh
docker-compose run --rm \
               odoo odoo \
               -d test1 \
               -i tc_mass_mailing \
               --stop-after-init --test-enable $@
