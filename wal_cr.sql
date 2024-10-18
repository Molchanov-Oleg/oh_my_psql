\echo ### current WAL
\echo
-- #
-- # author: Molchanov Oleg
-- #

select * from pg_walfile_name(pg_current_wal_lsn())
\g
