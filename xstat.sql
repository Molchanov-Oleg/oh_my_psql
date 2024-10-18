\echo ### status of transaction id (xid)
\echo
-- #
-- # author: Molchanov Oleg
-- #

\prompt 'Transaction id (number) = ' om_xid
\echo

SELECT :om_xid xid, pg_xact_status(:'om_xid')
\g

\unset om_xid
