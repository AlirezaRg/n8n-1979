#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"

echo "============================================"
echo "  n8n Starter Kit"
echo "============================================"

if ! command -v node >/dev/null 2>&1; then
  echo "[ERROR] Node.js not found. Install it first: https://nodejs.org"
  exit 1
fi

if ! command -v n8n >/dev/null 2>&1; then
  echo "n8n not found. Installing now, this may take a few minutes..."
  npm install -g n8n
fi

if [ ! -f ".imported" ]; then
  echo "Importing bundled workflows (first run only)..."
  n8n import:workflow --separate --input=./workflows
  echo "done" > .imported
  echo "Import finished."
fi

echo
echo "Starting n8n..."
echo "n8n will be available at http://localhost:5678"
echo "Press Ctrl+C to stop."
echo
n8n start
