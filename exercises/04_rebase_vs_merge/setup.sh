#!/bin/bash
# Exercise 04: Rebase
git checkout main &>/dev/null
git branch -D feature/rebase 2>/dev/null

# Stage the situation
git checkout -b feature/rebase &>/dev/null
echo "Sarfarosh,1999" >> files/movies/movies.csv
git add files/movies/movies.csv
git commit -m "E: add movie" &>/dev/null

git checkout main &>/dev/null
echo "DDLJ,1995" >> files/movies/movies.csv
git add files/movies/movies.csv
git commit -m "F: add movie on main" &>/dev/null

echo "--------------------------------------------------------"
echo "EXERCISE 04: REWRITING HISTORY (REBASE)"
echo "--------------------------------------------------------"
echo "You have work on 'feature/rebase' that started before 'main' moved forward."
echo "Use rebase to move your work to the tip of main."
echo ""
echo "COMMANDS TO RUN:"
echo "1. git checkout feature/rebase"
echo "2. git rebase main"
echo "   (You might need to resolve a small conflict in movies.csv)"
echo ""
echo "Then run ./verify.sh"
echo "--------------------------------------------------------"
