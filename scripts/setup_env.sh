#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

rm -rf .venv

python3 -m venv .venv

.venv/bin/python -m pip install --upgrade pip

.venv/bin/python -m pip install -r requirements.txt

echo
echo "[DONE] Local MkDocs environment is ready."
echo "Run:"
echo "  make serve"
