cd ~/darklane
cat > publish.sh << 'EOF'
#!/bin/bash

echo "Building example site..."
cd exampleSite
hugo

echo "Switching to gh-pages branch..."
cd ..
git checkout gh-pages

echo "Cleaning old files..."
git rm -rf .
git clean -fxd

echo "Copying new build..."
cp -r exampleSite/public/* .
cp exampleSite/public/.* . 2>/dev/null || true

echo "Committing changes..."
git add .
git commit -m "Deploy example site - $(date '+%Y-%m-%d %H:%M')"

echo "Pushing to GitHub..."
git push origin gh-pages

echo "Switching back to main..."
git checkout main

echo "Done! Site will be live at https://hadella.github.io/darklane/"
EOF

chmod +x publish.sh
