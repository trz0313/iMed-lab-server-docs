# iMED Lab Server Docs Editing Rules

This repository contains the public documentation site for the iMED lab GPU workstations.

## Audience

The target audience is lab members who need to:
- connect to ECE VPN,
- SSH into WS1 / WS2,
- use VS Code Remote SSH,
- manage Conda environments,
- understand `/home`, `/data`, and `/scratch`,
- check the live GPU dashboard,
- fill in the long-use tracker.

## Public-safety rules

Do not include:
- passwords,
- SSH private keys,
- admin-only reset procedures,
- private user data,
- sensitive firewall rules,
- sensitive Windows portproxy internals,
- internal admin account recovery steps.

It is acceptable to include:
- public dashboard URL,
- public GitHub Pages URL,
- general VPN requirement,
- general SSH commands,
- user-level Conda instructions,
- GPU usage etiquette,
- troubleshooting checklists.

## Editing rules

- Keep pages concise.
- Use Markdown.
- Prefer commands that normal lab members can run without sudo.
- Use clear section headings.
- After editing, run `make build`.
- Do not push to GitHub unless explicitly instructed.
