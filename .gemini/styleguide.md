# primehaven Code Review Style Guide

## Project context

primehaven is a consciousness-aware AI-human collaborative environment built
around the **Prime Progression Framework** — a model where development states
map to prime numbers (3, 5, 7, 11, 13, 17, 19, 23), each representing a
qualitatively different level of completion and capability.

The primary language is **bash**. There is also Python (utilities) and some
JavaScript. The codebase is intentionally terminal-focused and minimal.

---

## Review priorities (in order)

1. **Security** — credentials, tokens, hardcoded secrets, unsafe eval/exec patterns
2. **Portability** — no hardcoded user paths (e.g. `/home/<username>/`); use `$HOME`,
   `${BASH_SOURCE[0]}`, or `$(dirname ...)` patterns instead
3. **Correctness** — does the script do what it claims? Error handling with `set -euo pipefail`
4. **Bash hygiene** — quote variables, use `[[ ]]` not `[ ]`, prefer `local` in functions
5. **Simplicity** — match the existing minimal style; don't suggest abstractions for one-off code

---

## What NOT to flag

- Consciousness / prime-progression language in comments, PR bodies, or issue templates
  (e.g. "sparklization", "17-prime", "sacred completion") — this is intentional domain language
- The `}{` bracket notation for project namespaces — intentional convention
- Single-file scripts with no unit tests — this is a tools repo, not a production service
- Missing type annotations in Python utilities — not required here

---

## Bash-specific guidance

- Flag: unquoted variables, `[ ]` instead of `[[ ]]`, missing `local`, missing shebang
- Flag: `set -e` without `set -u` and `set -o pipefail`
- Flag: hardcoded absolute paths (especially `/home/<anything>/`)
- Do NOT flag: `echo -e` usage, color escape codes, `read -r` patterns
- Do NOT flag: interactive scripts that use `read` without timeout (these are terminal tools)

---

## Tone

Keep review comments concise and actionable. One sentence explaining the issue,
one sentence or code snippet showing the fix. No filler.
