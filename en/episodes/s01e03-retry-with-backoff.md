# BREAKING PROD

### Season 1, Episode 3 — "Retry With Backoff"

[`🇷🇺 Русский`](../../ru/episodes/s01e03-retray-s-bekoffom.md) · `🇬🇧 English`
[← Previous episode](./s01e02-deploy-on-friday.md) · [Next episode →](./s01e04-code-review.md)

---

## COLD OPEN

**INT. CARGO VAN — 3 A.M.**

Darkness, cut by the blue glow of two laptops. On the inside of the back door — a sticker reading "404 NOT FOUND." Outside — an empty lot beside a 24-hour kebab stand.

VALENTIN BELY sits on an overturned energy-drink crate. His face is green in the terminal light. Beside him — JESS, headphones around his neck, one leg bouncing.

On Bely's screen — a wall of red. The 500-error graphs climb straight up, like a heartbeat right before flatline.

> **JESS**
> Yo, chief, why you frozen. Just roll it back. Revert to the last commit and sleep like a baby.

> **BELY**
> *(not looking up)*
> Roll it back.

> **JESS**
> Yeah. The "revert" button. Bro, I've done it like a thousand times.

Bely slowly turns the laptop toward him.

> **BELY**
> Show me the migration, Jess.

> **JESS**
> What migration.

> **BELY**
> Exactly. There isn't one. They're not versioned. The model you asked to "fix the hole" didn't close the auth-bypass. It *moved* it. Out of the login handler — into the password-reset handler. And while it was at it — *(taps the screen)* — it seeded prod with this.

On screen — the users table. Half the rows have `email`: `null`. The `display_name` field: `"Doggo"`.

> **JESS**
> Is that... test data?

> **BELY**
> That's twelve thousand living humans, Jess. Who'll wake up this morning to learn their name is now "Doggo." And half of them — to learn they no longer have an email.

Jess takes off his headphones. For the first time this episode, the silence in his head matches the silence in the van.

> **JESS**
> ...What if we roll back the database?

> **BELY**
> There's no clean rollback. The backup was taken AFTER the migration. Roll back the code — the data stays rotten. Roll back the data — we lose everyone who signed up overnight. This isn't a button. It's surgery.

He leans back. In his jacket pocket — the phone. Bely takes it out and sets it face-up on the crate. The PagerDuty ringtone still trembles — silent, on vibrate, but the screen pulses red, as if the van itself is breathing alarm.

