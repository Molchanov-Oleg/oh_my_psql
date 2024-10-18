\echo ### session current transaction id (xid)
\echo
-- #
-- # author: Molchanov Oleg
-- #

select pg_current_xact_id() as om_my_xid
\gset

select :om_my_xid current_xact_id, pg_xact_status(:'om_my_xid')
\g

\echo
\echo PREVIOUS TRANSACTIONS:
\echo ~~~~~~~~~~~~~~~~~~~~~~
\echo

select id, pg_xact_status(id::text::xid8) from generate_series(:om_my_xid, :om_my_xid-22, -1) as s(id)
\g

\echo
\echo ':xido' - for older version
\echo

\unset om_my_xid
