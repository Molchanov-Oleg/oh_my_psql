\echo ### filepath for relation
\echo
-- #
-- # author: Molchanov Oleg
-- #

\prompt 'Relation name (text) = ' om_relname
\echo

select :'om_relname' relname, * from pg_relation_filepath( :'om_relname' )
\g

\echo 'see also :file2rel'

\unset om_relname
