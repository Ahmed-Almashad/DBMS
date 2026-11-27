#!/bin/bash
db_dir="databases"

function list_databases {
    echo "===== Available Databases ====="

    if [[ -d "$db_dir" ]] && [[ -n "$(ls -A "$db_dir")" ]]; then
        ls -1 "$db_dir"
    else
        echo "No databases found."
    fi
}