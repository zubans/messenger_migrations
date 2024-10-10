FROM liquibase/liquibase:latest

# Убедитесь, что ваш драйвер PostgreSQL находится там, где Liquibase его ожидает.
RUN curl -L -o /liquibase/lib/postgresql.jar https://jdbc.postgresql.org/download/postgresql-42.2.23.jar

COPY ./migrations /liquibase/changelog
COPY ./liquibase.properties /liquibase/liquibase.properties

CMD ["update"]