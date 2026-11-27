
#!/bin/bash
db_dir="databases"

function create_database {

    echo "===== Create Database ====="
    read -rp "Enter database name: " db_name

    if [[ -z "$db_name" ]]; then
        echo "Error: Database name cannot be empty."
        return 1
    fi

    if [[ ! "$db_name" =~ ^[a-zA-Z][a-zA-Z0-9_]*$ ]]; then
        echo "Error: Invalid database name."
        echo "Name must start with a letter and contain only letters, numbers, and underscores."
        return 1
    fi

    if [[ -d "$db_dir/$db_name" ]]; then
        echo "Error: Database '$db_name' already exists."
        return 1
    fi

    mkdir -p "$db_dir/$db_name"

    if [[ $? -eq 0 ]]; then
        echo "Database '$db_name' created successfully."
    else
        echo "Error: Failed to create database."
        return 1
    fi
}

create_database
