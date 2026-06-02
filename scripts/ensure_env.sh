#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

if [ ! -d ".venv" ]; then
  echo "[INFO] .venv not found. Creating local environment..."
  python3 -m venv .venv
fi

source .venv/bin/activate

if ! python -m mkdocs --version >/dev/null 2>&1; then
  echo "[INFO] MkDocs not found in .venv. Installing dependencies..."
  python -m pip install --upgrade pip
  python -m pip install -r requirements.txt
fi

python -m mkdocs --version
