#!/usr/bin/env bash

source "$scripts_dir/lib/log.sh"

venv_dir=".venv"
skip_staging=1

installer-install-package() {
    local package="$1"
    if [ -z "$package" ]; then
        echo-error "no package was given"
        return 1
    fi

    python -m venv "$venv_dir"
    exitcode="$?"
    if [ "$exitcode" -ne 0 ]; then
        echo-error "creating virtual environment failed"
        return 1
    else
        echo-info "creating virtual environment succeeded"
    fi

    source "$venv_dir/bin/activate"
    exitcode="$?"
    if [ "$exitcode" -ne 0 ]; then
        echo-error "sourcing activate failed"
        return 1
    else
        echo-info "sourcing activate succeeded"
    fi

    pip install "$package"
}

installer-get-bin() {
    echo "$venv_dir/bin/$1"
}

installer-get-name() {
    echo "pip"
}
