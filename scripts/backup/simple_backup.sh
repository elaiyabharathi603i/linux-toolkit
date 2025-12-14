#!/bin/bash
echo "================================="
echo "     SIMPLE BACKUP TOOL"
echo "================================="

BACKUP_DIR="$HOME/backups"
mkdir -p "$BACKUP_DIR"

BACKUP_FILE="$BACKUP_DIR/backup_$(date +%Y%m%d_%H%M%S).tar.gz"

echo ""
echo "📦 Backing up important configs..."
echo "   Destination: $BACKUP_FILE"

tar -czf "$BACKUP_FILE" \
    ~/.bashrc \
    ~/.bash_aliases \
    ~/.bash_profile 2>/dev/null

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Backup successful!"
    echo "   Size: $(du -h "$BACKUP_FILE" | cut -f1)"
    echo "   Saved to: $BACKUP_FILE"
else
    echo ""
    echo "❌ Backup failed!"
fi
