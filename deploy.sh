#!/bin/sh

# If a command fails then the deploy stops
set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

# Build the project.
hugo

# Go To Public folder
cd public

# Remove existing .git directory if it exists
rm -rf .git

# Initialize a new git repository in public, add remote, and push
git init
git remote add origin https://github.com/profgabrielramos-ai/profgabrielramos-ai.github.io.git
git add .
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
    msg="$*"
fi
git commit -m "$msg"
git branch -M main # Ensure the branch is named 'main'
git push -f origin main # Force push to overwrite history if needed

# Come Back
cd ..

# Commit and Push main repo (source code)
git add .
msg="rebuilding site $(date)"
git commit -m "$msg"
git push origin main
