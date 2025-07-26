#!/bin/zsh
DEST="$HOME/bioshawna_tools/seobuzz"
mkdir -p "$DEST" && cd "$DEST"
curl -L --fail -o SEObuzz_GlowBundle_0726.zip "https://github.com/bioshawna/glowbundles/releases/download/v0726/SEObuzz_GlowBundle_LOCAL.zip" || { echo "download failed"; exit 1; }
unzip -o SEObuzz_GlowBundle_0726.zip && afplay /System/Library/Sounds/Glass.aiff 2>/dev/null
open .
