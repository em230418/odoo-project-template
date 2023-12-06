FROM my/odoo:15.0
USER root
RUN apt-get update && apt-get install -y libcairo2 ghostscript
RUN apt-get install -y imagemagick
RUN sed -i 's/\(.*\)rights="none\(.*\)pattern="PDF"/\1rights=\"read|write\2pattern="PDF"/' /etc/ImageMagick-6/policy.xml
RUN sed -i 's/\(.*\)rights="none\(.*\)pattern="EPS"/\1rights=\"read|write\2pattern="EPS"/' /etc/ImageMagick-6/policy.xml
RUN apt-get install inkscape -y
RUN python3 -m pip install "Pillow==8.4.0"
RUn apt-get install --no-install-recommends gnumeric
USER odoo
