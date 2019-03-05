FROM rabbitmq:3.7.8-management
COPY ./plugins/ /plugins/
RUN  rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange
