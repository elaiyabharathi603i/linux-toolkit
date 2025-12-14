#!/bin/bash
echo "🚀 LINUX TOOLKIT - COMPREHENSIVE TEST"
echo "====================================="

# Test counter
passed=0
total=0

# Function to test a script
test_script() {
    local script_path=$1
    local script_name=$(basename "$script_path")
    
    ((total++))
    echo -n "Testing $script_name... "
    
    if [ -x "$script_path" ]; then
        # Run script and capture output
        if "$script_path" &> /dev/null; then
            echo "✅ PASS"
            ((passed++))
            return 0
        else
            echo "❌ FAIL (exit code: $?)"
            return 1
        fi
    else
        echo "❌ FAIL (not executable)"
        chmod +x "$script_path" 2>/dev/null
        return 1
    fi
}

# Test each script
echo ""
echo "🔍 Running tests..."
echo "------------------"

test_script "scripts/test.sh"
test_script "scripts/system/sysinfo.sh"
test_script "scripts/esp32/esp32_helper.sh"
test_script "scripts/network/network_check.sh"
test_script "scripts/backup/simple_backup.sh"

echo ""
echo "📊 TEST RESULTS"
echo "---------------"
echo "Passed: $passed/$total"

if [ $passed -eq $total ]; then
    echo "🎉 ALL TESTS PASSED! Toolkit is ready."
else
    echo "⚠️  Some tests failed. Check script permissions."
fi

# Show sample output
echo ""
echo "📸 SAMPLE OUTPUT FROM EACH SCRIPT:"
echo "----------------------------------"
echo "1. Main menu:"
./scripts/test.sh | head -5
echo ""
echo "2. System info (first few lines):"
./scripts/system/sysinfo.sh | head -8
