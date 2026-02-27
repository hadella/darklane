#!/bin/bash

# Build the site (while on main)
echo "Building site on main branch..."
hugo -s exampleSite -d ../public_temp

# Switch to gh-pages
echo "Switching to gh-pages..."
git checkout gh-pages

# Clean and copy
echo "Deploying..."
git rm -rf .
cp -r ../public_temp/* .
rm -rf ../public_temp

# Commit and push
git add .
git commit -m "Deploy - $(date '+%Y-%m-%d %H:%M')"
git push origin gh-pages

# Back to main
git checkout main

echo "Done!"
