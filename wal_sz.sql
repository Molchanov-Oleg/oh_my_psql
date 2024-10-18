\echo ### size WALs in waldir
\echo
-- #
-- # author: Molchanov Oleg
-- #

select pg_size_pretty(sum(size)) wal_sz from pg_ls_waldir()
\g
