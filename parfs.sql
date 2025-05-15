\echo ### parameters from pg_file_settings
\echo
-- #
-- # author: Molchanov Oleg
-- #

select * from pg_file_settings order by applied, sourcefile, name
\g
