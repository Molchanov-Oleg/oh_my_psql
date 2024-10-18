\echo ### search_path for ALL users
\echo
-- #
-- # author: Molchanov Oleg
-- #

select r.rolname, d.datname, rs.setconfig from pg_db_role_setting rs left join pg_roles r on r.oid = rs.setrole left join pg_database d on d.oid = rs.setdatabase\g

\echo
\echo alter database mydb set search_path = "$user", public, postgis ;
\echo alter role johnny set search_path = "$user", public, postgis ;
\echo
