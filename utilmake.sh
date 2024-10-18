#!/bin/bash
#
# parameter:
#       1 - directory with sql-util files
#
# author: Molchanov Oleg
#

d=$1
test -z "$d" && echo "Parameter 1 must not be empty" && exit 1
test ! -d "$d" && echo "Parameter 1 = '$d' nust be a directory" && exit 1

find "$d" -name '*.sql'|sort|grep -v util-|while read f; do echo '\set' `basename $f .sql` "'\\\i $f'";done>"$d/utilset.sql"
