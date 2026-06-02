#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

bash scripts/ensure_env.sh

.venv/bin/python -m mkdocs serve
