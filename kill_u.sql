\echo ### disconnect user sessions (except current session)
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
  FROM pg_stat_activity
 where usename = :'om_use_name' AND pid <> pg_backend_pid()
\g

\unset om_use_name
