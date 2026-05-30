# Как контрибьютить · Contributing

[🇷🇺 Русский](#-русский) · [🇬🇧 English](#-english)

---

## 🇷🇺 Русский

Это сценарный репозиторий, а не прод. Поэтому единственное правило прода тут соблюдается свято: **никто не читает скрипты.**

### Правила PR

- **Линтер зелёный.** Орфография, markdown, ссылки между файлами не битые.
- **Тесты зелёные.** Если добавляешь серию — добавь её в `seasons.md` и в оба README.
- **Никто не понимает, как оно работает.** Включая автора. Это фича.

### Парность языков

Каждая правка сюжета должна жить в двух экземплярах:

| Меняешь | Не забудь |
|---|---|
| `ru/episodes/sXXeYY-*.md` | `en/episodes/sXXeYY-*.md` |
| `ru/characters.md` | `en/characters.md` |
| `ru/seasons.md` | `en/seasons.md` |
| `README.md` | `README.en.md` |

Англоверсия — это перевод, а не пересказ. Имена и шутки адаптируем под язык, смысл сцены сохраняем.

### Именование файлов серий

```
sXXeYY-transliteraciya-nazvaniya.md   (ru)
sXXeYY-english-title.md               (en)
```

Пример: `s01e02-deploy-v-pyatnitsu.md` ↔ `s01e02-deploy-on-friday.md`.

### Деплой в пятницу

Запрещён. Это сюжет всей второй серии.

---

## 🇬🇧 English

This is a screenplay repo, not prod. So the one prod rule we hold sacred is upheld: **nobody reads the scripts.**

### PR rules

- **Linter green.** Spelling, markdown, no broken cross-links.
- **Tests green.** If you add an episode, add it to `seasons.md` and both READMEs.
- **Nobody understands how it works.** Including the author. That's a feature.

### Language parity

Every story change must exist in two copies:

| You edit | Don't forget |
|---|---|
| `en/episodes/sXXeYY-*.md` | `ru/episodes/sXXeYY-*.md` |
| `en/characters.md` | `ru/characters.md` |
| `en/seasons.md` | `ru/seasons.md` |
| `README.en.md` | `README.md` |

The other-language version is a translation, not a retelling. Adapt names and jokes to the language; keep the meaning of the scene.

### Episode file naming

```
sXXeYY-translit-title.md     (ru)
sXXeYY-english-title.md      (en)
```

### Deploy on Friday

Forbidden. It's the plot of the entire second episode.
