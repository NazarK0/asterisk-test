FROM andrius/asterisk

WORKDIR /etc/asterisk
COPY configs .
WORKDIR /var/lib/asterisk/sounds/
COPY sounds .
RUN apk add --update less psqlodbc asterisk-odbc asterisk-pgsql asterisk-sounds-en asterisk-sounds-moh \
  &&  rm -rf /var/cache/apk/*