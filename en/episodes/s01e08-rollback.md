# BREAKING PROD

### Season 1, Episode 8 — "Rollback"

[`🇷🇺 Русский`](../../ru/episodes/s01e08-otkat.md) · `🇬🇧 English`
[← Previous episode](./s01e07-chekhovs-console-log.md) · [Next episode →](./s01e09-force-push.md)

---

## COLD OPEN

**INT. "EMIL & CRAZE" BASEMENT COWORKING — NIGHT**

Two cheap laptops hum on beer crates. On the big monitor — the service tree of Gus Fring's entire empire. Green dots. Hundreds of green dots.

EMIL gnaws an energy bar. CRAZE holds a finger over the Enter key like over a trigger.

> **CRAZE**
> These keys open everything. Every deploy. Every prod. Everything Heisenbug ever shipped.

> **EMIL**
> Out of one single `console.log`. The guy left the door wide open — and hung the keys on a nail right next to it.

Craze types a command. On screen — a list of one hundred forty production clusters. He selects ALL of them.

> **CRAZE**
> One script. One keypress, and Fring's whole network bricks. A hundred forty prods in `read-only`. Dead.

> **EMIL**
> *(chewing)*
> This isn't vandalism, Craze. This is a negotiating position.

He holds a sheet of paper up to the phone camera: **"RANSOM. OR WE HIT ENTER."**

The cursor blinks over `terraform destroy --auto-approve --target=*`.

> **CRAZE**
> Now we're the kings.

Emil smiles. Crumbs on the bar. On the screen — a hundred forty green dots that could turn red at any second.

FADE OUT.

**TITLE CARD: BREAKING PROD**

---

**INT. GUS'S GLASS OFFICE — "FLOW" HQ — MORNING**

Gus Fring waters a single ficus. Calmly. Precisely. On the desk — his phone, open to the Slack channel `#prod-incidents`, and it's silent. The silence in that channel is scarier than any PagerDuty.

Valentin Bely enters. A whole sleepless night under his eyes. A cup of cold coffee in his hand.

> **GUS**
> *(without turning)*
> The leak was in your domain, Valentin. Through a product Jess was running. Through your guy.

> **BELY**
> It was a mistake. One log. I'll close it.

> **GUS**
> *(sets down the watering can, turns)*
> A hundred forty clusters held by the throat because someone on your team didn't read their own diffs. That's not a mistake. That's a smell. A ricin sort of smell.

Gus steps right up to him. Voice flat as asphalt.

> **GUS**
> I have a second engineer, Valentin. Young. Hungry. He made the hole — let him learn to close it. I'm wondering if it isn't time he led on his own.

Bely freezes. He understands: he's being replaced. By the student he grew himself.

> **BELY**
> Give me twenty-four hours. I'll roll this back. I'll clean up my own mess myself.

> **GUS**
> *(sits, opens his laptop)*
> Twenty-four hours. One Slack message and I kill prod myself. All of it. And then it won't matter whose log it was.

He types something into the empty channel. Doesn't send. Just holds a finger over Enter. Like Craze. Exactly like Craze.

---

**INT. MIKE'S GARAGE — DAY**

Mike Ehrmantraut sits behind three monitors among shelves of labeled hard drives. A terminal in front of him. An envelope beside him. Bely sets a stack of cash on the envelope.

> **MIKE**
> *(pockets it without counting)*
> Hourly. Up front. You know the rules.

> **BELY**
> Emil and Craze. I want to know what they're holding us with.

Mike swivels a monitor. On it — the git history of someone else's repo. Slapdash. Chaos.

> **MIKE**
> I already looked. You know what these geniuses have in common with your boy? They don't read scripts either. They don't even read their own `Makefile`.

Bely leans in. His eyes light up — that Heisenbug glint.

> **BELY**
> Show me their pipeline.

> **MIKE**
> They pull a dependency off a public mirror. No lockfile. No hash check. `latest`, like savages.

> **BELY**
> *(slowly smiles)*
> So they'll ship whatever I put in there. And run it themselves. With their own hands. On their own machine.

Mike looks at him a long moment. No admiration. Just wariness.

> **MIKE**
> You're going to poison their dependency and wait for them to run `install` themselves.

> **BELY**
> I'm going to **roll back** the problem, Mike. With the same tool they used to create it. Nobody reads scripts.

Mike shakes his head and reaches for the keyboard.

> **MIKE**
> Fork bomb in `postinstall`. Old trick.
> *(beat)*
> It'll work. That's what scares me.

---

**INT. "CONTEXT" — MEETING ROOM — DAY**

Jess sits alone, rolling a stylus in his hands. Gus enters — no knock, two cups of coffee. Sets one in front of Jess. A father's gesture. A recruiter's gesture.

> **GUS**
> You do understand it was your log.

> **JESS**
> *(quietly)*
> I understand. I understand it every single night, man.

> **GUS**
> Valentin will pin it on you. He already is. To him you're disposable. I see an engineer who made a mistake and is angry enough never to make it again.

Jess says nothing. Gus leans in.

> **GUS**
> I'm giving you a product. Yours. Without him over your shoulder. Just say the word.

The door opens. Bely walks in. Sees two coffees. Sees Jess's face. Reads it all in an instant.

Gus stands, straightens a cuff.

> **GUS**
> *(evenly, on his way out)*
> Both of you think it over. You have twenty-four hours.

