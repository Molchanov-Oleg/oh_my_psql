\echo ### pg_hba rules
\echo
-- #
-- # author: Molchanov Oleg
-- #

--select line_number, type, database, user_name, address, auth_method, error from pg_hba_file_rules;

select * from pg_hba_file_rules
\g
