Для разворачивания:

.. code-block:: sh

   git clone -b 13.0 git@gitlab.com:itpp/pp/fiolina.git src
   mkdir -p /opt/odoo-projects/13.0/common/OCA
   cd /opt/odoo-projects/13.0/common/OCA
   git clone -b 13.0 --single-branch https://github.com/OCA/product-attribute
   git clone -b 13.0 --single-branch https://github.com/OCA/reporting-engine
   git clone -b 13.0 --single-branch https://github.com/OCA/sale-workflow
