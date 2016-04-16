#!/bin/bash

set -euo pipefail

#lib_dir=$(pwd ${BASH_SOURCE##*/})/lib
#. ${lib_dir}/foo.shrc

foo

exit

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


