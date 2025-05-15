\echo ### parameters by value
\echo
-- #
-- # author: Molchanov Oleg
-- #

\prompt 'Server parameter value (text) like % ' om_sp_value
\echo

select name, setting, unit, boot_val, reset_val, source, sourcefile, sourceline, pending_restart, context from pg_settings where upper(setting) like upper(:'om_sp_value') order by 1
\g

\ir help-context.txt

\echo
\echo '\dconfig[+] [PATTERN]  list configuration parameters'
\echo 'SHOW name;'
\echo 'SHOW ALL;'

\unset om_sp_value
