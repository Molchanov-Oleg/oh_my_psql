\echo ### search_path for current user
\echo
-- #
-- # author: Molchanov Oleg
-- #

show search_path;

select current_schemas(true)
\g

\echo
\echo set search_path = sp;
\echo
