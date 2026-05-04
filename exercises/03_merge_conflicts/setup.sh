#!/bin/bash
# Exercise 03: Merge Conflicts
git checkout main &>/dev/null
git branch -D conflict-branch 2>/dev/null

# Stage the situation
git checkout -b conflict-branch &>/dev/null
echo "Shah Rukh Khan,Lead" >> files/actors.csv
git add files/actors.csv
git commit -m "C: add actor on branch" &>/dev/null

git checkout main &>/dev/null
echo "Aamir Khan,Lead" >> files/actors.csv
git add files/actors.csv
git commit -m "D: add actor on main" &>/dev/null

echo "--------------------------------------------------------"
echo "EXERCISE 03: CLASH OF CONTENT (CONFLICTS)"
echo "--------------------------------------------------------"
echo "The same file has been modified differently in two branches."
echo "Your task is to merge them and fix the mess."
echo ""
echo "COMMANDS TO RUN:"
echo "1. git merge conflict-branch"
echo "   (This will fail with a CONFLICT)"
echo "2. Open 'files/actors.csv', fix the markers, and keep both actors."
echo "3. git add files/actors.csv"
echo "4. git commit -m 'resolve conflict'"
echo ""
echo "Then run ./verify.sh"
echo "--------------------------------------------------------"
