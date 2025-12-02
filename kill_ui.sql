\echo ### disconnect idle sessions of user
\echo
-- #
-- # author: Molchanov Oleg
-- #

\prompt 'Usename (text) = ' om_use_name
\echo

select datname,
       pid,
       usename,
       application_name,
       client_addr,
       state,
       pg_terminate_backend(pid) killed
  from pg_stat_activity
 where state = 'idle' and usename = :'om_use_name' and pid <> pg_backend_pid()
\g

\unset om_use_name
