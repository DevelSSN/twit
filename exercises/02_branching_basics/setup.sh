#!/bin/bash
# Exercise 02: Branching Basics
git checkout main &>/dev/null
git branch -D feature/login 2>/dev/null
echo "--------------------------------------------------------"
echo "EXERCISE 02: PARALLEL UNIVERSES (BRANCHING)"
echo "--------------------------------------------------------"
echo "Task: Create a new branch and add a change to it."
echo ""
echo "COMMANDS TO RUN:"
echo "1. git checkout -b feature/login"
echo "2. echo 'Shah Rukh Khan,Lead' >> files/actors.csv"
echo "3. git add files/actors.csv"
echo "4. git commit -m 'B: add actor'"
echo ""
echo "Then run ./verify.sh"
echo "--------------------------------------------------------"