The door closes. Silence.

> **JESS**
> You told him it was my screwup? That all of it was me?

> **BELY**
> And wasn't it?

> **JESS**
> You were running that product! You're the architect, Mr. Bely! I just—

> **BELY**
> *(cold, clipped)*
> You generated the hole. I just read it.

Jess recoils as if struck. The stylus drops to the table.

> **JESS**
> ...Read it. And saved yourself a copy. I know you. You never throw anything away.

Bely doesn't answer. That is the answer.

> **JESS**
> *(stands, voice shaking)*
> He's offering me a way out from under you. And you know what? For the first time in six months, that sounds like rescue.

He heads for the door. At the threshold he turns.

> **JESS**
> Say your namespace, Mr. Bely. Go on. You love to.

Bely says nothing. Jess walks out. The crack has started.

---

**INT. "CONTEXT" — OPEN OFFICE — DAY (CONCURRENT)**

Sveta sits wedged between two auditors in matching blazers. The buyer is running due diligence on a single product — the very one rotting under three years of tech debt.

> **AUDITOR**
> Test coverage on this module — ninety-four percent. Impressive for a startup.

> **SVETA**
> *(smiles, not a blink)*
> We take quality seriously.

The camera drops below the table: her leg is trembling. On a second monitor, angled away from the auditors — a script generating empty tests with `assert(true)`, and a separate job rewriting git-blame so the entire spaghetti codebase is "authored" by a junior who quit six months ago.

> **AUDITOR**
> And this legacy module... who wrote it?

Sveta hangs for a fraction of a second. Then her mouse opens the history — the departed junior's name everywhere.

> **SVETA**
> A former employee. We refactored after he left.

The auditor nods, makes a note. Stands. They leave.

Sveta is alone. Slowly she closes the laptop. Her hands won't obey. She stares out the window for a long second.

> **SVETA**
> *(whispering, to herself)*
> It was a conscious architectural compromise.

She says it again, quieter. Like a prayer. Like she wants to believe it. There's no road back now — she's in up to her elbows.

---

**INT. HANK'S HOUSE — GARAGE — EVENING**

Hank digs through boxes marked "ARCHIVE — DO NOT TRASH." Gomey stands beside him, arms crossed.

> **GOMEY**
> Hank, we're chasing a ghost. "Heisenbug" is a legend. Half the dumps on the dark web are signed with that handle just for cred.

> **HANK**
> *(not looking up from the boxes)*
> Indentation is a fingerprint, Gomey. Handwriting. Nobody formats code the same way twice. And this guy aligns his wrapped arguments into a single column. Everywhere. Eight years straight.

He pulls out a yellowed **NAPKIN**. Faded pen on it, a diagram: memory cells, arrows, variable names. At the bottom — a date: 2008. A family dinner. Hank tucked it in his pocket back then for no reason and never threw it out. Pack-rat.

> **GOMEY**
> Is that... a napkin?

> **HANK**
> It's the sketch of the "Context" memory core. From 'oh-eight. Before "Context" was even a company.

He lays the napkin next to a printout of the leaked Heisenbug source. Compares. Name by name.

`memCell`. `decayTimer`. `recall_ctx`. `__heisen_seed`.

The same. Word for word. The same crooked hand. The same column-aligned spacing.

Hank goes slowly pale. The blood drains from his face. Gomey doesn't see it.

> **GOMEY**
> So? A match?

Hank looks at the napkin. At the name scratched into the corner eight years ago by a familiar hand. At a family dinner. His own family.

> **HANK**
> *(quickly pockets the napkin)*
> ...No. Dead end. Different guy.

Gomey shrugs and walks off. Hank stays alone in the garage, palm pressed to the pocket where the napkin sits. Breathing hard.

---

**INT. HANK'S HOUSE — DINING ROOM — SUNDAY EVENING**

Family dinner. Warm light. The clink of forks. Sveta pours wine. Jess is absent — an empty chair. Bely sits at the head of the table, relaxed for the first time all episode: Mike's counter-op landed, and Emil and Craze's threat rolled back by morning.

> **SVETA**
> *(to Hank)*
> Hank, you're quiet today. Everything okay at work?

> **HANK**
> *(slowly)*
> Eh. Closing out an old case. Thought I'd found the author. Turned out to be a dead end.

He looks across the table at Bely. Straight in the eyes. For a long time.

Bely smiles, passes a dish.

In Hank's pocket — the napkin. He feels it with the edge of his hand. For eight years he's hunted Heisenbug. Heisenbug has been passing him the potatoes every Sunday.

Hank slides his hand into his pocket. Adjusts the napkin. Tucks it deeper. And calmly — too calmly — he says:

> **HANK**
> Pass the salt, Val.

Bely, suspecting nothing, hands him the salt shaker. For a second their fingers touch.

Hank holds the smile. Behind the smile — ice.

He KNOWS.

**END OF EPISODE.**

---

*Next episode:*

Emil and Craze, scorched by the fork bomb, work out who rolled them back — and prepare their answer through the supply chain. Gus, tired of the "ricin smell," decides Bely has become more expensive than he's useful. Mike warns: "Someone swapped out one of your dependencies, Valentin. And it wasn't them." Hank quietly starts collecting commits. And the poisoned package is already waiting in someone's lockfile, ready for `git push --force`.

**S01E09 — "Force Push."**
