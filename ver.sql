\echo ### server_version
\echo
-- #
-- # author: Molchanov Oleg
-- #

show server_version;

select version()
\g

-- client ver -- \echo :VERSION
-- client ver -- select :'VERSION' as VERSION;
