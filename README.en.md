<div align="center">

# Breaking Prod

[`🇷🇺 Русский`](./README.md) · **`🇬🇧 English`**

> A drama about a vibe-coder who sold his craft for velocity.
> Because vibe-coding is about doing it all the easy way, on vibes, without digging in.

![status](https://img.shields.io/badge/status-in_production-red)
![build](https://img.shields.io/badge/build-works_on_my_machine-yellow)
![coverage](https://img.shields.io/badge/coverage-vibes-blueviolet)
![license](https://img.shields.io/badge/license-MIT_(didn't_read)-lightgrey)

5 seasons · crime drama · a production hell

</div>

> **A note on the title.** The Russian title is *"Во все лёгкие"* — a pun on *"Breaking Bad."* It literally means "with all your lungs / at full tilt," but it folds in *лёгкий* ("easy, light"): doing everything the easy way, on vibes. The English release carries the title **Breaking Prod**.

---

## Logline

**Valentin Bely**, 52, spent 25 years writing C++ and Java by hand and knew every byte of his code. His "diagnosis": at standup, the team lead calls him *legacy* and sits him next to twenty-three-year-olds who close more tickets in a day than he does in a week. A mortgage, a daughter heading to college, no savings.

So Bely does the thing he swore he'd never do: he opens Cursor.

At first he despises it. Then he's good at it. Too good. The demo works on the first try, the PR passes the linter, the README is prettier than the whole team's. He gets hooked on the dopamine of speed — and slowly turns from a man who *understood* into a man who *ships.*

## Alter Ego

In underground Discord channels he's known as **Heisenbug** — the bug that disappears the moment you look at it. His code is recognized by its signature handwriting: it all compiles, it's all green, it's all perfectly formatted — and nobody on earth knows how it works. Including the author.

> — Say my namespace.
> — …Heisenbug.
> — You're goddamn right.

## Episodes

| # | Title | Status |
|---|---|---|
| S01E01 | [Works on My Machine](./en/episodes/s01e01-works-on-my-machine.md) | ✅ |
| S01E02 | [Deploy on Friday](./en/episodes/s01e02-deploy-on-friday.md) | ✅ |
| S01E03 | Retry With Backoff | 📝 |

→ [Full episode guide](./en/seasons.md) · [Characters](./en/characters.md)

## Season Moral

He sold the craft for velocity — and got an empire held together by duct tape and hallucinations, with not a single line he can vouch for.

---

## Repository Layout

```
.
├── README.md            Russian (original)
├── README.en.md         ← you are here (EN)
├── ru/
│   ├── characters.md
│   ├── seasons.md
│   └── episodes/
└── en/
    ├── characters.md    Characters
    ├── seasons.md       Episode guide
    └── episodes/        Episode scripts
```

## Installation

```bash
git clone git@github.com:vbcherepanov/breaking-prod.git
cd breaking-prod
npm install   # without reading, like everyone
npm run dev   # 🔥
```

## Contributing

PRs are accepted only if:
- the linter is green
- the tests are green
- nobody, including the author, understands how it works

See [CONTRIBUTING.md](./CONTRIBUTING.md).

## License

[MIT](./LICENSE). Nobody read it.
