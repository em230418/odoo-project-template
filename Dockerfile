FROM my/odoo:15.0
USER root
RUN python3 -m pip install "python-telegram-bot<20"
RUN python3 -m pip install facebook_business
RUN python3 -m pip install requests[socks]
RUN python3 -m pip install websocket-client
RUN apt-get update && apt-get install -y texlive-lang-cyrillic texlive-latex-extra
RUN apt-get install -y git
RUN python3 -m pip install git+https://github.com/wowkin2/viber-bot-python@ccf774ae50701a164ff077d69a3082d80416fc88
RUN python3 -m pip install py3o.template py3o.formats
RUN apt-get --no-install-recommends -y install libreoffice
RUN python3 -m pip install --ignore-installed git+https://github.com/OCA/openupgradelib.git@master
USER odoo
