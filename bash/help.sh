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
  # Skipping top 2 lines, to first blank line
  # Prints lines matching /^#/ omitting preceding "^# ?"
  awk 'NR==3,/^$/{if (sub("^# ?", "")) print}' $0
}

help

exit
