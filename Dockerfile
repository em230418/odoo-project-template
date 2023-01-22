FROM my/odoo:16.0
USER root
RUN pip install wechatpy[cryptography]
RUN pip install python-alipay-sdk  # it's for alipay modules, but we install it here for convinience
RUN pip install requests_mock
USER odoo
