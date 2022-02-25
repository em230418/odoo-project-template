FROM my/odoo:13.0
USER root
RUN python3 -m pip install cerbapi
# RUN python3 -m pip install cryptography
RUN echo "127.0.0.1 services.openerp.com" >> /etc/hosts
USER odoo
