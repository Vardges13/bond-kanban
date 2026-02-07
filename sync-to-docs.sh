#!/bin/bash
# Автосинхронизация корневых файлов в docs/ для GitHub Pages

echo "🔄 Синхронизирую файлы в docs/ для GitHub Pages..."

cp index.html docs/
cp tasks.json docs/
cp tasks-vardges.json docs/

echo "✅ Файлы обновлены в docs/"
echo "📋 Можно коммитить: git add docs/ && git commit -m 'sync: обновлены файлы в docs/'"