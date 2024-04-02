#!/bin/sh
docker-compose run --rm \
               odoo odoo \
               -d test2 \
               -i tc_event_sale \
               --stop-after-init --test-enable $@
