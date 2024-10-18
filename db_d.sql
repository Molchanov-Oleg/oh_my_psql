\echo ### pg_database long list like
\echo
-- #
-- # author: Molchanov Oleg
-- #

\prompt 'DB name (text) like % ' om_db_name
\echo

select * from pg_database where datname like :'om_db_name' order by datname
\gx

\unset om_db_name
