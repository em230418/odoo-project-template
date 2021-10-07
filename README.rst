.. code-block:: sh

   python3 -m pip install https://github.com/mukulhase/WebWhatsapp-Wrapper.git
   wget https://raw.githubusercontent.com/mukulhase/WebWhatsapp-Wrapper/master/requirements/base.txt -O /tmp/base.txt
   python3 -m pip install -r /tmp/base.txt
   docker-compose up -d firefox
   SELENIUM=http://localhost:4444/wd/hub ./new_messages_observer.py

Далее заходим с помощью vncviewer на localhost:5900 с паролем secret.
Там будет окно с вотсапом.
Отсканируй код.
В терминале с new_messages_observer должно появиться waiting for new messages.

После чего попроси прислать что-либо на этот аккаунт.
