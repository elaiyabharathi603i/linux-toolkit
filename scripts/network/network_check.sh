#!/bin/bash
echo "================================="
echo "     NETWORK STATUS CHECK"
echo "================================="

echo ""
echo "🔌 LOCAL NETWORK"
if ip route | grep -q default; then
    gateway=$(ip route | grep default | awk '{print $3}')
    interface=$(ip route | grep default | awk '{print $5}')
    echo "  ✓ Connected via: $interface"
    echo "  Gateway: $gateway"
    
    ip_addr=$(ip -o addr show $interface 2>/dev/null | grep 'inet ' | awk '{print $4}')
    [ -n "$ip_addr" ] && echo "  Local IP: $ip_addr"
else
    echo "  ✗ No network connection"
fi

echo ""
echo "🌐 INTERNET ACCESS"
if ping -c 1 8.8.8.8 &> /dev/null; then
    echo "  ✓ Internet is working"
    public_ip=$(curl -s --max-time 3 ifconfig.me 2>/dev/null)
    if [ -n "$public_ip" ]; then
        echo "  Public IP: $public_ip"
    else
        echo "  Public IP: Unable to determine"
    fi
else
    echo "  ✗ No internet connection"
fi

echo ""
echo "📶 DNS RESOLUTION"
if nslookup google.com &> /dev/null; then
    echo "  ✓ DNS is working"
else
    echo "  ✗ DNS resolution failed"
fi
