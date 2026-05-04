#!/bin/bash
# Exercise 10: Cherry Pick
git checkout main &>/dev/null
git branch -D other-branch 2>/dev/null

# Stage the situation
git checkout -b other-branch &>/dev/null
echo "3 Idiots,2009" >> files/movies/movies.csv
git add files/movies/movies.csv
git commit -m "I: pick me" &>/dev/null

git checkout main &>/dev/null

echo "--------------------------------------------------------"
echo "EXERCISE 10: SELECTIVE HARVEST (CHERRY PICK)"
echo "--------------------------------------------------------"
echo "There is a great commit on 'other-branch' that we want on 'main'."
echo "But we don't want the whole branch, just that one commit."
echo ""
echo "COMMANDS TO RUN:"
echo "1. git log other-branch --oneline"
echo "   (Find the hash for 'I: pick me')"
echo "2. git cherry-pick <HASH>"
echo ""
echo "Then run ./verify.sh"
echo "--------------------------------------------------------"
