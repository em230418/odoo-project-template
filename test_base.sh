#!/bin/sh
docker-compose run --rm \
               odoo odoo \
               -d test2 \
               -i tc_web,tc_base,test_tc_agpl \
               --stop-after-init --test-enable $@
