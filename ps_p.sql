\echo ### db processes details for pid
\echo
-- #
-- # author: Molchanov Oleg
-- #

\prompt 'PID (number) = ' om_pid
\echo

select *
  from pg_stat_activity
 where pid = :om_pid
\gx

\unset om_pid
