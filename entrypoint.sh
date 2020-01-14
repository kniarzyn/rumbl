#!/usr/bin/env bash
# docker entrypoint script.

# assign a default for the database_user
DB_USER=${DATABASE_USER:-postgres}

bin="/app/bin/rumbl"
# wykonaj zaległe migracje
eval "$bin eval \"Rumbl.Release.migrate\""
# start the elixir application
exec "$bin" "start"

