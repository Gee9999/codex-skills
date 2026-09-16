# Portable Codex skills

This bundle contains `teach`, `grilling`, and `grill-me`.

## Install

```bash
bash install.sh
```

The installer copies the skills into `${CODEX_HOME:-$HOME/.codex}/skills` and will not overwrite existing skills unless `--force` is supplied.

## Sync between computers

Put this directory in a private GitHub repository. On the other computer:

```bash
git clone <private-repository-url> codex-skills
cd codex-skills
bash install.sh
```

After updates, run `git pull` and then `bash install.sh --force`.

Keep credentials, API keys, `auth.json`, and machine-specific configuration out of this repository.
