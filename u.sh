#!/usr/bin/env sh
self.with_user(env.ref("base.user_admin")).env.ref("limitless_sale.card_product_template").generate_card_images('https://www.odoo.com', None); self.env.cr.commit()
