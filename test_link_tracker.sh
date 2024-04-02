#!/bin/sh
docker-compose run --rm \
               odoo odoo \
               -d test1 \
               -i tc_link_tracker \
               --workers 0 \
               --stop-after-init --test-enable $@
