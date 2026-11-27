#!/bin/bash

db_dir="databases"
function list_databases {
    echo "===== Available Databases ====="
    if [[ -d Databases ]] && [[ -n "$(ls -A Databases)" ]]; then
        ls -1 Databases
    else
        echo "No databases found."
    fi
}

