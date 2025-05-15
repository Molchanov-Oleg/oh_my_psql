\echo ### pg_hba rules for DATABASE
\echo
-- #
-- # author: Molchanov Oleg
-- #

--select line_number, type, database, user_name, address, auth_method, error from pg_hba_file_rules;

\prompt 'Enter DATABASE name: ' om_db_name
\echo

select * from pg_hba_file_rules where database = array[:'om_db_name']
\g

\unset om_db_name
