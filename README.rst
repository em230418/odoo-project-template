Быстрый старт
-------------

Для начала надо развернуть рабочее окружения для 13.0:

https://github.com/em230418/odoo-work-environment/

Далее следующие команды:

.. code-block:: sh

   # клонируем enterprise модули
   # если нету доступа к репозиторию - сообщаем куратору
   cd /opt/odoo-projects/13.0/common/odoo
   git clone -b 13.0 --single-branch -o upstream git@github.com:odoo/enterprise.git

   # клонируем каталог с окружением
   cd /opt/odoo-projects/13.0/projects
   git clone https://github.com/em230418/odoo-project-template.git -b 13.0-bacula --single-branch bacula
   cd bacula

   # клонируем модули
   git clone git@gitlab.com:itpp/dev/sugarodoo.git src

   # клонируем символические ссылки на модули
   # полезно, если надо делать поиск
   cd symlinks
   ln -s ../../../common/odoo/enterprise/sale_subscription
   ln -s ../../../common/odoo/enterprise/web_enterprise
   ln -s ../../../common/odoo/odoo/addons/account
   ln -s ../../../common/odoo/odoo/addons/contacts
   ln -s ../../../common/odoo/odoo/addons/crm
   ln -s ../../../common/odoo/odoo/addons/hr
   ln -s ../../../common/odoo/odoo/addons/product
   ln -s ../../../common/odoo/odoo/addons/sale
   ln -s ../../../common/odoo/odoo/addons/sale_crm
   ln -s ../../../common/odoo/odoo/addons/web
   ln -s ../../../common/odoo/odoo/odoo/addons/base

Используем следующие адреса:

- http://odoo.bacula.localhost - сам экземпляр Odoo

- http://wdb.localhost - отладчик

Структура проекта
-----------------

- каталог ``src`` - модули проекта

- каталог ``symlinks`` - символические ссылки на встроенные в Odoo модули. Используется для более удобного поиска cредствами IDE

Именования модулей
------------------

- Модуль, который поправляет поведение модуля встроенного ``MODULE_NAME``, должен называться ``bacula_MODULE_NAME``.
Исключения (например ``bacula_reports``) обговариваются отдельно.

Оформление коммитов
-------------------

Схема описания коммита следующая ``[TAG] модуль: комментарий``.

- ``TAG`` - описан тут https://www.odoo.com/documentation/13.0/developer/misc/other/guidelines.html#tag-and-module-name
Используются в основном ``ADD``, ``FIX`` и ``IMP``.

- ``комментарий`` - на-русском

Если добавляем какой-то новый фунционал в какой-то модуль, то в README.rst описываем этот функционал на английском
