\echo ### count processes by db, user, client
\echo
-- #
-- # author: Molchanov Oleg
-- #

select sum(c) over () conn_all,
       datname db,
       sum(c) over (partition by datname) conn_db,
       usename usr,
       c conn_usr,
       client_addr,
       client_hostname
  from (select count(0)c,
               datname,
               usename,
               client_addr,
               client_hostname
          from pg_stat_activity
         group by datname, usename, client_addr, client_hostname
       ) v
 order by 3,5
\g

select current_setting('max_connections') max_connections
\g
