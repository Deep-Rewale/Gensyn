#!/bin/bash
set -e

echo "🚀 WAIT BRO DEEP - Applying All Fixes and Patches"
echo "--------------------------------------------------"
# -------------------------------------
# 1️⃣ Replace page.tsx with Latest
# -------------------------------------
echo ""
echo "📥 Downloading latest page.tsx from Deep gensyn guide GitHub..."

PAGE_DEST="$HOME/rl-swarm/modal-login/app/page.tsx"
curl -fsSL https://raw.githubusercontent.com/Deep-Rewale/Gensyn/new/main/page.tsx -o "$PAGE_DEST"

if [ $? -eq 0 ]; then
  echo "✅ Successfully updated: page.tsx"
else
  echo "❌ Failed to download page.tsx from GitHub."
fi
# -------------------------------------
# ✅ Completion Message
# -------------------------------------
echo ""
echo "🎉 All patches and fixes have been successfully applied thanks to deep !"
echo "💡 FOLLOW DEEP ON X  https://x.com/deep_rewale28 ! "
echo "💡 Your gensyn  setup is now ready to roll. Happy earning! 🚀"
