FROM my/odoo:8.0
USER root
# перенеси в основной Dockerfile
RUN apt-get install -y libjpeg62-turbo-dev
RUN python -m pip install --no-cache-dir -I pillow
# RUN python3 -m pip install cryptography
USER odoo
