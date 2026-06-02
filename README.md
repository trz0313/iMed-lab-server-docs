# iMED Lab Server Guide

MkDocs Material site for lab server documentation.

## Local preview

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
mkdocs serve
```

Open:

```text
http://127.0.0.1:8000
```

## Deploy

Push to `main`. GitHub Actions will build and deploy to GitHub Pages.
