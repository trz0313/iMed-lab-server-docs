#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

VENV_DIR=".venv"
VENV_PY="${VENV_DIR}/bin/python"

if [ ! -x "${VENV_PY}" ]; then
  echo "[INFO] .venv not found or incomplete. Creating local Python venv..."
  python3 -m venv "${VENV_DIR}"
fi

if ! "${VENV_PY}" -m mkdocs --version >/dev/null 2>&1; then
  echo "[INFO] MkDocs not found in .venv. Installing dependencies..."
  "${VENV_PY}" -m pip install --upgrade pip
  "${VENV_PY}" -m pip install -r requirements.txt
fi

echo "[INFO] Using Python:"
"${VENV_PY}" -c 'import sys; print(sys.executable); print("prefix:", sys.prefix); print("base_prefix:", sys.base_prefix)'

echo "[INFO] MkDocs:"
"${VENV_PY}" -m mkdocs --version
