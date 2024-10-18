#!/bin/bash

echo -n "Enter parameter$1 value: " 1>&2
read p
echo $p

# example:

# define command 'getparam':
#     \set getparam1 '\\bind `/home/oleg/src/pg-db/util/getparam.sh 1`'
#     \set getparam2 '\\bind `/home/oleg/src/pg-db/util/getparam.sh 1` `/home/oleg/src/pg-db/util/getparam.sh 2`'

# usage  command 'getparam':
#     \echo Parameter1: relation name (=)
#     :getparam1
#     select $1 relname, * from pg_relation_filepath( $1 )
#     \g
