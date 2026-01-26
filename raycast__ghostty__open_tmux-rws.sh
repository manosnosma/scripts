#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title rws-tmux
# @raycast.mode silent

# Optional parameters:
# @raycast.icon /Users/nosma/Projects/apps/rws/.idea/icon.svg

# Documentation:
# @raycast.author nosma
# @raycast.authorURL nosma.dev

exec /Applications/Ghostty.app/Contents/MacOS/ghostty -e bash -lc "$HOME/.local/bin/scripts/tmux-rws"