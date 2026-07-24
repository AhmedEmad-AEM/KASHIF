#!/bin/bash
# KASHIF Installation Script
# Team: AHMED EMAD | MOHAMED NAGY | ABDALLAH NEGEADA | ABDALLAH SALMAN

set -e

# Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m'
BOLD='\033[1m'

echo -e "${BOLD}${GREEN}╔════════════════════════════════════════╗${NC}"
echo -e "${BOLD}${GREEN}║   KASHIF - Installer v4.1              ║${NC}"
echo -e "${BOLD}${GREEN}╚════════════════════════════════════════╝${NC}"
echo

# 1. Check if the main script exists
if [ ! -f "kashif" ]; then
    echo -e "${RED}[!] Error: 'kashif' file not found in current directory.${NC}"
    echo -e "${YELLOW}[*] Please make sure you are in the correct folder.${NC}"
    exit 1
fi

# 2. Make it executable
echo -e "${YELLOW}[*] Making 'kashif' executable...${NC}"
chmod +x kashif
echo -e "${GREEN}[+] Done.${NC}"

# 3. Install dependencies
echo -e "${YELLOW}[*] Checking dependencies...${NC}"
DEPS=("hashcat" "hashid" "jq")
for dep in "${DEPS[@]}"; do
    if ! command -v "$dep" &>/dev/null; then
        echo -e "${YELLOW}[*] $dep not found. Installing...${NC}"
        sudo apt update && sudo apt install -y "$dep" || {
            echo -e "${RED}[!] Failed to install $dep. Please install it manually.${NC}"
            exit 1
        }
    else
        echo -e "${GREEN}[+] $dep is installed.${NC}"
    fi
done

# 4. Determine installation directories
PRIMARY_DIR="/usr/local/bin"
SECONDARY_DIR="/usr/bin"
SCRIPT_NAME="kashif"
SOURCE_FILE="kashif"

# 5. Install to primary location
echo -e "\n${GREEN}Installing KASHIF to $PRIMARY_DIR/$SCRIPT_NAME...${NC}"
sudo cp "$SOURCE_FILE" "$PRIMARY_DIR/$SCRIPT_NAME"
sudo chmod +x "$PRIMARY_DIR/$SCRIPT_NAME"

# 6. Create symlink in /usr/bin so sudo can find it
echo -e "${GREEN}Creating symlink in $SECONDARY_DIR/$SCRIPT_NAME...${NC}"
sudo ln -sf "$PRIMARY_DIR/$SCRIPT_NAME" "$SECONDARY_DIR/$SCRIPT_NAME"

# 7. Create history directory
echo -e "${YELLOW}[*] Creating history directory...${NC}"
mkdir -p ~/.kashif
touch ~/.kashif_cracked.json
echo -e "${GREEN}[+] History: ~/.kashif_cracked.json${NC}"

# 8. Verify installation (normal user)
if command -v kashif &>/dev/null; then
    echo -e "\n${GREEN}✅ KASHIF installed successfully!${NC}"
    echo -e "You can now run it by typing: ${YELLOW}kashif${NC}"
else
    echo -e "\n${YELLOW}Installation completed, but 'kashif' may not be in your PATH.${NC}"
    echo "You can run it with: $PRIMARY_DIR/$SCRIPT_NAME"
fi

# 9. Verify sudo access
if sudo -n true 2>/dev/null; then
    if sudo command -v kashif &>/dev/null; then
        echo -e "${GREEN}✅ 'sudo kashif' will also work.${NC}"
    else
        echo -e "${YELLOW}⚠️  'sudo kashif' might still not work. Try: sudo /usr/bin/kashif${NC}"
    fi
else
    echo -e "${YELLOW}Note: If you need 'sudo kashif', ensure /usr/bin is in sudo's secure_path.${NC}"
fi

echo -e "\n${GREEN}Thank you for installing KASHIF!${NC}"
echo -e "Crack responsibly! 🔓"
