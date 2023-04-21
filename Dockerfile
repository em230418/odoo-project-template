FROM my/odoo:15.0
USER root
RUN python3 -m pip install "python-telegram-bot<20"
RUN python3 -m pip install facebook_business
# RUN python3 -m pip install cryptography
USER odoo
