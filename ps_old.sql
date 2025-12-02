\echo ### db processes connected before interval from now
\echo
-- #
-- # author: Molchanov Oleg
-- #

\prompt 'Connected before interval (e.g. 1 day / 1 hour / 55 min) = ' om_interval_before
\echo

select datname,
       pid,
       usename,
       application_name,
       backend_type,
       COALESCE(client_addr::text,'')||', '||COALESCE(client_hostname,'') "client ip, host",
       to_char(backend_start, 'YYYY-MM-DD"T"HH24:MI:SS') backend_start,
       state,
       to_char(state_change, 'YYYY-MM-DD"T"HH24:MI:SS') state_change,
       backend_xmin,
       wait_event,
       pg_blocking_pids(pid) as blocked_by
  from pg_stat_activity
where backend_start < now() - interval :'om_interval_before'
order by backend_start
\g
