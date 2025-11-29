\echo ### cluster details
\echo
-- #
-- # author: Molchanov Oleg
-- #

select name, setting from pg_settings where name in ('cluster_name','server_version','port')
\g

-- # for superuser
select pg_read_file('/etc/hostname') as server_hostname
\g
