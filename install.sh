#!/bin/bash

# Backant Agents Installer
# This script installs all agent configuration files to ~/.claude/agents

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Target directory
AGENTS_DIR="$HOME/.claude/agents"

# Get the script's directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo -e "${GREEN}Backant Agents Installer${NC}"
echo "=============================="
echo ""

# Create agents directory if it doesn't exist
if [ ! -d "$AGENTS_DIR" ]; then
    echo -e "${YELLOW}Creating directory: $AGENTS_DIR${NC}"
    mkdir -p "$AGENTS_DIR"
else
    echo -e "${GREEN}Directory exists: $AGENTS_DIR${NC}"
fi

# List of agent files to install
AGENT_FILES=(
    "code-review-expert.md"
    "flask-api-developer.md"
    "qa-engineer.md"
    "task-dispatch-director.md"
    "technical-researcher.md"
    "technical-solution-architect.md"
)

# Counter for installed files
INSTALLED=0
SKIPPED=0
UPDATED=0

echo ""
echo "Installing agent files..."
echo "--------------------------"

for file in "${AGENT_FILES[@]}"; do
    SOURCE_FILE="$SCRIPT_DIR/$file"
    TARGET_FILE="$AGENTS_DIR/$file"
    
    if [ ! -f "$SOURCE_FILE" ]; then
        echo -e "${RED}✗ Source file not found: $file${NC}"
        continue
    fi
    
    if [ -f "$TARGET_FILE" ]; then
        # Check if files are different
        if ! cmp -s "$SOURCE_FILE" "$TARGET_FILE"; then
            echo -e "${YELLOW}↻ Updating: $file${NC}"
            cp "$SOURCE_FILE" "$TARGET_FILE"
            ((UPDATED++))
        else
            echo -e "${GREEN}✓ Already up-to-date: $file${NC}"
            ((SKIPPED++))
        fi
    else
        echo -e "${GREEN}+ Installing: $file${NC}"
        cp "$SOURCE_FILE" "$TARGET_FILE"
        ((INSTALLED++))
    fi
done

echo ""
echo "=============================="
echo -e "${GREEN}Installation Complete!${NC}"
echo ""
echo "Summary:"
echo "  • New installations: $INSTALLED"
echo "  • Updated: $UPDATED"
echo "  • Already up-to-date: $SKIPPED"
echo ""
echo "Agent files location: $AGENTS_DIR"
echo ""
echo "You can now use these agents with Claude Code!"