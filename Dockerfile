FROM andrius/asterisk

WORKDIR /etc/asterisk
COPY configs .
RUN apk add --update less psqlodbc asterisk-odbc asterisk-pgsql \
  &&  rm -rf /var/cache/apk/*