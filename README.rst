Быстрый старт
-------------

Для начала надо развернуть рабочее окружения для 13.0:

https://github.com/em230418/odoo-work-environment/

Далее следующие команды:

.. code-block:: sh

   # клонируем модули с зависимостями
   mkdir -p /opt/odoo-projects/13.0/common/OCA
   cd /opt/odoo-projects/13.0/common/OCA
   git clone -b 13.0 --single-branch https://github.com/OCA/product-attribute
   git clone -b 13.0 --single-branch https://github.com/OCA/reporting-engine
   git clone -b 13.0 --single-branch https://github.com/OCA/sale-workflow

   # клонируем каталог с окружением
   cd /opt/odoo-projects/13.0/projects
   git clone https://github.com/em230418/odoo-project-template.git -b 13.0-fiolina --single-branch fiolina
   cd fiolina

   # клонируем модули
   git clone -b 13.0 git@gitlab.com:itpp/pp/fiolina.git src

   # клонируем символические ссылки на модули
   # полезно, если надо делать поиск
   cd symlinks
   ln -s ../../../common/odoo/odoo/addons/account
   ln -s ../../../common/odoo/odoo/addons/contacts
   ln -s ../../../common/odoo/odoo/addons/product
   ln -s ../../../common/odoo/odoo/addons/purchase
   ln -s ../../../common/odoo/odoo/addons/sale
   ln -s ../../../common/odoo/odoo/addons/web
   ln -s ../../../common/odoo/odoo/odoo/addons/base

Используем следующие адреса:

- http://odoo.fiolina.localhost - сам экземпляр Odoo

- http://wdb.localhost - отладчик

Структура проекта
-----------------

- каталог ``src`` - модули проекта

- каталог ``symlinks`` - символические ссылки на встроенные в Odoo модули. Используется для более удобного поиска cредствами IDE

Именования модулей
------------------

- Модуль, который поправляет поведение модуля встроенного ``MODULE_NAME``, должен называться ``fiolina_MODULE_NAME``.
Исключения (например ``fiolina_reports``) обговариваются отдельно.

Оформление коммитов
-------------------

Схема описания коммита следующая ``[TAG] модуль: комментарий``.

- ``TAG`` - описан тут https://www.odoo.com/documentation/13.0/developer/misc/other/guidelines.html#tag-and-module-name
Используются в основном ``ADD``, ``FIX`` и ``IMP``.

- ``комментарий`` - на-русском

Если добавляем какой-то новый фунционал в какой-то модуль, то в README.rst описываем этот функционал на русском
