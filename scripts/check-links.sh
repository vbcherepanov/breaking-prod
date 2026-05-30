#!/usr/bin/env bash
# Проверка перекрёстных ссылок и картинок в markdown.
# В этом репозитории никто не читает диффы — поэтому за них читает CI.
set -euo pipefail

cd "$(dirname "$0")/.."

broken=0
checked=0

# process substitution (а не пайп) — чтобы счётчики жили в текущем шелле
while IFS= read -r -d '' file; do
  dir=$(dirname "$file")
  while IFS= read -r link; do
    case "$link" in
      http://*|https://*|mailto:*|"#"*|"") continue ;;
    esac
    target="${link%%#*}"          # отбрасываем якорь #...
    [ -z "$target" ] && continue
    checked=$((checked + 1))
    if [ ! -e "$dir/$target" ]; then
      echo "BROKEN: $file -> $link"
      broken=$((broken + 1))
    fi
  done < <(grep -oE '\]\([^)]+\)' "$file" 2>/dev/null | sed -E 's/^\]\(([^)]+)\)$/\1/')
done < <(find . -name '*.md' -not -path './.git/*' -print0)

echo ""
echo "Проверено локальных ссылок: $checked"

if [ "$broken" -ne 0 ]; then
  echo "❌ Битых ссылок: $broken. Прод покраснел."
  exit 1
fi

echo "✅ Все ссылки зелёные. Никто их не читал, но они работают."
