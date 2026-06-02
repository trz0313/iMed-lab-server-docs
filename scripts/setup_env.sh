#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

rm -rf .venv

python3 -m venv .venv

source .venv/bin/activate

python -m pip install --upgrade pip

python -m pip install -r requirements.txt

echo
echo "[DONE] Local MkDocs environment is ready."
echo "Activate with:"
echo "  source .venv/bin/activate"
