#!/bin/bash
if ! git log --oneline | grep -q "H: "; then
    echo "✅ SUCCESS: Bad commit removed or reverted!"
else
    echo "❌ FAILED: The bad commit is still in history."
fi
