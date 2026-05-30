# BREAKING PROD

### Season 1, Episode 1 — "Works on My Machine"

[`🇷🇺 Русский`](../../ru/episodes/s01e01-rabotaet-na-moey-mashine.md) · `🇬🇧 English`
[← Episode guide](../seasons.md) · [Next episode →](./s01e02-deploy-on-friday.md)

---

## COLD OPEN

**EXT. DATA-CENTER ROOFTOP. EDGE OF THE CITY — NIGHT**

Cooling fans roar. Wind drags printed stack traces across the concrete.

**VALENTIN BELY**, 52, stumbles into frame. Glasses askew, sweat on his bald head. He's wearing a corporate teal polo shirt, tucked into a pair of boxer shorts. He appears to have lost his trousers somewhere along the way.

In one hand — an open laptop. The screen pulses red: a Grafana dashboard. All red. Every single panel.

Somewhere below, a wail rises. Not a siren — the **PagerDuty** ringtone, multiplied by a hundred phones at once. The sound of the end of the world, for an engineer.

Bely sets the laptop on the parapet, opens the camera, and with shaking hands hits record.

> **BELY**
> My name is Valentin Igorevich Bely. Address… does it even matter. Sveta, if you're watching this — I love you. To my daughter — your dad is not a bad man.

He swallows.

