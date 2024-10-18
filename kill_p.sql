\echo ### disconnect session by pid
\echo
-- #
-- # author: Molchanov Oleg
-- #

\prompt 'PID (number) = ' om_pid
\echo

SELECT pg_terminate_backend(:om_pid)
\g

\unset om_pid
