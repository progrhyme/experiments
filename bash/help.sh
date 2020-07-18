#!/usr/bin/env bash
#
# # help.sh
#
# Demo script to show help by shell function using AWK.
#
# Usage:
#
#     help.sh [-h|--help]
#

set -euo pipefail

help() {
  awk 'BEGIN { st = 0 } {
    if (st == 0 && $0 ~ /^#[^!]*$/) {
      # Start to show help
      st = 1
      if ($0 !~ /^#$/) {
        sub("^# ", "", $0)
        print $0
      }
    } else if (st == 1) {
      if ($0 ~ /^#/) {
        sub("^# ?", "", $0)
        print $0
      } else {
        # End to show help
        st = 2
      }
    }
  } ' $0
}

help

exit

