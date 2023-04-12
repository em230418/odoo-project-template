FROM my/odoo:13.0
USER root
RUN python3 -m pip install cerbapi
# RUN python3 -m pip install cryptography
RUN echo "127.0.0.1 services.openerp.com" >> /etc/hosts
RUN python3 -m pip install email-validator==1.1.1
USER odoo
