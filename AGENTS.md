# AGENTS.md

This repository is intentionally small: it provides a single POSIX shell file (`xdgvars.sh`) that exports environment variables so programs store config/data in XDG-ish locations.

## Constraints

- **Target shell:** POSIX `sh` (keep the file sourceable from `sh`, `bash`, and `zsh`).
- Keep `# shellcheck shell=sh` at the top of `xdgvars.sh`.
- Avoid bash-isms (arrays, `[[ ... ]]`, process substitution, `source`, etc.).
- **Quote variable expansions** in exports to avoid word-splitting/globbing.
- Preserve existing user env vars: set defaults only when a variable is unset.

## Conventions

- Use these bases:
  - `XDGV_CONFIG=${XDG_CONFIG_HOME:-$HOME/.config}`
  - `XDGV_DATA=${XDG_DATA_HOME:-$HOME/.local/share}`
  - `XDGV_CACHE=${XDG_CACHE_HOME:-$HOME/.cache}`
- Prefer:
  - config → `$XDGV_CONFIG/<app>`
  - data   → `$XDGV_DATA/<app>`
  - cache  → `$XDGV_CACHE/<app>`

## Adding a program

1. Add a commented section in `xdgvars.sh` with the upstream-supported env var(s).
2. Put config/data under the appropriate XDG base dir.
3. Update `README.md` “Supported programs”.

## Checks

Run from repo root:

- `shellcheck -x xdgvars.sh`
- `bash -n xdgvars.sh` (basic syntax sanity check)
