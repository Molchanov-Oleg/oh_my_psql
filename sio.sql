\echo ### session information OLD
\echo
-- #
-- # author: Molchanov Oleg
-- #

select current_catalog,
       current_schema,
       current_user,
       --current_role,
       --user,
       session_user,
       --system_user,
       inet_client_addr()||':'||inet_client_port() client_ip_port,
       inet_server_addr()||':'|| inet_server_port() server_ip_port,
       pg_backend_pid(),
       pg_conf_load_time(),
       pg_postmaster_start_time(),
       version()
       --pg_current_logfile()
       --current_query()
\gx

:cls
