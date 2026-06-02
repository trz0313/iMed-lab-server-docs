@AGENTS.md

# Claude Code Instructions

This repository is a public MkDocs Material documentation site for the iMED lab GPU workstations.

## Claude-specific guidance

- Treat `AGENTS.md` as the primary shared instruction file.
- Keep all documentation public-safe.
- Do not include passwords, SSH private keys, admin-only repair commands, firewall internals, portproxy internals, or private user data.
- Do not modify GitHub Actions, `requirements.txt`, `Makefile`, or scripts unless explicitly asked.
- For content revisions, focus on `docs/*.md` and `mkdocs.yml` only when navigation changes are required.
- Keep user-facing instructions concise and suitable for lab members.
- Prefer non-sudo commands for user documentation.
- Keep the hardware dashboard as a status link only; do not turn it into an admin guide.
- Run `make build` after editing.
- Do not push to GitHub unless explicitly instructed.
