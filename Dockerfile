FROM my/odoo:14.0
USER root
RUN python3 -m pip install python-telegram-bot
RUN apt-get install -y git
RUN python3 -m pip install git+https://github.com/mukulhase/WebWhatsapp-Wrapper.git@master
USER odoo
