\echo ### current value for parameter "data_directory" (PGDATA)
\echo
-- #
-- # author: Molchanov Oleg
-- #

select current_setting('data_directory')
\g
