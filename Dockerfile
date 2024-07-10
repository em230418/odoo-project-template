FROM my/odoo:14.0
USER root
RUN python3 -m pip install "Werkzeug==0.16.1"
RUN python3 -m pip install braintree
# RUN python3 -m pip install cryptography
USER odoo
