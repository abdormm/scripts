#!/usr/bin/env bash

source "$scripts_dir/lib/log.sh"

installer-install-package() {
    local url="$1"
    local filename="$2"
    if [ -z "$filename" ]; then
        filename=$(basename "$url")
        echo-debug "filename was extracted from url"
    fi

    echo-info "downloading '$filename'..."
    if ! curl -L#o "$filename" "$url"; then
        echo-error "downloading '$filename' failed"
        return 1
    else
        echo-info "downloading '$filename' succeed"
    fi
    unpack "$filename"
}

installer-get-bin() {
    echo "$1"
}

installer-get-name() {
    echo "curl"
}
