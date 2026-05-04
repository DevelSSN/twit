#!/bin/bash
if ! git status | grep -q "merge"; then
    if grep -q "Shah Rukh Khan" files/actors.csv && grep -q "Aamir Khan" files/actors.csv; then
        echo "✅ SUCCESS: Conflict resolved!"
    else
        echo "❌ FAILED: Conflict not resolved or data lost."
    fi
else
    echo "❌ FAILED: You are still in a merge state."
fi
