\echo ### parameters from config_file
\echo
-- #
-- # author: Molchanov Oleg
-- #

select sourceline, name, setting, applied from pg_file_settings where sourcefile = current_setting('config_file')
\g
