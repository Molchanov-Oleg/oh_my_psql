\echo ### help topic describer
\echo
-- #
-- # author: Molchanov Oleg
-- #

\! cd "$OM_INSTALL_DIR";echo -n 'Enter help topic (* wildcard): ';read help_topic;head -vn1 $help_topic*.sql 2>&-|grep -v ^$|paste - -|grep '###'|sed 's/==> /:/;s/<==/\t/;s/\\echo//;s/\.sql//'|sort
