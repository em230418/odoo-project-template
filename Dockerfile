FROM my/odoo:12.0
USER root
RUN python3 -m pip install paramiko
RUN python3 -m pip install openpyxl
USER odoo
