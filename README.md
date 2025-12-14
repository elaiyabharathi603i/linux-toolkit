# Linux Toolkit 🐧

A collection of useful Linux scripts and ESP32 development tools.

**Created by: Elaiyabharathi P**

## 🚀 Quick Start

\`\`\`bash
# Clone and setup
git clone https://github.com/elaiyabharathi603i/linux-toolkit.git
cd linux-toolkit
chmod +x scripts/**/*.sh
./scripts/test.sh
\`\`\`

## 📁 Project Structure

\`\`\`
linux-toolkit/
├── scripts/
│   ├── system/sysinfo.sh          # System information
│   ├── esp32/esp32_helper.sh      # ESP32 reference
│   ├── network/network_check.sh   # Network status
│   ├── backup/simple_backup.sh    # Config backup
│   └── test.sh                    # List all tools
├── configs/dotfiles/bash_aliases  # Shell shortcuts
├── docs/setup.md                  # Setup guide
├── .gitignore
├── LICENSE
└── README.md
\`\`\`

## 🔧 Available Tools

1. **System Information**
   \`\`\`bash
   ./scripts/system/sysinfo.sh
   \`\`\`
   Shows: CPU, memory, disk, network info

2. **ESP32 Helper**
   \`\`\`bash
   ./scripts/esp32/esp32_helper.sh
   \`\`\`
   Shows: GPIO pins, PlatformIO commands

3. **Network Check**
   \`\`\`bash
   ./scripts/network/network_check.sh
   \`\`\`
   Checks: Local network, internet, DNS

4. **Backup Tool**
   \`\`\`bash
   ./scripts/backup/simple_backup.sh
   \`\`\`
   Backs up: .bashrc, .bash_aliases

## ⚡ Quick Aliases

Add shortcuts to your shell:
\`\`\`bash
echo "source $(pwd)/configs/dotfiles/bash_aliases" >> ~/.bashrc
source ~/.bashrc
\`\`\`

Now use:
- \`toolkit\` - Show all scripts
- \`sysinfo\` - System information
- \`esphelp\` - ESP32 reference
- \`netcheck\` - Network status
- \`backup\` - Create backup

## 👨‍💻 Author
**Elaiyabharathi P** - Linux enthusiast and ESP32 developer

## 📄 License
MIT License - See [LICENSE](LICENSE) file for details.
