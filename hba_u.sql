\echo ### pg_hba rules for USER
\echo
-- #
-- # author: Molchanov Oleg
-- #

--select line_number, type, database, user_name, address, auth_method, error from pg_hba_file_rules;

\prompt 'Enter USER name: ' om_usr_name
\echo

select * from pg_hba_file_rules where user_name = array[:'om_usr_name']
\g

\unset om_usr_name
