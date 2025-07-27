#!/bin/bash
# Note-taking function
note() {
    local notes_file="$HOME/.notes.txt"
    
    # If no arguments, show all notes
    if [ $# -eq 0 ]; then
        if [ -f "$notes_file" ] && [ -s "$notes_file" ]; then
            cat -n "$notes_file"
        else
            echo "No notes found."
        fi
    # Delete a note by line number
    elif [ "$1" = "-d" ] && [ -n "$2" ]; then
        if [ -f "$notes_file" ] && [ -s "$notes_file" ]; then
            if sed -n "${2}p" "$notes_file" >/dev/null 2>&1; then
                sed -i "${2}d" "$notes_file"
                echo "Note $2 deleted."
            else
                echo "Invalid note number: $2"
            fi
        else
            echo "No notes found to delete."
        fi
    # Edit a note by line number
    elif [ "$1" = "-e" ] && [ -n "$2" ] && [ -n "$3" ]; then
        if [ -f "$notes_file" ] && [ -s "$notes_file" ]; then
            if sed -n "${2}p" "$notes_file" >/dev/null 2>&1; then
                sed -i "${2}s|.*|[$(date '+%Y-%m-%d %H:%M:%S')] ${*:3}|" "$notes_file"
                echo "Note $2 edited: ${*:3}"
            else
                echo "Invalid note number: $2"
            fi
        else
            echo "No notes found to edit."
        fi
    # Add a new note
    else
        echo "[$(date '+%Y-%m-%d %H:%M:%S')] $*" >> "$notes_file"
        echo "Note added: $*"
    fi
}
