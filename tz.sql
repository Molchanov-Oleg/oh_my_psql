\echo ### TIME ZONE
\echo
-- #
-- # author: Molchanov Oleg
-- #

\set QUIET on
\timing off
\pset footer off

\echo SERVER TIME ZONE

begin;
--SAVEPOINT tzcheck;
SET TIME ZONE DEFAULT;
show timezone;
--rollback to tzcheck;
rollback;

\echo SESSION TIME ZONE

show timezone;

\timing on
\pset footer on
\set QUIET off

\echo set session TZ e.g.:
\echo ' SET TIME ZONE ''Europe/Moscow'';'
\echo ' SET TIME ZONE ''UTC'';'
\echo set session TZ as server TZ:
\echo '  SET TIME ZONE DEFAULT;'
