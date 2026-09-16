# Portable Codex skills

This bundle contains the core skills `teach`, `grilling`, and `grill-me`, plus Proto-specific skills for production reliability and wholesale commerce.

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

The Proto-specific skills are deliberately curated instead of installing a full agent framework. They encode the current needs of `protoportal-main` and `protoportal-admin` without changing the agent's entire operating method.

Keep credentials, API keys, `auth.json`, and machine-specific configuration out of this repository.
