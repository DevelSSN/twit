#!/bin/bash
if git branch | grep -q "feature/login" && git log feature/login --oneline | grep -q "B: "; then
    echo "✅ SUCCESS: Branch created and commit made!"
else
    echo "❌ FAILED: Check your branch name and commit message."
fi
