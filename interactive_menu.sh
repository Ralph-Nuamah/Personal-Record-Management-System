#!/bin/bash

record_file="personal_records.txt"

while true; do
    echo "Personal Record Management System"
    echo "1. Add new record"
    echo "2. Edit existing record"
    echo "3. Search for record"
    echo "4. Generate report"
    echo "5. Exit"
    read -p "Enter your choice: " choice

    case $choice in
        1)
            echo "Adding new record..."
            read -p "Enter name: " name
            read -p "Enter age: " age
            echo "$name,$age" >> "$record_file"
            echo "Record added."
            ;;
        2)
            echo "Editing existing record..."
            read -p "Enter name to edit: " edit_name
            read -p "Enter new age: " new_age
            sed -i "s/^$edit_name,.*/$edit_name,$new_age/" "$record_file"
            echo "Record edited."
            ;;
        3)
            echo "Searching for record..."
            read -p "Enter name to search: " search_name
            grep -i "^$search_name" "$record_file"
            ;;
        4)
            echo "Generating report..."
            cat "$record_file"
            ;;
        5)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
done
