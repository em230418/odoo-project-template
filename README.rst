============================
 Разворачивание saas-addons
============================

Адреса:

- ``saas.127.0.0.1.nip.io <http://saas.127.0.0.1.nip.io>``__ - сам saas
- ``mail.localhost <http://mail.localhost>``__ - все присыламые от Odoo сообщения скидываются сюда
- ``wdb.localhost <http://wdb.localhost>``__ - отладчик

Разворачивание
--------------

В каталоге /opt/odoo-projects:

.. code-block:: sh

   ./init.sh 14.0
   cd 14.0/projects
   git clone --single-branch -b 14.0-saas https://github.com/em230418/odoo-project-template.git saas
   cd saas
   ./init.sh
   docker-compose up odoo

Далее заходим в Odoo:

- Main menu -> website -> configurations -> manage apps -> Refresh
- Main menu -> website -> configuration -> settings -> ставим галочку на всех:

  - show packages
  - show apps
  - show try trial button
  - show buy now button

Все!
