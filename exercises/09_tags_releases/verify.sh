#!/bin/bash
if git tag | grep -q "v1.0.0"; then
    echo "✅ SUCCESS: Tag created!"
else
    echo "❌ FAILED: No tag found."
fi
