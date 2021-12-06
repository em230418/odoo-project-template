FROM my/odoo:13.0
USER root
# RUN python3 -m pip install cryptography
RUN python3 -m pip install xlsxwriter
RUN python3 -m pip install openpyxl
USER odoo
