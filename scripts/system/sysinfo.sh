#!/bin/bash
echo "================================="
echo "     SYSTEM INFORMATION"
echo "================================="

echo ""
echo "🖥️  BASIC INFO"
echo "  Hostname : $(hostname)"
echo "  User     : $(whoami)"
echo "  Date     : $(date)"
echo "  Uptime   : $(uptime -p | sed 's/up //')"
echo "  Kernel   : $(uname -r)"
echo "  Shell    : $SHELL"

echo ""
echo "⚡ CPU"
echo "  Cores    : $(nproc)"
lscpu | grep 'Model name' | cut -d':' -f2 | sed 's/^[ \t]*//' | while read line; do
    echo "  Model    : $line"
done

echo ""
echo "💾 MEMORY"
free -h | awk '
  /^Mem:/ { printf "  RAM      : %s total | %s used | %s free\n", $2, $3, $4 }
  /^Swap:/ { if ($2 != "0B") printf "  Swap     : %s total | %s used\n", $2, $3 }
'

echo ""
echo "💿 DISK"
df -h --output=source,size,used,pcent,target | grep -E '^(Filesystem|/dev/)' | head -5

echo ""
echo "🌐 NETWORK"
ip -o addr show | grep 'inet ' | grep -v '127.0.0.1' | head -2 | while read line; do
    interface=$(echo $line | awk '{print $2}')
    ip=$(echo $line | awk '{print $4}')
    echo "  $interface: $ip"
done
