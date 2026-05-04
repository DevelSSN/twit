#!/bin/bash
if git stash list | grep -q "stash@{0}" || [ -n "$(git status --short)" ]; then
    echo "✅ SUCCESS: You explored stash!"
else
    echo "❌ FAILED: Use git stash and git stash pop."
fi
