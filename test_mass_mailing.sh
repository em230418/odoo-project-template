#!/bin/sh
docker-compose run --rm \
               odoo odoo \
               -d test \
               -i tc_event_sale \
               --stop-after-init --test-enable $@
