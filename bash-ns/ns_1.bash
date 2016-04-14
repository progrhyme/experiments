#!/bin/bash

ns_func() {
  local _ns=$1
  local _func=$2
  local _code=""
  for l in "$(cat -)"; do
    _code="${_code}$l"
  done
  eval "${_ns}::${_func}() {
    $_code
  }"
}

ns_func ns f <<EOS
  echo foo
EOS

ns::f

: <<'__EOF__'

=encoding utf8

=head1 NAME

B<script-name> - summary

=head1 SYNOPSYS

    script-name [options ...]

=head1 DESCRIPTION

blah blah blah.

=head1 AUTHORS

YASUTAKE Kiyoshi E<lt>yasutake.kiyoshi@gmail.comE<gt>

=cut

__EOF__


