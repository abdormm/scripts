#!/usr/bin/env bash

[ -n "${_BASH_LIB_CHECK:-}" ] && return
_BASH_LIB_CHECK=1

is-int() {
    [ "$1" -eq "$1" ] 2> /dev/null
}

is-installer-valid() {
    local return_code=0
    if ! command -v installer-install-package > /dev/null 2>&1; then
        echo-error "current active installer has no installer-install-package"
        return_code=1
    fi
    if ! command -v installer-get-bin > /dev/null 2>&1; then
        echo-error "current active installer has no installer-get-bin"
        return_code=1
    fi
    if ! command -v installer-get-name > /dev/null 2>&1; then
        echo-error "current active installer has no installer-get-name"
        return_code=1
    fi
    return "$return_code"
}
