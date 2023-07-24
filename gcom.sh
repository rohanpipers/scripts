#!/bin/bash

# Define an associative array to store the commit types and their shortform input keys
declare -A commit_types=(
  ["f"]="feat"
  ["x"]="fix"
  ["d"]="docs"
  ["s"]="style"
  ["r"]="refactor"
  ["t"]="test"
  ["c"]="chore"
)

# Function to display the commit types and their shortform input keys
function display_commit_types() {
  echo "Commit Types:"
  for key in "${!commit_types[@]}"; do
    echo "  ${commit_types[$key]}: $key"
  done
}

# Prompt the user to choose a commit type using shortform input key
function get_commit_type() {
  read -p "Choose the commit type (enter shortform key): " input_key
  commit_type=${commit_types[$input_key]}
  if [ -z "$commit_type" ]; then
    echo "Invalid input key. Please try again."
    get_commit_type
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

