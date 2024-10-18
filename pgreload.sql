\echo ### reload parameters from config files postgresql.conf postgresql.auto.conf
\echo
-- #
-- # author: Molchanov Oleg
-- #

select pg_reload_conf()
\g

