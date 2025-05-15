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
\echo . set session authorization <role>;   session_user, current_user = role
\echo . set session authorization default;  session_user, current_user = connected user
\echo . reset session authorization;        session_user, current_user = connected user
\echo
\echo User with granted role:
\echo . set role <role>;    current_user = role
\echo . set role none;      current_user = session_user
\echo . reset role;         current_user = session_user
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
