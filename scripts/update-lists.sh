#!/bin/bash
# Update Pi-hole blocklists

echo "🔄 Updating Pi-hole gravity..."
pihole -g

echo "📈 Updating Pi-hole..."
pihole -up

echo "✅ Updates complete!"
