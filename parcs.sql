\echo ### show parameter value using current_setting()
\echo
-- #
-- # author: Molchanov Oleg
-- #

\prompt 'Server parameter name (text) ' om_sp_name
\echo

select current_setting(:'om_sp_name') as :om_sp_name
\g

\unset om_sp_name
