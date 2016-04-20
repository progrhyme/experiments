#!/usr/bin/env sh

. ~/gitrepos/shove/lib/t.shrc

t_init
t_ok ok
t_ng ng
(
  t_substart "start child"
  t_ok c1
  t_ng c2
  (
    t_substart "grand child"
    t_ok gc1
    t_ng gc2
    t_report > /dev/null
  )
  t_subend "grand child"
  t_report > /dev/null
)
t_subend "end child"

t_report
