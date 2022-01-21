#!/bin/sh
su - postgres -c "pg_basebackup --host=masterPG --username=postgres --pgdata=/data/back -X stream --write-recovery-conf"
su - postgres -c "/usr/lib/postgresql/13/bin/pg_ctl start -D /data/back"
sleep infinity