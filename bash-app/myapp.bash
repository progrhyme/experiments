#!/usr/bin/env bash

set -euo pipefail

eval $(cload logger.bashrc)

log.info foo
log.warn warn

exit
