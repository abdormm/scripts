#!/usr/bin/env bash

source "$scripts_dir/lib/log.sh"

installer-install-package() {
    local package="$1"
    if [ -z "$package" ]; then
        echo-error "no package was given"
        return 1
    fi
    npm install --verbose "$package"
}

installer-get-bin() {
    echo "node_modules/.bin/$1"
}

installer-get-name() {
    echo "npm"
}
