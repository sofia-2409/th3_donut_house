#!/usr/bin/env bash
# Regera cardapio.pdf a partir de cardapio-impressao.html
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HTML="$DIR/cardapio-impressao.html"
PDF="$DIR/cardapio.pdf"

if [[ -x /opt/google/chrome/chrome ]]; then
  CHROME=/opt/google/chrome/chrome
elif command -v google-chrome >/dev/null 2>&1; then
  CHROME="$(command -v google-chrome)"
else
  echo "Chrome não encontrado. Abra cardapio-impressao.html e use Ctrl+P > Salvar como PDF." >&2
  exit 1
fi

"$CHROME" --headless=new --disable-gpu --no-sandbox --disable-dev-shm-usage \
  --user-data-dir="${TMPDIR:-/tmp}/donut-house-chrome" \
  --no-pdf-header-footer --virtual-time-budget=6000 \
  --print-to-pdf="$PDF" "file://$HTML" >/dev/null 2>&1

echo "PDF gerado: $PDF"
if command -v pdfinfo >/dev/null 2>&1; then
  pdfinfo "$PDF" | grep -E 'Pages|Page size' || true
fi
