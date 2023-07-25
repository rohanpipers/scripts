#!/bin/bash

# Define an associative array to store the commit types and their shortform input keys
commit_types=("feat" "fix" "docs" "style" "refactor" "test" "chore")
commit_keys=("f" "x" "d" "s" "r" "t" "c")

# Function to display the commit types and their shortform input keys
function display_commit_types() {
  echo "Commit Types:"
  for ((i = 0; i < ${#commit_types[@]}; i++)); do
    echo "  ${commit_keys[i]}: ${commit_types[i]}"
  done
}

# Prompt the user to choose a commit type using shortform input key
function get_commit_type() {
  read -p "Choose the commit type (enter shortform key): " input_key
  local index=-1
  for ((i = 0; i < ${#commit_keys[@]}; i++)); do
    if [ "$input_key" == "${commit_keys[i]}" ]; then
      index=$i
      break
    fi
  done

  if [ $index -eq -1 ]; then
    echo "Invalid input key. Please try again."
    get_commit_type
  else
    commit_type="${commit_types[index]}"
  fi
}

# Prompt the user for other commit details
function get_commit_details() {
  read -p "Enter the scope of commit (e.g., fix(bug), feat(dropdown)): " scope
  read -p "Enter the commit message: " message
}

display_commit_types
get_commit_type
get_commit_details

# Construct the commit message
commit_message="${commit_type}(${scope}): ${message}"

# Execute git commit command
git commit -m "$commit_message"

