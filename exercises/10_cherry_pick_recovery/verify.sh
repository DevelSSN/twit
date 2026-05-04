#!/bin/bash
if git log --oneline | grep -q "I: "; then
    echo "✅ SUCCESS: Commit cherry-picked!"
else
    echo "❌ FAILED: Commit not found in main."
fi
