#!/bin/sh
docker-compose run --rm \
               odoo odoo \
               -d test \
               -i tg_sale_commission \
               --stop-after-init --test-enable $@
