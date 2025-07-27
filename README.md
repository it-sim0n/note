# SimonNote

A simple Bash script to manage notes directly from the terminal. Add, view, delete, or edit notes with automatic timestamping, stored in `~/.notes.txt`.

> ⚠️ For **personal use** on your own system.

---

## Features

- Add notes with timestamps (e.g., `note sudo apt update`)
- View notes with line numbers (e.g., `note`)
- Delete notes by line number (e.g., `note -d 2`)
- Edit notes by line number (e.g., `note -e 1 sudo apt upgrade`)
- Notes saved in `~/.notes.txt`

---

## Requirements

- Bash (Linux or macOS)
- Basic utilities: `cat`, `sed`

---

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/it-sim0n/simonnote.git
   cd simonnote
   ```

2. Copy and set up the script:
   ```bash
   cp note.sh ~/.note.sh
   chmod +x ~/.note.sh
   echo '[ -f "$HOME/.note.sh" ] && source "$HOME/.note.sh"' >> ~/.bashrc && source ~/.bashrc
   ```

---

## Usage

- **Add a note**:
  ```bash
  note sudo apt update
  ```

- **View all notes**:
  ```bash
  note
  ```

- **Delete a note**:
  ```bash
  note -d 2
  ```

- **Edit a note**:
  ```bash
  note -e 1 sudo apt upgrade
  ```

---

## Notes
- Notes are stored in `~/.notes.txt`.
- Backup `.bashrc` before modifying: `cp ~/.bashrc ~/.bashrc.bak`.
- Ensure you're in Bash: `echo $0`. If `zsh`, run `exec bash`.

---

## License
MIT License
