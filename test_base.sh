#!/bin/sh
docker-compose run --rm \
               odoo odoo \
               -d test1 \
               -i tc_base,test_tc_agpl \
               --stop-after-init --test-enable $@
