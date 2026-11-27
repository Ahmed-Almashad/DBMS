#!/bin/bash

database_functions="database_functions.sh"

options=(
    "Create Database"
    "List Databases"
    "Connect To Database"
    "Drop Database"
    "Exit"
)

echo "================= Main Menu ================="
PS3="Please select an option (1-${#options[@]}): "

select opt in "${options[@]}"; do
    case "$opt" in
        "Create Database")
            echo "You chose Create Database"
            bash "database_op/create.sh"
            ;;
        "List Databases")
            echo "You chose List Databases"
            bash "database_op/list_db.sh"
            ;;
        "Connect To Database")
            echo "You chose Connect To Database"
            bash "database_op/connect.sh"
            ;;
        "Drop Database")
            echo "You chose Drop Database"
            bash "database_op/drop_db.sh"
            ;;
        "Exit")
            echo "Exiting Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid option ($REPLY). Please enter a number between 1 and ${#options[@]}."
            ;;
    esac
done