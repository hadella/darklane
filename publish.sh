#!/bin/bash
set -e

REPO_NAME="darklane"
PAGES_URL="https://hadella.github.io/${REPO_NAME}/"

# Ensure we start on main
current_branch=$(git branch --show-current)
if [ "$current_branch" != "main" ]; then
    echo "Error: Must be on main branch"
    exit 1
fi

echo "Building example site..."
cd exampleSite
hugo --baseURL "$PAGES_URL" --cleanDestinationDir
cd ..

# Ensure gh-pages branch exists
if ! git show-ref --verify --quiet refs/heads/gh-pages; then
    echo "Creating gh-pages branch..."
    git checkout --orphan gh-pages
    git rm -rf .
    echo "# GitHub Pages branch" > README.md
    git add README.md
    git commit -m "Initialize gh-pages branch"
    git checkout main
fi

echo "Switching to gh-pages..."
git checkout gh-pages

echo "Clearing old site..."
git rm -rf . || true
git clean -fxd

echo "Copying new build..."
cp -r exampleSite/public/* .

# Required for Hugo sites on GitHub Pages
touch .nojekyll

echo "Committing..."
git add .
git commit -m "Deploy example site - $(date '+%Y-%m-%d %H:%M')" || echo "No changes to commit"

echo "Pushing..."
git push origin gh-pages

echo "Returning to main..."
git checkout main

echo "Done: $PAGES_URL"
