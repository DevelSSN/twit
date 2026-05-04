#!/bin/bash
if [ -f hello.txt ] && git log --oneline | grep -q "A: "; then
    echo "✅ SUCCESS: hello.txt created and committed!"
else
    echo "❌ FAILED: Make sure you created hello.txt and committed with a message starting with 'A: '"
fi
