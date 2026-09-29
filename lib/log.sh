#!/usr/bin/env bash

[ -n "${_BASH_LIB_LOG:-}" ] && return
_BASH_LIB_LOG=1

source "$scripts_dir/lib/check.sh"

if ! is-int "${loglevel:-}"; then
    loglevel=2
fi

echo-error () {
    if [ "$loglevel" -ge 0 ]; then
        echo "[ERROR]" "$@"
    fi
}
echo-warn () {
    if [ "$loglevel" -ge 1 ]; then
        echo "[WARN]" "$@"
    fi
}
echo-info () {
    if [ "$loglevel" -ge 2 ]; then
        echo "[INFO]" "$@"
    fi
}
echo-debug () {
    if [ "$loglevel" -ge 3 ]; then
        echo "[DEBUG]" "$@"
    fi
}
