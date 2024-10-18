\echo ### session current transaction id (xid) for older Postgres
\echo
-- #
-- # author: Molchanov Oleg
-- #

SELECT txid_current() as om_my_xid
\gset

SELECT :om_my_xid txid_current, txid_status(:'om_my_xid')
\g

\echo
\echo PREVIOUS TRANSACTIONS:
\echo ~~~~~~~~~~~~~~~~~~~~~~
\echo

select id, txid_status(id::text::bigint) from generate_series(:om_my_xid, :om_my_xid-22, -1) as s(id)
\g

\echo
\echo ':xid' - for newer version
\echo

\unset om_my_xid
