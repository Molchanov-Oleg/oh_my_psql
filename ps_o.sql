\echo ### db processes list for OLD PG
\echo
-- #
-- # author: Molchanov Oleg
-- #

select datname,
       pid,
       usename,
       application_name,
       client_addr,
       client_hostname,
       client_port,
--       backend_type,
       to_char(backend_start, 'YYYY-MM-DD"T"HH24:MI:SS') backend_start,
       backend_xmin,
       wait_event,
       state,
       pg_blocking_pids(pid) as blocked_by
  FROM pg_stat_activity
\g
