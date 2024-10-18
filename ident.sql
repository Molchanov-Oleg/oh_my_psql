\echo ### pg_ident rules
\echo
-- #
-- # author: Molchanov Oleg
-- #

--select line_number, type, database, user_name, address, auth_method, error from pg_hba_file_rules;

select * from pg_ident_file_mappings
\g
