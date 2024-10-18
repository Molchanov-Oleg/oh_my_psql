\echo ### set PROMPT to verbose
\echo
-- #
-- # author: Molchanov Oleg
-- #

\set PROMPT1 '[%`date +%FT%T`] %[%033[0;92m%]%n:%:OM_pg_backend_pid:%[%033[0;36m%]@%M:%>%[%033[0;33m%]/%/\n%[%033[0;37m%]%R%#%[%033[0;31m%]%x' ' ' '%[%033[0m%]'
\set PROMPT2 '%[%033[0;31m%]%l:%[%033[0;37m%]%R%#%[%033[0;31m%]%x %[%033[0m%]'
\set PROMPT3 %[%033[0;37m%]:PROMPT3 %[%033[0m%]
