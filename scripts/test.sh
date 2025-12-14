#!/bin/bash
echo "=========================================="
echo "        LINUX TOOLKIT - v1.0"
echo "=========================================="
echo ""
echo "📁 Available scripts:"
echo "------------------------------------------"

# List all scripts with descriptions
echo "1. SYSTEM TOOLS:"
[ -f "scripts/system/sysinfo.sh" ] && echo "   • sysinfo.sh     - System information"

echo ""
echo "2. ESP32 TOOLS:"
[ -f "scripts/esp32/esp32_helper.sh" ] && echo "   • esp32_helper.sh - ESP32 reference"

echo ""
echo "3. NETWORK TOOLS:"
[ -f "scripts/network/network_check.sh" ] && echo "   • network_check.sh - Network status"

echo ""
echo "4. BACKUP TOOLS:"
[ -f "scripts/backup/simple_backup.sh" ] && echo "   • simple_backup.sh - Quick backup"

echo ""
echo "------------------------------------------"
echo "Usage: ./scripts/<category>/<script>.sh"
echo "Example: ./scripts/system/sysinfo.sh"
echo "=========================================="
