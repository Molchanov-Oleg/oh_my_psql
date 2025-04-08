\echo ### locked session list in cluster or database (need login to postgres db or other db)
\echo
-- #
-- # author: Molchanov Oleg
-- #

select l.pid as blocked_pid,
       a.usename as blocked_user,
       locktype,
       (select datname from pg_database where oid = database ) database_name,
       (select relname from pg_class where oid = relation ) relation,
       (select nspname from pg_class c join pg_namespace n on c.oid = relation and n.oid = relnamespace ) relnamespace,
       (select rolname from pg_class c join pg_authid au on c.oid = relation and au.oid = relowner ) relowner
  from pg_catalog.pg_locks l
  join pg_catalog.pg_stat_activity a using(pid)
where not granted
\g
