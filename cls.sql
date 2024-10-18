\echo ### cluster details
\echo
-- #
-- # author: Molchanov Oleg
-- #

select name, setting from pg_settings where name in ('cluster_name','server_version','port')
\g
