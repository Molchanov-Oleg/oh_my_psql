\echo ### read file e.g. postgresql.conf postgresql.auto.conf pg_hba.conf pg_ident.conf postmaster.opts
\echo
-- #
-- # author: Molchanov Oleg
-- #

select name, setting file from pg_settings where name like '%file' order by 1
\g

\prompt 'File name (text) = ' om_file_name
\echo

SELECT pg_read_file(:'om_file_name')
\g (tuples_only=on format=unaligned)

\unset om_file_name
