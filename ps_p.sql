\echo ### db processes details for pid
\echo
-- #
-- # author: Molchanov Oleg
-- #

\prompt 'PID (number) = ' om_pid
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
 where pid = :om_pid
\g

\unset om_pid
