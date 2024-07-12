#!/bin/sh
docker-compose run --rm \
               odoo odoo \
               -d test2 \
               -u tc_event_sale \
               --stop-after-init --test-enable $@
