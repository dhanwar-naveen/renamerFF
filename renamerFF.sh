#!/bin/bash

path=$(pwd)  # Get the current working directory

# List all files and folders in the current directory
items=$(ls -A "$path")

echo "Enter the renaming option:"
echo "1. Rename Full Name"
echo "2. Rename Part of Name"
read -p "Option: " option

if [ "$option" == "1" ]; then
    for item in $items; do
        old_name="$path/$item"
        
        if [ -d "$old_name" ]; then  # Check if it's a directory
            new_name="$path/${item^^}"  # Example renaming: Convert to uppercase
        else  # It's a file
            new_name="$path/${item,,}"  # Example renaming: Convert to lowercase
        fi
        
        # Check if the new name already exists
        if [ -e "$new_name" ]; then
            counter=1
            while [ -e "$new_name" ]; do
                base_name="${new_name%.*}"  # Remove extension, if any
                extension="${new_name##*.}"  # Get extension, if any
                new_name="$base_name ($counter).$extension"  # Append counter to the new name
                counter=$((counter + 1))
            done
        fi
        
        mv "$old_name" "$new_name"
        echo "Renamed: $old_name -> $new_name"
    done
elif [ "$option" == "2" ]; then
    read -p "Enter the part of the name to replace: " search_string
    read -p "Enter the new part of the name: " replace_string
    
    for item in $items; do
        old_name="$path/$item"
        
        if [ -d "$old_name" ]; then  # Check if it's a directory
            new_name="${item//$search_string/$replace_string}"  # Replace part of the name
            new_name="$path/$new_name"
        else  # It's a file
            new_name="${item//$search_string/$replace_string}"  # Replace part of the name
            new_name="$path/$new_name"
        fi
        
        # Check if the new name already exists
        if [ -e "$new_name" ]; then
            counter=1
            while [ -e "$new_name" ]; do
                base_name="${new_name%.*}"  # Remove extension, if any
                extension="${new_name##*.}"  # Get extension, if any
                new_name="$base_name ($counter).$extension"  # Append counter to the new name
                counter=$((counter + 1))
            done
        fi
        
        mv "$old_name" "$new_name"
        echo "Renamed: $old_name -> $new_name"
    done
else
    echo "Invalid option. Exiting..."
    exit 1
fi
