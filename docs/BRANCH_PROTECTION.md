# Branch Protection — `main`

Apply these settings at:
**GitHub → Settings → Branches → Add rule → Branch name pattern: `main`**

---

## Recommended settings

| Setting | Value | Why |
|---------|-------|-----|
| Require a pull request before merging | ✅ on | No direct pushes to main |
| Require approvals | 0 (solo project) | Can raise to 1 when collaborating |
| Require status checks to pass before merging | ✅ on | |
| → Required checks | `ShellCheck`, `CodeQL` | CI must be green |
| Require branches to be up to date | ✅ on | No stale merges |
| Require conversation resolution | ✅ on | Review threads must be resolved |
| Do not allow bypassing the above | ✅ on | Applies to admins too |
| Allow force pushes | ❌ off | Protects history |
| Allow deletions | ❌ off | Protects main |

---

## Notes

- Terraform check is **not** a required check — it only runs on `.tf` file changes.
- When adding a new CI workflow, add it to the required checks list here.
- The `ppr` workflow (`tools/prime_progression_pr.sh`) enforces prime state
  assessment before a PR is created — this is the human-layer complement to
  the automated checks above.
