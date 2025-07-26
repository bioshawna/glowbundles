#!/bin/zsh
echo "🔍 Checking CDN status..."
CDN_HOSTS=("bioshawna.sfo3.cdn.digitaloceanspaces.com" "glowpublic.nyc3.cdn.digitaloceanspaces.com" "bioshawna.nyc3.cdn.digitaloceanspaces.com" "glow-alt.sgp1.cdn.digitaloceanspaces.com")
for host in "${CDN_HOSTS[@]}"; do
  echo -n "🌐 $host... "
  if curl -s --head --max-time 3 "https://$host" | grep "200 OK" >/dev/null; then echo "✅ Reachable"; else echo "❌ Unreachable"; fi
done
