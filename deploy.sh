#!/bin/bash

echo "🛠️ Building the Jekyll site..."
bundle exec jekyll build

echo "🚀 Deploying to gh-pages branch..."

cd _site
git init
git checkout -b gh-pages
git remote add origin git@github-tanpopo:tanpopoconsulting/tanpopoconsulting.github.io.git
git add .
git commit -m "Deploy: $(date '+%Y-%m-%d %H:%M:%S')"
git push -f origin gh-pages
cd ..

echo "✅ Deployed successfully to GitHub Pages!"
