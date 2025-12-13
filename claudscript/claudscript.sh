#!/bin/bash

# Wazuh Manager Installation Script
# This script automates the installation and setup of Wazuh Manager on Ubuntu/Debian systems

set -e  # Exit on error

# Color codes for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}========================================${NC}"
echo "Wazuh Manager Installation Script"
echo -e "${YELLOW}========================================${NC}"
echo ""

# Make script executable
chmod +x "$0"

# Update and upgrade the system
echo -e "${YELLOW}[Step 1/5] Updating and upgrading system packages...${NC}"
sudo apt update && sudo apt upgrade -y
echo -e "${GREEN}✓ System update and upgrade completed successfully${NC}"
echo ""

# Display welcome message
sleep 1
echo -e "${YELLOW}[Step 2/5] Preparing installation...${NC}"
echo "Now starting the Wazuh Manager download and installation process"
sleep 2

# Display ASCII art
echo ""
cat << "EOF"
    ______  ________         ____  __
    ____/ / ____/ /__ __    / __ \/ /___ _______  ____
  / /     / __/ / / _ `/ / / / /_/ / / __ `/ ___/ / __ \
 / /___  / /___/ /  __/ /_/ / _, _/ / /_/ / /  / /_/ /
 \____/ /_____/_/\___/\__, / /_/ \_/_/\__,_/_/   \____/
                     /____/
EOF
echo ""
sleep 2

# Download Wazuh installation script
echo -e "${YELLOW}[Step 3/5] Downloading Wazuh installation script...${NC}"
curl -sO https://packages.wazuh.com/4.7/wazuh-install.sh

if [ -f wazuh-install.sh ]; then
    echo -e "${GREEN}✓ Download completed${NC}"
else
    echo -e "${YELLOW}Error: Failed to download installation script${NC}"
    exit 1
fi

sleep 2
echo ""#!/bin/bash
echo " Hello World"


# Run Wazuh installation
echo -e "${YELLOW}[Step 4/5] Installing Wazuh Manager...${NC}"
echo -e "${YELLOW}⚠ WARNING: DO NOT TURN OFF YOUR MACHINE DURING INSTALLATION${NC}"
sleep 3

sudo bash wazuh-install.sh -a

echo ""
echo -e "${GREEN}✓ Wazuh Manager installation completed successfully${NC}"
sleep 2

# Start Wazuh Manager service
echo -e "${YELLOW}[Step 5/5] Starting Wazuh Manager service...${NC}"
sudo systemctl start wazuh-manager
sleep 2

# Display service status
echo ""
echo -e "${YELLOW}Checking Wazuh Manager status...${NC}"
sudo systemctl status wazuh-manager

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}✓ Installation Complete!${NC}"
echo -e "${GREEN}Wazuh Manager is now running on your system${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo "Network configuration:"
ip a

echo ""
echo -e "${YELLOW}Next steps:${NC}"
echo "1. Access Wazuh Web UI at: https://your-server-ip:443"
echo "2. Check Wazuh Manager logs: sudo tail -f /var/log/wazuh/wazuh.log"
echo "3. For more information: https://documentation.wazuh.com"