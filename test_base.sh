#!/bin/sh
docker-compose run --rm \
               odoo odoo \
               -d test1969 \
               -i tc_base,test_tc_agpl \
               --stop-after-init --test-enable $@
