# Changelog

Все заметные изменения сценария. Формат — [Keep a Changelog](https://keepachangelog.com/ru/1.1.0/),
версионирование — по [SemVer](https://semver.org/lang/ru/) (в духе сериала: ломаем прод — мажорим).

## [1.0.0] — 2026-05-30

### Сезон 1 «Move fast» — полностью

- Добавлены 10 серий первого сезона на двух языках (RU + EN).
- Сквозная арка: флешфорвард с крыши из пилота окупается в финале (S01E10).
- Заряжено и использовано «ружьё Чехова» — `console.log` (S01E06 → S01E07 → S01E08).

### Added
- `README.md` / `README.en.md` — двуязычные лендинги с логотипом и переключателем языка.
- `ru/` и `en/` — зеркальная структура: `characters.md`, `seasons.md`, `episodes/`.
- `CONTRIBUTING.md` — правило паритета языков.
- `SECURITY.md`, `CHANGELOG.md`, `LICENSE` (MIT).
- CI (`.github/workflows/ci.yml`) — проверка перекрёстных ссылок и паритета языков.
- Шаблоны issue (постмортем / питч серии) и pull request.

[1.0.0]: https://github.com/vbcherepanov/breaking-prod/releases/tag/v1.0.0
