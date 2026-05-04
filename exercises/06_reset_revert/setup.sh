#!/bin/bash
# Exercise 06: Reset and Revert
git checkout main &>/dev/null
echo "Oops, a mistake!" >> hello.txt
git add hello.txt
git commit -m "H: bad commit" &>/dev/null

echo "--------------------------------------------------------"
echo "EXERCISE 06: TIME TRAVEL (RESET & REVERT)"
echo "--------------------------------------------------------"
echo "You just made a 'bad commit' (H:). You need to undo it."
echo ""
echo "COMMANDS TO TRY:"
echo "Option A (Destructive): git reset --hard HEAD~1"
echo "Option B (Safe/New Commit): git revert HEAD"
echo ""
echo "Try Option A for this exercise."
echo "Then run ./verify.sh"
echo "--------------------------------------------------------"
