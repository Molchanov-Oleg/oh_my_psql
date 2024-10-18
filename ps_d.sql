\echo ### db processes list for database
\echo
-- #
-- # author: Molchanov Oleg
-- #

\prompt 'DB name (text) = ' om_db_name
\echo

select datname,
       pid,
       usename,
       application_name,
       client_addr,
       client_hostname,
       client_port,
       backend_type,
       to_char(backend_start, 'yyyy-mm-dd"T"hh24:mi:ss') backend_start,
       backend_xmin,
       wait_event,
       state,
       pg_blocking_pids(pid) as blocked_by
  from pg_stat_activity
 where datname = :'om_db_name'
\g

\unset om_db_name
