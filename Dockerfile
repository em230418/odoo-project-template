FROM my/odoo:16.0
USER root
# RUN python3 -m pip install cryptography
RUN python3 -m pip install cerbapi
RUN python3 -m pip install email-validator
USER odoo
