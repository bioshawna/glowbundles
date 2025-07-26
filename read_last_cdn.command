#!/bin/zsh
[[ -f ~/.glowcdn_cache ]] && echo "💾 Last CDN: $(cat ~/.glowcdn_cache)" || echo "📭 No cached CDN yet."
