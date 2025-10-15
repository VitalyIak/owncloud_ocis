ARG BUILD_FROM
FROM $BUILD_FROM

# Копируем скрипт запуска в контейнер с правами на выполнение
COPY --chmod=755 run.sh /

# Задаем точку монтирования для данных
VOLUME [ "/var/lib/ocis", "/etc/ocis" ]

# Запускаем сервер oCIS
CMD [ "/run.sh" ]
