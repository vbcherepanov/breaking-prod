# BREAKING PROD

### Season 1, Episode 5 — "Standup"

[`🇷🇺 Русский`](../../ru/episodes/s01e05-standap.md) · `🇬🇧 English`
[← Previous episode](./s01e04-code-review.md) · [Next episode →](./s01e06-merge-conflict.md)

---

## COLD OPEN

**INT. FLOW OFFICE, OPEN SPACE — DAY**

A circle of people, all standing. It's the standup. Nobody sits — standing is good for the energy, says the poster. The poster has a typo.

Valentine Bely stands at the edge of the circle, holding a cup of lukewarm water. He holds it with both hands, the way you hold a thing when there's nothing else left to hold.

Artyom — team lead, thirty-two, hoodie with the logo of a conference he did not speak at — snaps his fingers in the air, opening the board.

> **ARTYOM**
> Okay, round the circle. Quick, Flow-style. Yesterday, today, blockers. Emil?

> **EMIL (O.S.)**
> Yesterday I shipped the onboarding flow, today I'm shipping more of it, no blockers.

> **ARTYOM**
> Fire. Craze?

> **CRAZE (O.S.)**
> Same, but in prod.

Artyom nods as if that's good news. He reaches Bely. For a second something like pity crosses his face — then it's gone, replaced by managerial warmth.

> **ARTYOM**
> Valentine. You're in a new role now. Remind the team.

Bely looks at him. He holds the silence exactly one second longer than is comfortable.

> **BELY**
> Reviewer of the model's pull requests.

> **ARTYOM**
> *(to all)* It's an important role. Very. The model generates, Valentine is our human guardrail. Experience, gray hairs, all that. AI-augmentation of the role in action.

*(A few juniors politely study the floor.)*

> **ARTYOM**
> Yesterday?

> **BELY**
> Reviewed the model's pull requests.

> **ARTYOM**
> Today?

> **BELY**
> *(beat)* I will review the model's pull requests.

On the big screen, one of those pull requests is open. Without moving, Bely reads it with his eyes. A date-normalization function. Inside it — a quiet, elegant catastrophe: the timezone offset is added twice. Once a year, on the night the clocks change, it will take down billing.

Nobody in the room sees it. The model stamped "confidence 98%." A junior already clicked "approve" — his own PR, the second approval came from the model.

> **ARTYOM**
> Any blockers?

Bely looks at the function. At the double timezone. At "approve."

> **BELY**
> No. No blockers.

He sips the lukewarm water.

---

**INT. GUS'S WAREHOUSE, SERVER ROOM — NIGHT**

Dark. The racks hum. One monitor. Behind it — Bely, but a different one. Back straight. Hands steady.

On the screen — the same kind of task: time normalization. Only here he writes it himself. Clean. Tests for the day boundary, for the leap second, for the DST switch — all three. The commit is signed.

For a second he pauses on the commit author field. It reads: `heisenbug`.

The cursor blinks. Bely looks at his own flawless code the way he looked at the broken code during the day. No expression.

He hits `git push`. Green pipeline. Everything passes.

**TITLE CARD: BREAKING PROD**

---