> **BELY (CONT'D)**
> Whatever they say later in the postmortem… I want you to know. The leak wasn't my fault. Well — the first one wasn't.

The PagerDuty wail gets closer. On the stairwell: footsteps and a flashlight beam.

Bely snaps the laptop shut, turns to the door, and raises it in front of him like a shield. Or a weapon. He hasn't decided yet.

CUT TO BLACK.

**TITLE CARD: BREAKING PROD**

---

## THREE WEEKS EARLIER

**INT. "FLOW" OFFICE. OPEN PLAN — MORNING**

Glass walls, a neon sign reading "move fast / break prod," kick scooters. Twenty-three people in hoodies stand in a half-circle for the daily standup. Among them — Bely. In a blazer. The only one in a blazer.

The standup is run by **ARTYOM**, 26, team lead, backwards cap.

> **ARTYOM**
> Okay, burndown. Kirill — how many'd you close?

> **KIRILL (junior)**
> Eight tickets. Threw it at Cursor last night, it did it itself.

> **ARTYOM**
> Fire. Valentin Igorevich?

A pause. Everyone looks at Bely.

> **BELY**
> I closed one. But it was concurrency in the payments module, there's a race on—

> **ARTYOM** *(interrupting, gently, like to a child)*
> Valentin Igorevich. We've talked about this. That's *legacy thinking*. You don't need to "understand." You need to *ship*. Just ask the model, it'll write it.

One of the juniors snorts. Bely slowly lowers his gaze to his own hands.

---

**INT. "FLOW." "SYNERGY" MEETING ROOM — LATER**

Bely sits across from **HR (LERA)** and Artyom. On the table — a printout with a line going down.

> **LERA**
> Valentin Igorevich, this isn't a layoff. It's… an *AI augmentation of your role*.

> **BELY**
> Meaning what.

> **ARTYOM**
> Meaning your job is now done by a twenty-dollar-a-month subscription. And you move into the role of… *reviewer of its work*. With a downward grade adjustment.

Bely says nothing. This is his diagnosis. Not cancer. Worse.

> **LERA** *(brightly)*
> But you're still part of the Flow family! We've got yoga on Friday, by the way.

Bely looks out the window. There, on the next skyscraper — a giant billboard for a company called **"CONTEXT."** The logo. The slogan: *"Memory for everyone."*

> **BELY** *(quietly, to himself)*
> I wrote the core of that thing. In two thousand eight. For a beer.

Nobody hears.

---

**INT. BELY'S HOUSE. LIVING ROOM — EVENING**

A birthday. 52 candles, a cake. Few guests. **SVETA**, his wife, hands out plates without looking up from her phone — she runs three projects as a PM.

At the center of attention — **HANK**, brother-in-law, 48, principal security engineer. Loud, Hawaiian shirt, can of energy drink. He's showing everyone something on his phone.

> **HANK**
> …and this beauty right here. Anonymous. Handle — *Heisenbug*. In one month he took down prod at four startups. And you know the funniest part? *The code is perfect.* Linter green, tests green, README with diagrams. And inside — a black hole. Nobody understands how it works. Including, I'm certain, the author himself.

> **BELY**
> And how do you catch him?

> **HANK**
> By his handwriting, Val! Every coder has a handwriting. This one's old school. Feels the system in his gut, but plays the vibe-coder. Camouflage. *(slaps Bely on the shoulder)* You could learn from a guy like that, by the way. Stop writing everything by hand already, you dinosaur.

Everyone laughs. Bely smiles. Inside, something clicks.

---

**INT. "WAR ROOM." STARTUP "SWIPE" — DAY**

Hank dragged Bely along to "see how the grown-ups work." An incident. Prod is on fire. The team panics, runs around, screams at each other, nobody reads the logs.

Hank watches from the balcony, arms crossed, like a predator.

And then Bely spots HIM. Down by the fire exit, backpack and laptop under his arm, a young guy quietly slipping out. **JESS**, 24. Hood, earring, panic in his eyes.

Bely recognizes him. His former intern. The one he kicked off his course three years ago for submitting someone else's code.

Their eyes meet for a second. Jess goes pale and vanishes through the door.

> **HANK** *(without turning)*
> See that? That's the talent pool. First they "vibe" everything, then we clean it up.

---

**EXT. PARKING LOT BY JESS'S BUILDING — EVENING**

Bely waits by a battered cargo van with a "404 NOT FOUND" sticker on the side. Jess walks up.

> **JESS**
> Seriously? Chief, you tracked me down? I mean, back then I totally—

> **BELY**
> That code that took down Swipe. Yours?

> **JESS** *(offended)*
> Not. Mine. I *generate.* Got it? I'm a prompt engineer. An artist.

> **BELY**
> You can't read a stack trace.

> **JESS**
> …That's debatable.

Bely takes a step closer. Something new enters his voice. Cold.

> **BELY**
> Listen to me, Jess. You know how to *feel the vibe.* You know all the models, the channels, where they pay. You've got speed. And I have what neither you nor that clown who hired you has. I *understand how it works.* Down to the byte.

A pause.

> **BELY (CONT'D)**
> Let's cook. Together. You're the face. I'm what's under the hood. And we'll ship things people pay any money for. Because it'll work. Every. Damn. Time.

Jess looks at the boring guy in the blazer like he's seeing him for the first time.

> **JESS**
> Chief… you just described a startup.
> *(beat)*
> I'm in.

---

**INT. THE VAN — LATER**

An improvised lab on wheels. Inside — a folding table, two laptops, a Starlink dish on the roof, and a humming mini-server Bely hauled up from his basement. A Hetzner box wrapped in duct tape.

> **JESS**
> Okay, bro, let's do it classic. We write the prompt: "make a SaaS for…"

> **BELY**
> No.

> **JESS**
> What "no"?

> **BELY** *(rolling up his sleeves)*
> First the data schema. Then the transaction boundaries. Then — let it generate all it wants. The model isn't a cook, Jess. The model is a knife. Sharp. But the one who cuts with it — is the cook.

He starts typing. Fast. Sure. Jess looks over his shoulder — and on the screen something is born that he's never seen before: beautiful, clean, and, at the same time, *meaningful.*

> **JESS** *(whispering)*
> It's… kinda blue. As in, clean. I've never seen a vibe like this.

---

**EXT. WASTELAND BEHIND THE GARAGES. THE VAN — NIGHT**

The van sits in the dark. The light is on inside. Then — headlights. A black SUV blocks the exit.

Two men step out. **EMIL** and **CRAZE**, a rival vibe-crew. The same ones who screwed Jess over with Swipe.

> **EMIL**
> Jess. You found a new sugar daddy? *(peers into the van, sees Bely)* Who's this, your dad?

> **CRAZE**
> Show us what you're writing. Maybe we'll take it. Brotherly-like.

Jess backs away. Bely raises his hands, peaceably.

> **BELY**
> Guys. No need to fight. Let me just show you what we're working on. It's open source, take it.

He turns the laptop toward them.

> **BELY (CONT'D)**
> It's one command. To run it locally — `git clone`, then `npm install`, then `npm run dev`. Thirty seconds.

Emil smirks, sits down, pulls the laptop toward himself. Craze looms over him. Bely takes a tiny step back. Toward the door.

> **EMIL**
> Nothing to read here. *(typing)* `npm install`… `run dev`…

Enter.

A PAUSE.

The fans on both — no, on *every* machine in the van — scream at once. Emil's screen starts spawning terminals. Hundreds. Thousands. Memory is being devoured in real time.

> **CRAZE**
> What the… it's opening by itself! Close it! CLOSE IT!

> **EMIL** *(pounding the keyboard in panic)*
> I didn't read the script! Who reads scripts?!

And there it is. Bely is already outside. He slams the van door, throws the external latch he welded on this afternoon. Inside — two locked-in vibe-coders and a fork bomb heating the processors to the temperature of a clothes iron.

Bely steps back three paces. Takes off his fogged-up glasses. Wipes them on his shirt. Completely calm.

> **BELY** *(to himself)*
> Nobody. Reads. Scripts.

---

## BACK TO THE PRESENT

**EXT. DATA-CENTER ROOFTOP — NIGHT**

The same moment as the cold open. Bely, in his boxers, holds the laptop in front of him like a shield. The door bursts open.

It's not Hank. It's not security.

It's a **janitor** with a cart and headphones. He takes in the half-naked man with a laptop, shrugs, and rolls on.

The PagerDuty wail below cuts off — someone finally hit "acknowledge." Silence. Just the fans.

Bely slowly lowers the laptop. Looks at the red dashboard. Then at his own hands. And for the first time in twenty years, he doesn't feel like legacy.

He feels alive.

CUT TO BLACK.

**END OF PILOT.**

---

*Next episode:* [**"Deploy on Friday."**](./s01e02-deploy-on-friday.md) *Sveta finds forty token-API subscriptions on the family card. Hank cracks Heisenbug's handwriting and realizes the code is painfully familiar. And Jess proposes reaching out to a wholesale buyer — a calm man from a chain of no-code incubators, named Gus.*
