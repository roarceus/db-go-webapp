CREATE SCHEMA IF NOT EXISTS webapp;

CREATE TABLE IF NOT EXISTS webapp.health_checks (
    check_id SERIAL PRIMARY KEY,
    checked_at TIMESTAMPTZ NOT NULL DEFAULT (CURRENT_TIMESTAMP AT TIME ZONE 'UTC')
);