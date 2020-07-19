#!/usr/bin/env bash
#
# help.sh
# =======
#
# Demo script to show help by shell function using AWK.
#
# Usage:
#
#     help.sh [-h|--help]
#

set -euo pipefail

# Function help() shows help
help() {
  awk 'NR > 2 {
    if (sub("^# ?", "")) print
    else exit
  }' $0
}

help

exit
