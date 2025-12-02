\echo ### disconnect all idle sessions
\echo
-- #
-- # author: Molchanov Oleg
-- #

select datname,
       pid,
       usename,
       application_name,
       client_addr,
       state,
       pg_terminate_backend(pid) killed
  FROM pg_stat_activity
 where state = 'idle' AND pid <> pg_backend_pid()
\g
