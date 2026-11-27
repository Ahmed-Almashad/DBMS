#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

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

    case "$REPLY" in
        1)
            echo "You chose Create Database"
            bash "$SCRIPT_DIR/create_db.sh"
            ;;

        2)
            echo "You chose List Databases"
            bash "$SCRIPT_DIR/list_db.sh"
            ;;

        3)
            echo "You chose Connect To Database"
            bash "$SCRIPT_DIR/connect_db.sh"
            ;;

        4)
            echo "You chose Drop Database"
            bash "$SCRIPT_DIR/drop_db.sh"
            ;;

        5)
            echo "Exiting... Goodbye!"
            exit 0
            ;;

        *)
            echo "Invalid option ($REPLY). Please enter a number between 1 and ${#options[@]}."
            ;;
    esac

done
