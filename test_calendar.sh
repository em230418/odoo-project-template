#!/bin/sh
docker-compose run --rm \
               odoo odoo \
               -d test1 \
               -i epiklah_calendar_google \
               --log-handler=odoo.addons.google_calendar:DEBUG \
               --log-handler=odoo.addons.epiklah_calendar_google:DEBUG \
               --stop-after-init --test-enable $@
