ARG BUILD_FROM
FROM owncloud/ocis:latest

# Копируем скрипт запуска в контейнер
COPY run.sh /
RUN chmod a+x /run.sh

# Задаем точку монтирования для данных
VOLUME [ "/var/lib/ocis", "/etc/ocis" ]

# Запускаем скрипт при старте контейнера
CMD [ "/run.sh" ]
