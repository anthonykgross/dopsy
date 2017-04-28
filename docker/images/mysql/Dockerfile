FROM mysql:5.7

MAINTAINER Anthony K GROSS

ADD entrypoint.sh /p-entrypoint.sh
RUN chmod +x /p-entrypoint.sh

ENTRYPOINT ["/p-entrypoint.sh"]
CMD ["mysqld"]