**INT. CONTEXT LABS COWORKING (GUS'S FRONT) — DAY**

Glass walls. On them — sticky notes with arrows depicting motion. There is no motion, there are sticky notes.

A big dashboard on the wall. All green. Uptime 99.99%. The graphs climb — revenue, load, "velocity."

Jess, in a new hoodie, stands before three people in identical dark polos. These are the "founders" — Gus's portfolio men. Jess waves a hand at the dashboard as if he drew it himself. In a sense — he did.

> **JESS**
> And this, gentlemen, this is all realtime. Every transaction. We're not just scaling here — we're, like, scaling consciously. This is AI-native infra. Self-healing.

> **FOUNDER 1**
> And who built all this?

Jess opens his mouth. Closes it. Behind the glass, in a far meeting room, Bely is visible. He doesn't turn around. On his screen — a forty-service diagram, and he's nudging one block two pixels to the left, because that's correct.

> **JESS**
> The team. A strong team.

**MONTAGE.**

— The money counter on Sveta's dashboard ticks over a digit. Then another.

— Mike sets an envelope on the table. Bely sets a thicker one on top.

— Jess on a meetup stage: "the vibe doesn't lie." The room claps.

— Bely at night, adding one more service to the architecture. Beside it on the diagram, a tiny red comment only he can see: "this blows up if idempotency isn't shipped before Q3."

— The dashboard. All green.

V.O. — Bely, level:

> **BELY (V.O.)**
> Green doesn't mean "it works." Green means "nobody's asked yet."

---

**INT. BELY HOUSE, KITCHEN — EVENING**

Sveta at her laptop. Not one screen in front of her — three windows. A spreadsheet, an investor deck, a registry of legal entities. She no longer looks like a person who yesterday argued about whether this was legal.

Bely walks in, sets down his bag.

> **BELY**
> Saul sent more papers on—

> **SVETA**
> On LLC-7. Already signed. And I set up the eighth.

He stops.

> **BELY**
> The eighth.

> **SVETA**
> *(not looking up)* Seven is a network. Eight is a pattern. The tax office sees a network. A pattern it explains to itself, because people like it when things add up to a pattern.

She turns the deck toward him. The slide is titled "Architectural Philosophy."

> **SVETA**
> This thing of yours… how did you put it… when everything hangs on one function and if you touch it the whole thing falls apart.

> **BELY**
> Technical debt.

> **SVETA**
> Now it's called "a conscious architectural compromise for time-to-market." I gave it its own slide. Investors love it when a problem has a name and the name sounds like a solution.

Bely looks at the slide. His worst shortcuts, rewritten as valor.

> **SVETA**
> The token spend I buried in "infra R&D." Forty percent of the budget. Nobody will ask, because R&D is the place people look at and nod.

> **BELY**
> Where did you learn this.

> **SVETA**
> *(meets his eyes for the first time)* Fifteen years reading other people's requirements and pretending they made sense. Same job. They're just finally paying for real.

A pause. Something in the room has shifted. Not in her favor or his — between them.

> **SVETA**
> By the way. As of Fridays, we ship nothing. I put it in the policy.

> **BELY**
> *(almost a smile)* I taught you that.

> **SVETA**
> No. I read what time your PagerDuty starts.

---

**EXT. DINER PARKING LOT — DAY**

Mike sits in his car. Bely walks up, gets in the passenger seat. Mike doesn't say hello. He looks straight ahead.

> **MIKE**
> The clock started when you opened the door. Not when you sit down to talk.

> **BELY**
> I'm aware.

> **MIKE**
> Good. Then don't waste it. What did you deploy at midnight yesterday?

> **BELY**
> A queue optimization. Carefully.

> **MIKE**
> Can you roll it back?

> **BELY**
> Why. It works.

Mike finally turns his head. Slowly.

> **MIKE**
> I didn't ask if it works. I asked if you can roll it back. Remember two words. Blast radius. That's how much goes down when yours goes down. You're building a thing whose blast radius is Mr. Fring's entire business, and you don't have an "undo" button.

> **BELY**
> I don't ship things that fall over.

> **MIKE**
> Everybody says that. Everybody falls over anyway. The only difference is who has the rollback ready in advance, and who's explaining to Mr. Fring at three a.m. why "it wasn't supposed to do that."

> **BELY**
> *(annoyed)* Mike. I know my own code.

> **MIKE**
> Sure. And I've known men who knew their own code. I drove them. One of them — one way.

Bely opens the door.

> **MIKE**
> Hour fifteen. Rounded up. And, Valentine — don't deploy what you can't roll back. That's not advice. That's an invoice they hand you one day.

---

**INT. POLICE STATION, HANK'S CORNER — DAY**

Hank has buried his desk in code printouts. On the wall — blown-up diff fragments, circled in marker. Gomey comes over with coffee.

> **GOMEY**
> You circled… the indentation.

> **HANK**
> Indentation is a fingerprint, Gomey. A man lies with his face, his voice, his résumé. A man doesn't lie about how he puts a space before a bracket. It's reflex. It's spinal cord.

He points at the wall. Dozens of fragments, all with the same stylistic signature.

> **HANK**
> I fed everything attributed to Heisenbug into a handwriting classifier. And you know what it spits out? Not some kid. Not a neural net. A human. Old school. Someone who learned to write code before autocomplete existed, used to the fact that nobody cleans up after you.

> **GOMEY**
> Did it narrow it down?

> **HANK**
> "Someone old school. In this city. Over fifty, probably. Wrote in something systems-level before it was cool." I need a second human to finish the profile. Someone who writes like that himself.

He stands, grabs his jacket.

> **HANK**
> I'll go see my brother-in-law. Valentine — he's a dinosaur. He'll tell me more about this Heisenbug's handwriting than the whole lab.

---

**INT. BELY HOUSE, LIVING ROOM — EVENING**

Hank has the laptop spread on the coffee table. On screen — fragments of Heisenbug's code. Bely sits beside him, very calm, with a cup of tea he isn't drinking.

> **HANK**
> You're the old workhorse. Look. What do you see in this guy?

Bely looks at his own code. At his own habits. At the space before the bracket he's been placing since 2003.

> **BELY**
> *(slowly)* Tidy. Disciplined. Tests on the boundaries — means the boundaries burned him badly once.

> **HANK**
> There! See, you already gave me more than the profiler. Age?

> **BELY**
> *(beat)* I'd say — younger than you think. People don't write like this from age. They write like this from fear. A young perfectionist who got dropped in prod once and swore never again.

Hank nods, writes it down. He's led half a step sideways.

> **BELY**
> And he didn't learn here. See how he names things? That's not our tradition. That's… east coast. Or not from here at all.

> **HANK**
> You think not from the city?

> **BELY**
> If I were you I wouldn't narrow it to the city. You'll lose time.

Hank rubs the bridge of his nose, adds "possibly not local." Bely sets down the cup. His hand doesn't shake.

> **HANK**
> You know what kills me? He's good. Genuinely. If he weren't stealing — I'd hire him.

> **BELY**
> *(quietly)* Maybe he doesn't think he's stealing.

> **HANK**
> None of them think so. Tell me your namespace — and I'll tell you who you are.

Bely looks at him.

> **BELY**
> *(level)* ...Heisenbug.

> **HANK**
> *(laughs, claps his shoulder)* That's why I love you. Damn right, if you were him. You'd turn him in first, wouldn't you? You're a man of principle.

---

**INT. POLICE STATION, HANK'S CORNER — NIGHT**

Hank alone. He's fed the classifier the new parameters from Bely. The progress bar crawls. He chews cold pizza.

The bar reaches the end. The screen reads: **TOP STYLE MATCH — 1 RESULT**.

Hank leans in. It's not a developer profile. It's a repository. Open source. Old.

On screen — the project card:

`context-core` · memory kernel · first commit: **2008**.

The same space before the bracket. The same boundary tests. The same hand, only fifteen years younger.

Hank looks at the date. At the style. Slowly lowers the pizza.

> **HANK**
> *(to the empty room)* Whoever this Heisenbug is… he didn't teach himself. He learned from THIS.

He scrolls to the repository's author field. The cursor freezes over a name line that hasn't loaded yet.

> **HANK**
> *(picks up the phone, dials)* Gomey. You up? Find me the author of this repository. The one our genius learned from. I want to shake the hand of the man who, without knowing it, wrote the textbook for our guy.

Outside — night. Somewhere across town, Bely hits `git push`. Green pipeline.

**END OF EPISODE.**

*Next episode:* "Merge Conflict." Out of nowhere, Emil and Craze return — now they have "their own startup" and a suspiciously familiar architecture. Gus settles the competitor question the way he knows how: with a single Slack message he silences their prod ninety seconds before their investor demo. Hank is waiting for the repository author's name. And Mike reminds Bely that everything has a blast radius — even a last name.
