\echo ### WAL archiver stat
\echo
-- #
-- # author: Molchanov Oleg
-- #

select name, setting from pg_settings where name in ('archive_mode', 'archive_command', 'archive_timeout')
\g

select * from pg_stat_archiver
\gx
