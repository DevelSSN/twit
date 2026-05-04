#!/bin/bash
if [ "$(git rev-parse feature/rebase)" != "$(git rev-parse main)" ] && git log feature/rebase --oneline | grep -q "F: "; then
    echo "✅ SUCCESS: feature/rebase is now on top of main!"
else
    echo "❌ FAILED: Rebase not completed correctly."
fi
