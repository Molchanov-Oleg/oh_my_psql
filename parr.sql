\echo ### parameters from runtime
\echo
-- #
-- # author: Molchanov Oleg
-- #

\prompt 'Server parameter name (text) like % ' om_sp_name
\echo

select name, setting, unit, boot_val, reset_val, source, sourcefile, sourceline, pending_restart, context from pg_settings where name like :'om_sp_name' order by 1
\g

\ir help-context.txt

\unset om_sp_name
