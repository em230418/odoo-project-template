#!/bin/sh
docker-compose run --rm \
               odoo odoo \
               -d test \
               -i website_sale_affiliate \
               --stop-after-init --test-enable $@
