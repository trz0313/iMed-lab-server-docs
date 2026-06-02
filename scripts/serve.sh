#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

bash scripts/ensure_env.sh

source .venv/bin/activate

python -m mkdocs serve
