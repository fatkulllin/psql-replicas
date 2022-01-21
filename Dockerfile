FROM postgres:13

RUN apt-get update -y\ 
    && apt-get install nano -y

COPY postgresql.conf /var/lib/postgresql/postgresql.conf
COPY pg_hba.conf /var/lib/postgresql/pg_hba.conf
RUN chown postgres:postgres /var/lib/postgresql/*