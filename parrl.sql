\echo ### parameters from runtime long format
\echo
-- #
-- # author: Molchanov Oleg
-- #

\prompt 'Server parameter name (text) like % ' om_sp_name
\echo

select * from pg_settings where name like :'om_sp_name' order by 1\gx

\ir help-context.txt

\unset om_sp_name
