#!/bin/bash
NAME=$(git config --global user.name)
EMAIL=$(git config --global user.email)

if [ -n "$NAME" ] && [ -n "$EMAIL" ]; then
    echo "✅ SUCCESS: Git is configured!"
    echo "User:  $NAME"
    echo "Email: $EMAIL"
else
    echo "❌ FAILED: user.name or user.email is not set."
    echo "Run the commands shown in ./setup.sh"
fi
