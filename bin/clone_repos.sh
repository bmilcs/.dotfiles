#!/usr/bin/env bash

# Define an array of repository URLs
repo_urls=(
  "https://github.com/bmilcs/odin-project.git"
  "https://github.com/bmilcs/odin-battleship.git"
  "https://github.com/bmilcs/odin-testing-practice.git"
  "https://github.com/bmilcs/odin-knights-travails.git"
  "https://github.com/bmilcs/odin-binary-search-trees.git"
  "https://github.com/bmilcs/odin-linked-lists.git"
  "https://github.com/bmilcs/odin-recursion.git"
  "https://github.com/bmilcs/odin-weather-app.git"
  "https://github.com/bmilcs/odin-todo-list.git"
  "https://github.com/bmilcs/odin-restaurant-page.git"
  "https://github.com/bmilcs/odin-tic-tac-toe.git"
  "https://github.com/bmilcs/odin-library.git"
  "https://github.com/bmilcs/odin-admin-dashboard.git"
  "https://github.com/bmilcs/odin-signup-form.git"
  "https://github.com/bmilcs/odin-calculator.git"
  "https://github.com/bmilcs/odin-etch-a-sketch.git"
  "https://github.com/bmilcs/odin-rock-paper-scissors.git"
  "https://github.com/bmilcs/odin-landing-page.git"
  "https://github.com/bmilcs/odin-recipes.git"
)

# Loop through the array of repository URLs
for repo_url in "${repo_urls[@]}"; do
  # Extract the repository name from the URL
  repo_name=$(basename "$repo_url" .git)

  # Check if the repository directory already exists
  if [ -d "$repo_name" ]; then
    # If the directory exists, change into it
    cd "$repo_name"
  else
    # If the directory does not exist, clone the repository
    git clone "$repo_url"
    # Change into the newly cloned repository
    cd "$repo_name"
  fi

  # Check the status of the repository
  git_status=$(git status --porcelain)
  # Check if the repository is pristine (no changes)
  if [ -z "$git_status" ]; then
    # If the repository is pristine, pull updates from the remote
    git pull
  else
    # If the repository is not pristine, print a message with the repository name
    echo "fix: $repo_name"
  fi

  # Change back to the parent directory
  cd ..
done
