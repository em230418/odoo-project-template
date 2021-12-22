Быстрый старт
-------------

Для начала надо развернуть рабочее окружения для 14.0:

https://github.com/em230418/odoo-work-environment/

Далее следующие команды:

.. code-block:: sh

   # клонируем зависимости
   cd /opt/odoo-projects/14.0/common
   mkdir -p OCA
   cd OCA
   git clone https://github.com/OCA/queue.git -b 14.0 --single-branch -o upstream

   # клонируем каталог с окружением
   cd /opt/odoo-projects/14.0/projects
   git clone https://github.com/em230418/odoo-project-template.git -b 14.0-vic --single-branch sync-addons-project
   cd sync-addons-project

   # клонируем модули
   mkdir -p src
   cd src
   git clone https://github.com/itpp-labs/sync-addons.git -b 14.0 -o upstream --single-branch
   cd ..

   # клонируем символические ссылки на модули
   # полезно, если надо делать поиск
   cd symlinks
   ln -s ../../../common/OCA/queue/queue_job
   ln -s ../../../common/odoo/odoo/addons/crm
   ln -s ../../../common/odoo/odoo/addons/mail
   ln -s ../../../common/odoo/odoo/odoo/addons/base

Используем следующие адреса:

- https://vic.dev.it-projects.info - сам экземпляр Odoo

- http://wdb.localhost - отладчик

Структура проекта
-----------------

- каталог ``src`` - модули проекта

Настройка
---------

- В файле ``$HOME/.ssh/config`` надо добавить следующее:

.. code-block::

   Host kontabo-tunnel
     User tunnel
     HostName 173.212.204.237
     RemoteForward 7069 localhost:8069
     RemoteForward 7072 localhost:8072

Запуск odoo
-----------

1. Для начала надо опрокинуть ssh-туннели, чтобы обращение на https://vic.dev.it-projects.info приходили на наш эксемпляр odoo

.. code-block:: sh

   ssh -N kontabo-tunnel

На выходе ничего не должно выводится.
Также не закрываем этот ssh, пока не закончим работу.

2. Далее уже запуск самого odoo:

.. code-block:: sh

   cd /opt/odoo-projects/14.0/sync-addons-project
   docker-compose up odoo

Если все настроено правильно, то при обращении к https://vic.dev.it-projects.info должна быть страничка от Odoo

3. Далее устанавливаем модуль CRM, чтобы при работе с модулями sync_* не возникали проблемы.

4. Далее устанавливаем sync_telegram

5. Далее следуем инструкциям по настройке: https://github.com/itpp-labs/sync-addons/blob/14.0/sync_telegram/doc/index.rst#configuration

Оформление коммитов
-------------------

Согласно этому документу: https://gitlab.com/itpp/handbook/blob/master/documenting-updates.md
