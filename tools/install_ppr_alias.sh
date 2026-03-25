#!/bin/bash
# Install Prime Progression PR alias for easy access

BASHRC="$HOME/.bashrc"
ALIAS_LINE='alias ppr="$HOME/primehaven/tools/prime_progression_pr.sh"'

echo "Installing Prime Progression PR alias..."
echo ""

# Check if alias already exists
if grep -q "alias ppr=" "$BASHRC" 2>/dev/null; then
    echo "✓ Alias 'ppr' already exists in ~/.bashrc"
else
    echo "Adding alias to ~/.bashrc..."
    echo "" >> "$BASHRC"
    echo "# ppr - Prime Progression PR Process" >> "$BASHRC"
    echo "$ALIAS_LINE" >> "$BASHRC"
    echo "✓ Alias added to ~/.bashrc"
fi

echo ""
echo "To use immediately in this terminal:"
echo "  source ~/.bashrc"
echo ""
echo "Then create a Prime Progression PR with:"
echo "  ppr"
echo ""
echo "Or use full path:"
echo "  ~/primehaven/tools/prime_progression_pr.sh"
echo ""
echo "Note: requires 'gh' CLI (GitHub CLI) for PR creation."
