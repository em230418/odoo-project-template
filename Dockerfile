FROM my/odoo:14.0
USER root
RUN python3 -m pip install email_validator
# RUN python3 -m pip install cryptography
USER odoo