> **BELY (CONT'D)**
> *(quietly)*
> Twelve thousand. And not one versioned step back.

The light of the 500 graphs floods his face. He isn't panicking. He's counting.

**TITLE CARD: BREAKING PROD**

---

**INT. CARGO VAN — NIGHT, LATER**

Jess holds his phone with both hands, like a grenade. On screen — a contact with no name, just a number. Local, but the digits are somehow too even.

> **JESS**
> Those guys gave me this number... y'know. From the incubator. Said — if it ever totally goes sideways, call. Money up front, though, like.

> **BELY**
> What guys.

> **JESS**
> No-code incubator. "Fring Ventures," I think. They run a coffee shop too, get this.

Bely freezes on the word "Fring." But says nothing.

> **BELY**
> Call.

Jess hits dial. One ring. Then — a click. No "hello." Just an open line and someone breathing.

> **JESS**
> *(into the phone)*
> Uh... yo? We were told... our prod's down, TinderForDogs, throwing fives, twelve K users, and the database...

Silence on the line. Then — a short sound. A hang-up.

> **JESS (CONT'D)**
> He hung up. Bro, he hung—

At that moment a knock comes on the van's side window. Twice. Calm.

Bely and Jess turn in unison.

---

**EXT. LOT BY THE KEBAB STAND — NIGHT**

The van door slides open with a creak. Outside stands MIKE — gray-haired, past fifty, an unremarkable jacket, earbuds in. In his hands — a battered laptop and a cup of vending-machine coffee. The face of a man who has seen every possible way to take down prod and has stopped being surprised.

He doesn't say hello. He silently surveys the van. The "404" sticker. Jess. Bely.

> **MIKE**
> Which one of you wrote that migration.

> **JESS**
> Uh, well, technically the model, but I asked it to—

> **MIKE**
> *(cutting in, flat)*
> Doesn't matter. That was rhetorical. I already read the dump on the way here.

He climbs into the van. Sits. Opens his laptop. And the first thing he does is turn the screen toward Bely. On it — not a terminal. A payment link. A QR code.

> **MIKE (CONT'D)**
> This first.

> **BELY**
> We haven't discussed—

> **MIKE**
> We don't discuss anything. Hourly. Up front. The first four hours — now — or I finish my coffee and leave, and you get to explain to twelve thousand people why their name is "Doggo."

Bely looks at him. Then takes out his phone. Scans the QR. Mike waits. Somewhere in the guts of his laptop something chirps — payment received.

> **MIKE (CONT'D)**
> *(already typing, not looking)*
> Good. Now stay out of my way.

His fingers move without hurry, but without a single wasted keystroke. Three windows open on screen.

> **MIKE (CONT'D)**
> One. Cutting traffic. Not all of it — I leave five percent on a canary, so I can see whether I'm healing it or finishing it off. *(beat)* Two. Rotating every key. Every one. Because if the auth-bypass was loose for six hours, your tokens aren't yours anymore.

> **JESS**
> What about the users? They'll get kicked—

> **MIKE**
> They've already been kicked, son. They just don't know it yet. *(typing)* Three. Patching at the edge. I'm not touching your code — I wouldn't touch your code with a stick. I'm putting a rule on the CDN: until the password-reset handler answers anything other than "no," it answers "no."

The graphs on Bely's screen begin to bend. The vertical red, for the first time all night, leans toward horizontal.

> **BELY**
> You're not... fixing them. You're plugging them.

For the first time, Mike raises his eyes to him. A long look.

> **MIKE**
> I don't fix products. I stop the bleeding.

He takes a sip of coffee.

> **MIKE (CONT'D)**
> The bleeding is hourly. The healing — that's on you. In the morning.

---

**INT. HANK'S HOUSE, STUDY — NIGHT**

Hank is awake. Three monitors in front of him. A principal security engineer at home looks exactly like he does at work, only in a bathrobe. On the desk — printouts, a marker, a jar of pickles.

On the main screen — the leaked TinderForDogs code dump. Someone posted it to a forum an hour after the incident. Hank pulled it down.

Beside him, on a video call — GOMEY, an analyst, young, dark circles under his eyes.

> **GOMEY**
> Hank, it's three in the morning. It's TinderForDogs. Nobody ever took them seriously anyway. A leak's a leak.

> **HANK**
> Gomey. Look at the auth handler.

> **GOMEY**
> Looking. Standard garbage. AI-generated, you can tell from the comments.

Hank rolls his chair closer. Picks up the marker. Jabs at the screen — at the starts of the lines.

> **HANK**
> The indentation.

> **GOMEY**
> ...The indentation?

> **HANK**
> Tabs and spaces. Mixed. But not at random. There's a pattern. Two spaces per logical level, a tab on the block boundary. I've seen this. I saw it twenty years ago, in a memory engine. *(beat)* "Context." A core one man wrote over a weekend. For beer.

> **GOMEY**
> Hank, could be coincidence. Everybody writes like that.

Hank slowly turns to the camera. His face is dead serious.

> **HANK**
> Nobody. Writes. Like that, Gomey.

He takes a pickle from the jar. Crunches.

> **HANK (CONT'D)**
> Whitespace is a fingerprint. Code can be rewritten. Variables renamed. You can tell the model to "do it differently." But the way a man hits Tab at three in the morning on pure reflex — that you cannot fake. That's spinal cord.

He circles the indentation block on screen with the marker. It comes out looking a little like a palm.

> **HANK (CONT'D)**
> Find me everything this man has written. Going back twenty years.

---

**INT. BELY'S HOUSE, KITCHEN — MORNING**

Sunlight. A coffee machine. Normal human life — in contrast to the van.

SVETA, in a robe, phone in hand, is buttering toast. On the phone — the news feed. She freezes.

> **SVETA**
> Val. Val, come here.

Bely walks in — sleep-deprived but shaved. Determinedly chipper.

> **SVETA (CONT'D)**
> "TinderForDogs" is trending. A breach. Twelve thousand accounts. They're saying people's names got changed to "Doggo" and their emails vanished. *(looks at him)* That's not the one you're... consulting on?

Bely pours coffee. His back is straight. His voice level.

> **BELY**
> Different project. I work on the infrastructure, not their frontend.

> **SVETA**
> Sure? Because last night you went off somewhere—

> **BELY**
> An on-call incident. Neighboring team. I was just watching so they wouldn't blow the whole thing up. *(smiles)* It's all under control, Sveta.

Sveta looks at him a second longer than necessary. She's a PM. She has spent her whole life laundering other people's tech debt, and she can hear when "under control" means "on fire."

> **SVETA**
> Under control.

> **BELY**
> Completely.

She nods. Goes back to the toast. But she doesn't put the phone down.

> **SVETA**
> *(not looking up)*
> Forty subscriptions, Val. I saw every one on the statement. "Under control" — how many of those do we actually need?

Bely freezes for a second over his cup.

> **BELY**
> All of them. They're work tools.

Silence. The toast pops out of the toaster — too loud.

---

**INT. CARGO VAN — MORNING**

The graphs are green. No 500s. Mike packs up his laptop, finishes his cold coffee. Jess is asleep, sitting up, mouth open.

Bely's phone buzzes. Not PagerDuty. Slack. One DM.

On screen — the avatar: a flawlessly even coffee-shop logo. Sender — "G."

Bely opens it.

> **G. (on screen):**
> Good morning, Valentin. You did well tonight. Not perfectly — but well. Perfect would have been not going down.

Bely stares at the message. Mike, without turning, notices the tension in his shoulders.

> **MIKE**
> Somebody's texting.

> **BELY**
> Nobody.

A second message arrives. Then — a system notification: *"G. has sent you a calendar invite."*

> **G. (on screen):**
> Coffee. Tomorrow, 11:00. It's quiet at my place, nobody to break your concentration.
> And, Valentin — bring the one who *actually* writes. Not the boy. I need an engineer, not a vibe.

Bely slowly lifts his eyes from the phone. Looks at the sleeping Jess. Then — at his own reflection in the dark screen of the second laptop.

He understands. Gus doesn't need a team. Gus needs HIM.

Jess wakes, rubs his eyes, peers at the screen over his shoulder.

> **JESS**
> Oh, an invite? Coffee? Swee-eet, I love coffee. What time we heading out?

> **BELY**
> *(closing the phone)*
> It's... not exactly an invite for two, Jess.

Jess's face changes. He's not stupid. Not that stupid.

> **JESS**
> Ah. Got it. *(beat)* It was my project, actually. TinderForDogs. I brought it in.

> **BELY**
> I know.

> **JESS**
> ...But "actually writes" — that's not me, is it.

Bely doesn't answer. And that — is the answer.

---

**EXT. LOT BY THE KEBAB STAND — DAWN**

Mike steps out of the van. The morning is gray, wet. He slings the laptop into his bag, turns up his collar.

Bely follows him out — to see him off. Breath fogging between them.

> **BELY**
> Thank you. Seriously. I thought we'd lost everything.

Mike stops. Looks at him — not unkindly, but appraisingly. Like a mechanic at an engine that's knocking wrong.

> **MIKE**
> You know what caught my eye about you?

> **BELY**
> That I didn't panic?

> **MIKE**
> The kid in the van — he kept yelling "roll it back," "roll it back." He didn't get it. To him it's a video game, where there's a "load save." That's fine. They're all like that.

He takes a step toward Bely. His voice drops.

> **MIKE (CONT'D)**
> But you — you're not like the kid. You read. You sat down and read exactly what broke. Line by line. To the end.

> **BELY**
> That's a good thing. Isn't it.

Mike shakes his head. Slowly.

> **MIKE**
> It's worse. Because it means you knew. Knew what you were looking at. Knew the price of every line. And you're still here, at three in the morning, in a van with a "not found" sticker. *(beat)* The kid's not guilty — he doesn't understand. You understand. And you do it anyway.

He zips up his bag.

> **MIKE (CONT'D)**
> I've seen your kind. They don't burn out on the mistake. They burn out because they're too good to stop.

Mike walks off into the gray morning. He doesn't look back.

Bely stands alone. He takes out his phone. On screen — the open invite from "G."

His finger hovers over the button.

A long pause.

He taps "Accept."

The CAMERA holds on his face. He doesn't look cornered. He looks — for the first time in three episodes — calm. And that is the most frightening thing of all.

**END OF EPISODE.**

---

*Next episode:* S01E04 — "Code Review." Bely goes for coffee with Gus — alone, without Jess. Gus reveals he knows about "Context," about the year 2008, and about the beer. And when the deal starts to smell like a criminal charge, a man with three phones and a business card reading "I've got a prompt" appears in the coffee-shop doorway — the debut of Saul Goodman. "Don't say anything. Especially not the truth."

---

<div align="center">

[← S01E02 · Deploy on Friday](./s01e02-deploy-on-friday.md) · [📺 All episodes](../seasons.md) · [S01E04 · Code Review →](./s01e04-code-review.md)

</div>
