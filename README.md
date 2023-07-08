# Linux File and Folder Renamer (renamerFF)

This utility program is designed for Linux users to rename multiple files and folders simultaneously in the current directory. It provides flexible renaming options to suit different requirements.

## Features

- Rename Full Name: Renames files and folders by converting them to uppercase or lowercase.
- Rename Part of Name: Allows replacing a specific part of the name with a new string.
- Handling Conflicts: When a renamed item already exists, the program appends a number in ascending order to make the new name unique.

## Usage

1. Clone the repository or download the script file.
2. Open a terminal and navigate to the directory containing the script.
3. Make the script executable: `chmod +x renamerFF.sh`.
4. Run the script: `./renamerFF.sh`.
5. Choose the renaming option:
   - Option 1: Rename Full Name.
   - Option 2: Rename Part of Name.
6. Follow the on-screen prompts to provide necessary inputs.
7. The program will rename the files and folders in the current directory based on the chosen option.
8. The old and new names of each renamed item will be displayed in the terminal.

## Examples

### Rename Full Name

- Convert folders to uppercase: The script will rename folders to uppercase, e.g., `folder` becomes `FOLDER`.
- Convert files to lowercase: The script will rename files to lowercase, e.g., `FILE.txt` becomes `file.txt`.

### Rename Part of Name

- Replace part of the name: The script allows replacing a specific part of the name with a new string. For example, replacing `old` with `new` will rename `old_name.txt` to `new_name.txt` and `old_folder` to `new_folder`.

## Note

- Exercise caution when renaming multiple items at once, especially in important directories. It is recommended to test the utility on a backup or in a separate test directory before using it on critical data.

This is in it's initial phase, feel free to contribute.
