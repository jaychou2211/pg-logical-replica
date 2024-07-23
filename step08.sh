#!/bin/bash
docker exec -i logrepl_pg_replica1 psql -U postgres -d postgres -c "INSERT INTO users (username, email) VALUES ('newuser4', 'newuser4@example.com');"

docker exec -i logrepl_pg_master psql -U postgres -d postgres -c "SELECT * FROM users;"
docker exec -i logrepl_pg_replica1 psql -U postgres -d postgres -c "SELECT * FROM users;"
docker exec -i logrepl_pg_replica2 psql -U postgres -d postgres -c "SELECT * FROM users;"