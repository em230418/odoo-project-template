FROM my/odoo:15.0
USER root
# RUN python3 -m pip install cryptography
RUN apt-get install libcairo2 -y
RUN python3 -m pip install cairosvg
USER odoo
