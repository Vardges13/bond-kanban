<div align="center">

# 📋 Bond Kanban

**Канбан-доска — Telegram Mini App в стиле Trello**

[![GitHub Pages](https://img.shields.io/badge/demo-live-brightgreen?style=for-the-badge&logo=github)](https://vardges13.github.io/bond-kanban/)
[![Telegram](https://img.shields.io/badge/Telegram-Mini%20App-blue?style=for-the-badge&logo=telegram)](https://t.me/Bond007_007_bot)
[![License: MIT](https://img.shields.io/badge/license-MIT-yellow?style=for-the-badge)](LICENSE)

Минималистичная и быстрая канбан-доска для управления задачами,  
работающая как **Telegram Mini App** — без бэкенда, без зависимостей, один файл.

[**🚀 Live Demo**](https://vardges13.github.io/bond-kanban/) · [**🤖 Telegram Bot**](https://t.me/Bond007_007_bot)

---

<!-- Замените на реальный скриншот -->
<img src="https://via.placeholder.com/800x500/1a1a2e/ffffff?text=📋+Bond+Kanban+—+Screenshot" alt="Bond Kanban Screenshot" width="700">

</div>

---

## ✨ Возможности

| | Фича | Описание |
|---|---|---|
| 📥 | **3 колонки** | Бэклог → В работе → Готово |
| ✋ | **Drag & Drop** | Перетаскивание задач — работает и на мобильном |
| ⚡ | **Быстрые кнопки** | Переместить задачу вперёд/назад одним нажатием |
| 🔍 | **Поиск** | Мгновенная фильтрация по названию |
| 🎨 | **Приоритеты** | 🔴 высокий · 🟡 средний · 🟢 низкий |
| 💾 | **Cloud Storage** | Данные хранятся в облаке Telegram |
| 🌗 | **Адаптивная тема** | Подстраивается под тему Telegram (светлая/тёмная) |
| 📱 | **Mobile-first** | Оптимизировано для мобильных устройств |
| 🔔 | **Haptic Feedback** | Вибрация при действиях (на телефоне) |

## 🛠 Технологии

- **Vanilla HTML/CSS/JS** — ноль зависимостей, один файл
- **Telegram Web App JS SDK** — интеграция с Telegram
- **Telegram CloudStorage API** — хранение данных
- **CSS-переменные Telegram** — нативная адаптивная тема
- **Touch Events** — drag & drop на мобильных

## 🚀 Быстрый старт

### GitHub Pages (рекомендуется)

```bash
git clone https://github.com/Vardges13/bond-kanban.git
cd bond-kanban
# Уже настроен GitHub Actions → автоматический деплой на push
```

Перейдите в **Settings → Pages → Source: GitHub Actions** — и готово.

### Локально (для разработки)

```bash
python3 -m http.server 8080
# Откройте http://localhost:8080
```

## 🤖 Настройка Telegram бота

После получения HTTPS URL, подключите Mini App к боту:

```bash
curl -X POST "https://api.telegram.org/bot<TOKEN>/setChatMenuButton" \
  -H "Content-Type: application/json" \
  -d '{
    "menu_button": {
      "type": "web_app",
      "text": "📋 Канбан",
      "web_app": {"url": "https://vardges13.github.io/bond-kanban/"}
    }
  }'
```

## ⌨️ Управление

| Действие | Как |
|----------|-----|
| ➕ Добавить задачу | Кнопка **+** (внизу справа) или `Ctrl/Cmd + N` |
| ✏️ Редактировать | Нажать на карточку |
| ▶ Переместить вперёд | Кнопка **▶** на карточке |
| ◀ Переместить назад | Кнопка **◀** на карточке |
| 📱 Перетащить (мобильный) | Зажать ~0.5 сек → перетащить |
| 🖱 Перетащить (десктоп) | Обычный drag & drop |
| ✕ Удалить | Кнопка **✕** на карточке |
| 🔍 Поиск | Кнопка в заголовке |

## 📁 Структура проекта

```
bond-kanban/
├── index.html          # Всё приложение — один файл
├── tasks.json          # Пример задач
├── docs/               # GitHub Pages assets
├── .github/workflows/  # CI/CD — автодеплой
└── .nojekyll           # Отключение Jekyll
```

## 📄 Структура задачи

```json
{
  "id": "unique_id",
  "title": "Название задачи",
  "desc": "Описание (опционально)",
  "priority": "high | medium | low",
  "column": "backlog | inprogress | done",
  "created": 1706745600000
}
```

## 📝 Лицензия

[MIT](LICENSE) — используйте свободно.

---

<div align="center">

Сделано с ❤️ для продуктивности

</div>
