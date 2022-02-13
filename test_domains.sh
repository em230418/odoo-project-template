#!/usr/bin/env sh
docker-compose run --rm odoo odoo -d saas -i saas_domain_names --test-enable --stop-after-init --workers 0
