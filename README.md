# 📋 Канбан-доска — Telegram Mini App

Мобильная канбан-доска для управления задачами, работающая как Telegram Mini App.

## Возможности

- 📥 **3 колонки**: Бэклог → В работе → Готово
- ✋ **Drag & drop** — перетаскивание задач между колонками (и на мобильном)
- ⚡ **Быстрые кнопки** — перемещение задач вперёд/назад одним нажатием
- 🔍 **Поиск** — мгновенная фильтрация задач
- 🎨 **Приоритеты** — 🔴 высокий, 🟡 средний, 🟢 низкий
- 💾 **Telegram CloudStorage** — данные сохраняются в облаке Telegram
- 🌗 **Адаптивная тема** — подстраивается под светлую/тёмную тему Telegram
- 📱 **Mobile-first** — оптимизировано для мобильных устройств
- 🔔 **Haptic feedback** — вибрация при действиях (на телефоне)

## Деплой

### Вариант 1: GitHub Pages (рекомендуется)

1. Создайте репозиторий на GitHub
2. Загрузите `index.html` в корень
3. Settings → Pages → Source: Deploy from branch → `main` / `root`
4. Ваш URL: `https://<username>.github.io/<repo>/`

```bash
# Быстрый деплой
cd kanban-app
git init
git add .
git commit -m "Kanban Mini App"
git branch -M main
git remote add origin https://github.com/<username>/<repo>.git
git push -u origin main
```

### Вариант 2: Netlify

1. Перетащите папку `kanban-app` в [app.netlify.com/drop](https://app.netlify.com/drop)
2. Получите URL вида `https://xxx.netlify.app`

### Вариант 3: Локально через ngrok (для тестирования)

```bash
# Запустить локальный сервер
cd kanban-app
python3 -m http.server 8080

# В другом терминале — проксировать через ngrok
ngrok http 8080
```

Получите HTTPS URL от ngrok и используйте его для настройки бота.

## Настройка бота

После получения HTTPS URL приложения, настройте Telegram бота:

```bash
# Установить кнопку меню (Web App)
curl -X POST "https://api.telegram.org/bot<TOKEN>/setChatMenuButton" \
  -H "Content-Type: application/json" \
  -d '{
    "menu_button": {
      "type": "web_app",
      "text": "📋 Канбан",
      "web_app": {"url": "https://<YOUR_URL>/index.html"}
    }
  }'
```

Замените `<TOKEN>` на токен бота и `<YOUR_URL>` на URL хостинга.

## Управление

| Действие | Как |
|----------|-----|
| Добавить задачу | Кнопка **+** (внизу справа) |
| Редактировать | Нажать на карточку |
| Переместить вперёд | Кнопка **▶** на карточке |
| Переместить назад | Кнопка **◀** на карточке |
| Перетащить (мобильный) | Зажать карточку ~0.5 сек и перетащить |
| Перетащить (десктоп) | Обычный drag & drop |
| Удалить | Кнопка **✕** на карточке |
| Поиск | Кнопка 🔍 в заголовке |
| Быстрое добавление | `Ctrl/Cmd + N` |

## Структура задачи

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

## Технологии

- Vanilla HTML/CSS/JS — без зависимостей
- Telegram Web App JS SDK
- Telegram CloudStorage API
- CSS переменные Telegram для адаптивной темы
- Touch events для мобильного drag & drop
