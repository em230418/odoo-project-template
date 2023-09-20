FROM my/odoo:11.0
USER root
RUN python3 -m pip install shapely geojson simplejson
# RUN python3 -m pip install cryptography
USER odoo
