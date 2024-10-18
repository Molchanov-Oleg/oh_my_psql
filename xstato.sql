\echo ### status of transaction id (xid) for older Postgres
\echo
-- #
-- # author: Molchanov Oleg
-- #

\prompt 'Transaction id (number) = ' om_xid
\echo

SELECT :om_xid xid, txid_status(:'om_xid')
\g

\unset om_xid
