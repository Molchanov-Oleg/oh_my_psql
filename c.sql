\echo ### class
\echo
-- #
-- # author: Molchanov Oleg
-- #

\prompt 'Relname (text) like % ' om_rel_name
\echo

select * from pg_class where relname like :'om_rel_name'
\g

\unset om_rel_name
