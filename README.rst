============================
 Разворачивание saas-addons
============================

Адреса:

- `saas.127.0.0.1.nip.io <http://saas.127.0.0.1.nip.io>`__ - сам saas
- `mail.localhost <http://mail.localhost>`__ - все присыламые от Odoo сообщения скидываются сюда
- `wdb.localhost <http://wdb.localhost>`__ - отладчик

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

Как добавить возможность запускать тесты?
-----------------------------------------

Надо пропачтить odoo (в каталоге /opt/odoo-projects/$VERSION/odoo/odoo)

.. code-block:: diff

    diff --git a/odoo/addons/base/models/ir_module.py b/odoo/addons/base/models/ir_module.py
    index aac796b4630..ebdd7dcc422 100644
    --- a/odoo/addons/base/models/ir_module.py
    +++ b/odoo/addons/base/models/ir_module.py
    @@ -570,13 +570,6 @@ class Module(models.Model):
             }
     
         def _button_immediate_function(self, function):
    -        if getattr(threading.currentThread(), 'testing', False):
    -            raise RuntimeError(
    -                "Module operations inside tests are not transactional and thus forbidden.\n"
    -                "If you really need to perform module operations to test a specific behavior, it "
    -                "is best to write it as a standalone script, and ask the runbot/metastorm team "
    -                "for help."
    -            )
             try:
                 # This is done because the installation/uninstallation/upgrade can modify a currently
                 # running cron job and prevent it from finishing, and since the ir_cron table is locked
    
Все!
