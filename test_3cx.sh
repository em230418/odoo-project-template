#!/bin/sh
docker-compose run --rm \
               odoo odoo \
               -d test1 \
               -i contacts_3cx \
               --stop-after-init --test-enable $@
