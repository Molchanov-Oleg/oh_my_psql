\echo ### session authorization
\echo
-- #
-- # author: Molchanov Oleg
-- #

select
session_user,
current_user
\gx

\echo Superuser:
\echo . set session authorization <role>; => session_user, current_user
\echo . set session authorization default; => connected user
\echo . reset session authorization; => connected user
\echo
\echo User with granted role:
\echo . set role <role>;
\echo . set role none; => session_user
\echo . reset role; => session_user
\echo

--create role role1;
--create role role2;
--grant role2 to role1;

--set role role1;
--session_user | oleg
--current_user | role1

--set session authorization role1;
--session_user | role1
--current_user | role1

--set role role2;
--session_user | role1
--current_user | role2

--set role none;
--reset role;
--session_user | role1
--current_user | role1

--reset session authorization;
--session_user | oleg
--current_user | oleg
