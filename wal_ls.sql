\echo ### list WALs in waldir
\echo
-- #
-- # author: Molchanov Oleg
-- #

select * from pg_ls_waldir() order by name
\g
