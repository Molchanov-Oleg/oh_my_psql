\echo ### count processes by db, user
\echo
-- #
-- # author: Molchanov Oleg
-- #

select sum(c) over () conn_all,
       datname db,
       sum(c) over (partition by datname) conn_db,
       usename usr,
       c conn_usr
  from (select count(0)c,
               datname,
               usename
          from pg_stat_activity
         group by datname, usename
       ) v
 order by 3,5
\g

select current_setting('max_connections') max_connections
\g
