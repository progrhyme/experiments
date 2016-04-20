#!/usr/bin/env sh

. ~/gitrepos/shove/lib/t.shrc

t_init
t_ok ok
t_ng ng
t_diag "start group"
(
  t_init
  _t_incr_level
  t_ok c1
  t_ng c2
  t_report > /dev/null
)
t_is $? 0 "group test"
_t_decr_level

t_report
