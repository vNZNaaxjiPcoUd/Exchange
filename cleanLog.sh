#!/bin/bash

git filter-branch --force --index-filter 'git rm -r --cached --ignore-unmatch .' --prune-empty --tag-name-filter cat -- --all
git add --all
git commit -m "new"
git push -f
git pull


