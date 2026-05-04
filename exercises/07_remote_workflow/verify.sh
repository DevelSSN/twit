#!/bin/bash
if git remote -v | grep -q "origin"; then
    echo "✅ SUCCESS: Remote 'origin' added!"
    if git ls-remote origin &>/dev/null; then
        echo "✅ SUCCESS: Remote is reachable and initialized!"
    else
        echo "❌ FAILED: Remote exists but I cannot reach it. Did you create twit-remote.git?"
    fi
else
    echo "❌ FAILED: No remote named 'origin' found."
fi
