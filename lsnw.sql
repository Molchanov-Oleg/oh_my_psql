\echo ### current WAL LSN
\echo
-- #
-- # author: Molchanov Oleg
-- #

select *, pg_size_pretty(offset_b) offset_h from
( select pg_current_wal_lsn(), pg_current_wal_lsn() - '0/0'::pg_lsn as offset_b)
\g
