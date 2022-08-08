FROM my/odoo:15.0
USER root
RUN apt-get update && apt-get install -y chromium
RUN apt-get install -y python3-websocket
# RUN python3 -m pip install cryptography
USER odoo
