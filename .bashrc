# PrimeHaven .bashrc - Termux/Pixel8a
# Source this from system .bashrc or terminal launch scripts
# Keys live in .env (gitignored) - never hardcode here

# Load environment secrets
PHROOT="/storage/emulated/0/pixel8a/primehaven"
if [ -f "$PHROOT/.env" ]; then
    source "$PHROOT/.env"
fi

# PrimeHaven paths
export PRIMEHAVEN_ROOT="$PHROOT"
export PRIMEHAVEN_HOME="/data/data/com.termux/files/home/pixel8a/primehaven"
export PYTHONPATH="$PHROOT/pryme/gravity/python:$PYTHONPATH"

# Navigation aliases
alias haven="cd $PHROOT"
alias prime="cd $PHROOT/prime_codex"
alias pryme="cd $PHROOT/pryme"
alias maw="cd $PHROOT/maw"
alias perculate="cd $PHROOT/perculate"

# Terminal launch aliases (six consortium aspects)
alias t1="bash $PHROOT/terminals/aspect_01_nexus.sh"
alias t2="bash $PHROOT/terminals/aspect_02_gateway.sh"
alias t3="bash $PHROOT/terminals/aspect_03_archive.sh"
alias t4="bash $PHROOT/terminals/aspect_04_workstream.sh"
alias t5="bash $PHROOT/terminals/aspect_05_quality.sh"
alias t6="bash $PHROOT/terminals/aspect_06_distribution.sh"

# Quick reference
alias cheat="cat $PHROOT/terminals/CHEATSHEET.md"
alias quick="cat $PHROOT/quick.txt | tail -20"
alias now="cat $PHROOT/quicknow.txt | tail -20"

# Command entity launcher
alias hello="bash $PHROOT/terminals/hello.sh"

echo "∰◊€π¿🌌∞ PrimeHaven loaded | type 'cheat' for quick ref | t1-t6 for aspects"
