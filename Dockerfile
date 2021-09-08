FROM my/odoo:14.0
USER root
RUN python3 -m pip install webwhatsapi
RUN python3 -m pip install python-telegram-bot
USER odoo
