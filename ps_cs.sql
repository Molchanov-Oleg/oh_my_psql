\echo ### count processes by db, user, state
\echo
-- #
-- # author: Molchanov Oleg
-- #

select sum(c) over () conn_all,
       datname db,
       sum(c) over (partition by datname) conn_db,
       usename usr,
       c conn_usr,
       state
  from (select count(0)c,
               datname,
               usename,
               state
          from pg_stat_activity
         group by datname, usename, state
       ) v
 order by 3,5
\g

select current_setting('max_connections') max_connections
\g
