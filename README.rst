Быстрый старт
-------------

Для начала надо развернуть рабочее окружения для 12.0:

https://github.com/em230418/odoo-work-environment/

Далее следующие команды:

.. code-block:: sh

   # клонируем каталог с окружением
   cd /opt/odoo-projects/12.0/projects
   git clone https://github.com/em230418/odoo-project-template.git -b 12.0-gladkevich --single-branch gladkevich
   cd gladkevich
   mkdir src
   cd src

   git clone -b 12.0 --single-branch -o upstream https://github.com/Yenthe666/auto_backup.git
   git clone -b 12.0 --single-branch -o upstream https://github.com/Openworx/backend_theme.git
   git clone -b 12.0 --single-branch -o upstream git@gitlab.com:itpp/dev/383.git garazd

   mkdir it-projects
   git clone -b 12.0 --single-branch -o upstream git@gitlab.com:itpp/dev/pos-addons.git
   git clone -b master --single-branch -o upstream git@gitlab.com:itpp/pp/Gladkevich.git extra-addons
   cd ..

   mkdir OCA
   cd OCA
   git clone -b 12.0 --single-branch -o upstream git@github.com:OCA/server-ux.git
   git clone -b 12.0 --single-branch -o upstream git@github.com:OCA/server-tools.git
   git clone -b 12.0 --single-branch -o upstream git@github.com:OCA/product-attribute.git
   git clone -b 12.0 --single-branch -o upstream git@github.com:OCA/reporting-engine.git
   git clone -b 12.0 --single-branch -o upstream git@github.com:OCA/stock-logistics-workflow.git
   git clone -b 12.0 --single-branch -o upstream git@github.com:OCA/web.git
   git clone -b 12.0 --single-branch -o upstream git@github.com:OCA/website.git
   cd ..

   cd ..

Используем следующие адреса:

- http://odoo.gladkevich.localhost - сам экземпляр Odoo

- http://wdb.localhost - отладчик

Структура проекта
-----------------

- каталог ``src/it-projects/extra-addons`` - модули проекта

- каталог ``symlinks`` - символические ссылки на встроенные в Odoo модули. Используется для более удобного поиска cредствами IDE

Оформление коммитов
-------------------

Схема описания коммита следующая ``[TAG] модуль: комментарий``.

- ``TAG`` - описан тут https://www.odoo.com/documentation/12.0/developer/misc/other/guidelines.html#tag-and-module-name
Используются в основном ``ADD``, ``FIX`` и ``IMP``.

- ``комментарий`` - на-русском

Если добавляем какой-то новый фунционал в какой-то модуль, то в README.rst описываем этот функционал на английском
