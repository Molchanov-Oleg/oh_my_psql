\echo ### lock monitor in database (need login to database) (review :lock_c)
\echo
-- #
-- # author: Molchanov Oleg
-- #

select
  coalesce(blockerl.relation::regclass::text,blockerl.locktype) as locked_item,
--blocker
  blocker.pid as blocker_pid,
  blocker.state as blocker_state,
  blocker.xact_start as blocker_xact,
  blockerl.mode as blocker_mode,
  '---' as "---",
--blocked
  blocked.pid as blocked_pid,
  blocked.state as blocked_state,
  blocked.xact_start as blocked_xact,
  blockedl.mode as blocked_mode,
  now() - blocked.query_start as wait_time
from pg_catalog.pg_locks blockedl
join pg_stat_activity blocked on blockedl.pid = blocked.pid
join pg_catalog.pg_locks blockerl on ( ( ( blockerl.transactionid=blockedl.transactionid)
                                      or ( blockerl.relation=blockedl.relation
                                       and blockerl.locktype=blockedl.locktype )
                                       ) and blockedl.pid != blockerl.pid )
join pg_stat_activity blocker on blockerl.pid = blocker.pid
                             and blocker.datid = blocked.datid
where not blockedl.granted
      and blocker.datname = current_database()
order by 11, 4
\g
