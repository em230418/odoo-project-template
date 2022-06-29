#!/bin/sh
docker-compose run --rm \
               odoo odoo \
               -d test1 \
               -i epiklah_crm \
               --log-handler=odoo.addons.epiklah_crm:DEBUG \
               --stop-after-init $@
