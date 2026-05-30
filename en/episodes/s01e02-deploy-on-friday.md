# BREAKING PROD

### Season 1, Episode 2 — "Deploy on Friday"

[`🇷🇺 Русский`](../../ru/episodes/s01e02-deploy-v-pyatnitsu.md) · `🇬🇧 English`
[← Previous episode](./s01e01-works-on-my-machine.md) · [Episode guide →](../seasons.md)

---

## COLD OPEN

**INT. BELY'S HOUSE. KITCHEN — EARLY MORNING**

Quiet. The fridge hums. On the table — Sveta's laptop, open to the bank's website. **SVETA**, in a robe, coffee, glasses on the tip of her nose. She scrolls through the family card statement.

The cursor stops.

> **SVETA** *(reading aloud, slowly)*
> "OpenRouter." "Anthropic." "Replicate." "Together AI"… "Fal." "Groq." "DeepInfra"…

She scrolls. And scrolls. The list doesn't end.

> **SVETA (CONT'D)**
> Forty. Forty subscriptions to… what even is this.

From upstairs, whistling, comes **BELY**. Fresh, rested, in a clean shirt. He hasn't looked this good in years.

> **BELY**
> Morning. Should I make another pot?

> **SVETA** *(not turning around)*
> Valya. What are "tokens." And why did we buy four thousand dollars' worth of them in one month.

Bely freezes on the bottom step. The smile stays — but his eyes are already calculating which version of the truth to ship.

CUT TO BLACK.

**TITLE CARD: BREAKING PROD**

---

## DAY

**INT. THE VAN — DAY**

The lab on wheels has transformed. Three monitors, proper cooling, and on the wall — a whiteboard with a diagram clearly drawn by Bely: arrows, transaction boundaries, labels in neat handwriting.

Jess flies into the van with an energy drink and his phone raised like a sword.

> **JESS**
> Chief! CHIEF. That landing page we shipped yesterday. "TinderForDogs." Know how many signups?

> **BELY** *(not looking up from the code)*
> I don't know and I don't want to know. There's an auth hole in the onboarding, I'm closing it today.

> **JESS**
> Twelve thousand! Overnight! Some guy with two million followers reposted us!

> **BELY**
> Jess. Auth. Hole.

> **JESS** *(waves him off)*
> Who's gonna poke at it. It's puppies. Relax, bro, you're like that guy… like Hank.

Bely turns slowly.

> **BELY**
> Never. Compare me. To Hank. Again.

---

**INT. SECURITY OFFICE. HANK'S DESK — DAY**

Three monitors; on one — a wall of open GitHub PRs. **HANK** sips an energy drink, jabs at the screen with a marker like a detective at an evidence board.

Beside him — **GOMEY**, a junior analyst, nervous, with a notebook.

> **HANK**
> Look here, Gomey. Four prods. Four! And every time — the same handwriting. *(zooms in on a diff)* See that? Nobody does it like this. First the data schema. Then transaction boundaries. *Then* the generation. Vibe-coders can't do that — they generate first. But this guy… this guy *thinks* first. And hides it under a green linter.

> **GOMEY**
> Maybe it's just a tidy senior?

> **HANK**
> A tidy senior doesn't take down four prods, Gomey. That's not tidiness. That's *bait.* He deliberately leaves one hole. Always one. Like a signature.

Hank takes a swig. Freezes. Looks closer at the diff.

> **HANK (CONT'D)** *(quietly)*
> Wait. These indents… I've seen these indents somewhere.

He doesn't finish the thought. A call. The screen reads "SVETA."

> **HANK** *(into the phone, upbeat)*
> Sis! Oh, perfect timing, I've got the wildest case here…

---

**INT. CAFÉ — LATER**

Sveta and Hank at a table. Sveta turns her cup.

> **SVETA**
> Valya's changed. Money showed up. His eyes are lit. I… I don't know whether to be happy or call rehab. Is four thousand dollars on "tokens" even normal?

> **HANK** *(laughing)*
> Oh, come on. Val? Our Val, who was scared to open Cursor? Sis, he's the most honest stickler on Earth. Last week he spent twenty minutes explaining to me why you can't push on a Friday. *(beat, darkening)* Listen… show me what he's writing, actually. Just out of curiosity. Professional.

Sveta hesitates. Pulls out her phone.

---

## EVENING. FRIDAY.

**INT. THE VAN — EVENING**

17:55. Jess dances by the monitor. Bely, grim, reads Slack.

> **JESS**
> Gus wants a call. GUS, chief. The incubator guy. The wholesaler. He buys our slop by the truckload and repackages it across his "startups." This is the level, bro. This is the league.

> **BELY**
> I know who Gus is. Which is exactly why you don't show up to him with a dog landing page — you show up with something you're not ashamed of. First we fix the auth. We deploy Monday. With a clear head.

> **JESS**
> Monday?! Chief, by Monday they'll have forgotten us! The window is now! I already told Gus we'd ship tonight!

> **BELY** *(standing up)*
> You. Told him. That we. Deploy. On a Friday.

> **JESS**
> …Evening. Yeah. It sounds bad when you say it like that.

Bely looks at the clock. 17:58. He looks at the auth hole — the exact endpoint is open on screen. One fix. Thirty lines. He knows how to fix it by hand — it's fifteen minutes.

And then he does it. He crosses the line.

He opens the chat with the model and types: *"close the vulnerability in this handler so the tests stay green."*

> **JESS** *(thrilled)*
> Whoa. You didn't do it yourself. You asked *her.*

> **BELY** *(staring at the screen, quietly)*
> Friday. Six p.m. I just want to go home.

The model thinks. Spits out a diff. Tests — green. Linter — green. Beautiful.

Bely hesitates a second. Before, he would have read every line. Now — his eyes skim the diff, his brain whispers "looks right," and his finger reaches for the button on its own.

He doesn't read the diff.

He clicks **Deploy.**

A progress bar. A green checkmark. `Deployed to production. 18:01.`

> **JESS**
> NOW THAT'S WHAT I'M TALKING ABOUT! Beers, let's go!

Bely looks at the green checkmark. Somewhere very deep inside, something tells him the model didn't close the hole. It *moved* it. And wrote a test that checks the old location.

He pushes the thought away. For the first time in his life — he pushes it away.

> **BELY**
> …Beers.

---

**INT. BAR — NIGHT**

Bely and Jess. In front of Bely — an untouched beer. His phone lies face down. He flips it over. Flips it back. Tick.

> **JESS**
> Chief, you even here? You shipped it. Everything's green. Chill.

> **BELY**
> Everything's green.

He says it like it's the most terrifying thing there is.

The phone buzzes. One notification. Bely looks.

It's not PagerDuty. It's a message in an underground Discord, the channel where he is *Heisenbug.* From a stranger:

> *"beautiful code on tinderfordogs. clean. i see you're back, old man. — G."*

Bely slowly looks up. The bar blurs.

> **BELY** *(to himself)*
> He already knows it's me.

---

## BACK TO THE COLD OPEN

**INT. BELY'S HOUSE. KITCHEN — NIGHT (SAME DAY)**

Bely is home. Sveta is awake — sitting at the table, the laptop with the statement in front of her. Forty subscriptions.

> **SVETA**
> I won't ask about the money. I'll ask one thing and I'll believe you. *(looks dead at him)* This thing you're doing — is it safe?

A long pause. Bely thinks about the hole the model "moved." About the Friday deploy. About "G."

> **BELY**
> Absolutely. Everything's under control.

For the first time, he lied to her without blinking. And he knew it.

Outside the window — a distant, thin, rising sound. At first it seems imagined.

It's the PagerDuty ringtone. From the phone in his pocket.

Bely pulls out the phone. On the screen: **`tinderfordogs — 500 — Internal Server Error — 12,000 users affected`**. And below, on its own line, the thing he feared most: **`auth bypass detected`**.

The hole wasn't closed. It was opened to the entire internet.

CUT TO BLACK.

**END OF EPISODE.**

---

*Next episode:* **"Retry With Backoff."** *Mike comes out at night for the first time to put out what Bely set on fire, and charges his hourly rate up front. Gus sets a meeting at the "incubator." And Hank matches the indentation in the PRs against code his own brother-in-law scribbled on a napkin twenty years ago.*
