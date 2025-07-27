SimonNote: Bash Note-Taking Script
A lightweight Bash script for taking notes directly from the terminal. The note command allows you to add, view, delete, and edit notes, with each note automatically timestamped and stored in ~/.notes.txt. This script is designed to be simple, portable, and easy to integrate into your Bash environment.
Features

Add Notes: Save a new note with a timestamp (e.g., note sudo apt update).
View Notes: Display all notes with line numbers for easy reference (e.g., note).
Delete Notes: Remove a specific note by its line number (e.g., note -d 2).
Edit Notes: Update a specific note by its line number (e.g., note -e 1 sudo apt upgrade).
Persistent Storage: Notes are saved in ~/.notes.txt and persist across terminal sessions.

Installation

Clone the Repository:Clone the simonnote repository from GitHub:
git clone https://github.com/your-username/simonnote.git
cd simonnote

Note: Replace your-username with the actual GitHub username hosting the simonnote repository.

Copy the Script:Copy the note.sh script to your home directory:
cp note.sh ~/.note.sh


Make the Script Executable:Set executable permissions for the script:
chmod +x ~/.note.sh


Add to .bashrc:Add the script to your .bashrc to make the note command available in every Bash session:
echo '[ -f "$HOME/.note.sh" ] && source "$HOME/.note.sh"' >> ~/.bashrc && source ~/.bashrc


Optional: Avoid Duplicates:To prevent adding the sourcing line multiple times to .bashrc, you can use:
if ! grep -Fx '[ -f "$HOME/.note.sh" ] && source "$HOME/.note.sh"' ~/.bashrc; then
    echo '[ -f "$HOME/.note.sh" ] && source "$HOME/.note.sh"' >> ~/.bashrc
    source ~/.bashrc
    echo "Added note.sh to .bashrc and sourced it."
else
    echo "note.sh is already sourced in .bashrc."
fi



Usage
Add a Note
To add a new note:
note sudo apt update

Output:
Note added: sudo apt update

View All Notes
To display all notes with line numbers:
note

Example output:
     1  [2025-07-27 13:04:00] sudo apt update
     2  [2025-07-27 13:05:00] git status

Delete a Note
To delete a note by its line number:
note -d 2

Output:
Note 2 deleted.

Edit a Note
To edit a note by its line number:
note -e 1 sudo apt upgrade

Output:
Note 1 edited: sudo apt upgrade

Notes Storage

Notes are stored in ~/.notes.txt in your home directory.
Each note is prefixed with a timestamp in the format [YYYY-MM-DD HH:MM:SS].
To change the storage location, edit the notes_file variable in ~/.note.sh.

Troubleshooting

Verify Bash Environment: Ensure you're using Bash:echo $0

If it shows zsh, switch to Bash:exec bash


Check for .bashrc Conflicts: If you see errors like command not found: bind or shopt, check for conflicting lines (e.g., exec zsh) in .bashrc and remove them.
Backup Files: Before modifying .bashrc or ~/.note.sh, create backups:cp ~/.bashrc ~/.bashrc.bak
cp ~/.note.sh ~/.note.sh.bak


File Permissions: Ensure ~/.note.sh is executable:chmod +x ~/.note.sh



Contributing
Contributions are welcome! Feel free to fork the repository, add features (e.g., note execution, search, or tagging), and submit pull requests. To contribute:

Fork the repository.
Create a new branch (git checkout -b feature-branch).
Make your changes and commit (git commit -m "Add new feature").
Push to your branch (git push origin feature-branch).
Open a pull request.

License
This project is licensed under the MIT License.
