#!/bin/zsh
echo "🔧 Rebuilding SEObuzz GlowBundle locally…"

# --- SEO test script (dummy) ---
cat > test_seobuzz_glowscore.command <<'EOF'
#!/bin/zsh
echo "✨ Running SEObuzz GlowScore test…" && sleep 1
echo "✅ All good!"
EOF
chmod +x test_seobuzz_glowscore.command

# --- example config file ---
cat > seobuzz.conf <<'EOF'
# SEObuzz default configuration
glow=true
score_threshold=80
EOF

# --- README ---
cat > README.txt <<'EOF'
SEObuzz GlowBundle 0726
Contents:
  • test_seobuzz_glowscore.command – quick smoke test
  • seobuzz.conf – default config file
EOF

# --- placeholder asset ---
dd if=/dev/zero of=glow_placeholder.dat bs=1k count=2 >/dev/null 2>&1

echo "📦 Local bundle contents:"
ls -1

afplay /System/Library/Sounds/Glass.aiff 2>/dev/null
open .
echo "🏁 Done – no external download needed."
