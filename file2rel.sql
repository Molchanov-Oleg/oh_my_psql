\echo ### relation in file
\echo
-- #
-- # author: Molchanov Oleg
-- #

\prompt 'File name (number) = ' om_file_name
\echo

SELECT relfilenode, relname, relnamespace::regnamespace schema, reltablespace FROM pg_class WHERE relfilenode = :om_file_name
\g

\echo 'see also :rel2file'

\unset om_file_name
