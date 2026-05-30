# BREAKING PROD

### Season 1, Episode 4 — "Code Review"

[`🇷🇺 Русский`](../../ru/episodes/s01e04-kod-revyu.md) · `🇬🇧 English`
[← Previous episode](./s01e03-retry-with-backoff.md) · [Next episode →](./s01e05-standup.md)

---

## COLD OPEN

**INT. STOREFRONT CAFÉ "THE HUB" — MORNING**

Floor-to-ceiling glass. Inside, a glossy startup heaven: ficus plants in recycled-plastic pots, a neon sign reading `> build the future`, wall murals that say "ship fast, sleep never." Behind the bar, young people in identical hoodies smile like they're paid per tooth.

At the espresso machine stands a man in his fifties. Neat. Glasses. An immaculately pressed shirt under an apron with "THE HUB" embroidered on it. This is GUS FRING. He is in no hurry. He is never in a hurry.

He sets a cup under the portafilter, nudges it a millimeter into line. Starts the grind. The sound is even, like a metronome.

> **BARISTA TRAINEE**
> Gus, the investor's here, he's waiting by the door, he said he's got a meeting at—

Gus raises a single finger. Not sharply. Calmly. The trainee falls silent.

Gus lets the extraction run to the end. Twenty-eight seconds. He checks the timer. Twenty-eight exactly.

> **GUS**
> *(without turning around)*
> The investor can wait. The coffee can't.

He takes off the apron, folds it in four, sets it on the counter perfectly along the edge. Picks up his phone. Opens Slack. One message to `#prod-eu-1`:

> **GUS**
> *(typing, quietly, aloud)*
> "Taking cluster eight down."

He sends it. Somewhere a thousand kilometers away, a dashboard goes dark. Gus sips his coffee. Sets the cup down. The twenty-eight seconds were worth it.

**TITLE CARD: BREAKING PROD**

---

**INT. STOREFRONT CAFÉ "THE HUB" — LATER**

A far corner, screened off by the ficus plants. A table. On it, an open laptop, a cup of coffee, and a plate of cookies no one will touch.

WALTER BELY sits upright, hands on his knees. Beside him, JESS, cap on backwards, one leg jittering under the table. Across from them, Gus. Calm.

> **GUS**
> Thank you both for coming.
> *(a pause; a short glance at Jess, a long one at Bely)*
> Though I invited the one who actually writes.

Jess opens his mouth. Closes it.

> **GUS**
> I don't have a conversation for you. I have a task.

He turns the laptop toward Bely. On the screen — a pull request. Green. All green. CI passed, linter happy, 98% coverage, zero conflicts.

> **GUS**
> Do a code review of this PR. Tell me what you think.
> *(settles deeper into his chair)*
> Take your time.

Jess leans toward the screen, scrolls. His eyes light up.

> **JESS**
> Oh, bro, this is… this is clean. This is straight-up clean. Look — types everywhere, tests green, folders all sorted, README in two languages. This is beautiful, man, I'd hang this on a wall.

Gus doesn't react. He's watching Bely.

Bely is silent. He scrolls. Slowly. Opens one file. Another. Goes into the tests. Goes into the `docker-compose`. Comes back to the first file. A minute passes. Jess fidgets.

Finally Bely takes off his glasses.

> **WALTER BELY**
> It compiles.
> *(a pause)*
> It's a corpse with good posture.

Jess freezes.

> **WALTER BELY**
> The authorization is theater. The middleware checks the token, but `next()` is called regardless, in every branch. A door with a lock that they forgot to put in a wall.
> *(scroll)*
> The idempotency key. You have one. Wonderful. Except a fresh UUID is generated on every request. So every request is "unique." So there is no idempotency at all. It's a field pretending to be a guarantee.
> *(scroll)*
> The cache. You called it a "cache." It's a `Map` you write into and never delete from. That's not a cache. That's a memory leak with a pretty name. It'll eat a node in a day under load.

Silence. Behind the bar a barista pretends to wipe an already-clean cup.

> **WALTER BELY**
> The tests are green because they check that a function got called, not that it did anything. Ninety-eight percent coverage of absolute nothing.
> *(puts the glasses back on)*
> On the outside — production. On the inside — nothing. No one read this diff. It was written to look read.

A long pause.

And then Gus — for the first time all morning — smiles. Barely. But he smiles.

> **GUS**
> Everyone says it's beautiful.
> *(stands, walks to the espresso machine)*
> You're the first to say it's dead.

---

**INT. STOREFRONT CAFÉ "THE HUB" — CONTINUOUS**

Gus pulls another shot. For Bely only. Not for Jess. Jess notices.

> **GUS**
> I deal in volume. I have forty incubators. Every month two dozen startups come out of them. Landing page, pitch deck, MVP, round. An assembly line.
> *(sets the cup in front of Bely)*
> They're all like this. Like that PR. Green. Beautiful. Empty.

> **WALTER BELY**
> And they fall apart.

> **GUS**
> They fall apart *after* the sale. That's not my problem.
> *(a pause)*
> The problem is different. The buyers got smarter. They used to buy off the slides. Now they show up with technical due diligence. They sit their own engineer down for a week, and he finds exactly what you found in eight minutes.
> *(sits)*
> The deal collapses. I lose the round. I lose face.

He looks Bely dead in the eye.

> **GUS**
> I don't need you to write it beautiful. Beautiful I already have. I need there to be *something* under the beauty. A core. A real one. The kind their engineer can dig at for a week and walk away without hitting bottom.
> *(quietly)*
> I need Heisenbug to stop being one man's bug and become the standard of forty companies.

Jess, from the far end of the table:

> **JESS**
> Hey, so "you" — that's, like, "both of us," right? 'Cause I was also there—

Gus doesn't even turn his head.

> **GUS**
> *(to Bely)*
> I pay for quality. The quality here is you.

Bely is silent. Then he sets down the cup.

> **WALTER BELY**
> If I do this, I do it my way.
> Schema first. Contracts, types, invariants — before a single line of logic. No "we'll tidy it up later."
> No Friday deploys. Ever. I'm not signing up for a weekend on PagerDuty.
> And I don't see your buyers, your money, or your incubators. I see one thing — the repository.

Gus tilts his head. Thinks. Nods.

> **GUS**
> Schema first. Friday is off-limits.
> *(the faintest smile)*
> You talk like a man who has cleaned up after someone else's Friday before.

> **WALTER BELY**
> Twice.

---

**INT. STOREFRONT CAFÉ "THE HUB" — A LITTLE LATER**

Someone-or-other slides up to the table. A suit with a sheen that looks pricier than it costs. Teeth whiter than CI. In his hands, a tablet showing a landing page: a purple-pink gradient, a headline in enormous letters — "PROD DOWN? I'VE GOT A PROMPT" — and a button labeled "CALL GPT."

This is SAUL GOODMAN.

> **SAUL GOODMAN**
> Gentlemen! Saul Goodman, AI consultant, legal AI, your man at the intersection of code and the code of law. Gus said there'd be serious people. I see serious people. I *feel* serious people.
> *(claps his hands)*
> Okay. So you want to do business together, but you don't want it to *look* like business together. Classic. I love a classic.

He turns the tablet around. A diagram. Tidy rectangles, little arrows.

> **SAUL GOODMAN**
> Here's how we structure it. Not one company — no-no-no, one company is like a monolith, any due diligence punches straight through it. We do *microservices*.
> *(taps the rectangles)*
> "Consulting A" hires "Consulting B" for an "architecture audit." "Consulting B" is a contractor for "Studio C" doing "refactoring." Money moves between LLCs like traffic between pods. Each link is a separate legal entity, separate tax, separate liability. None of them knows what the next one's doing. Loose coupling, gentlemen! Clean architecture!

> **WALTER BELY**
> You've just described a distributed monolith and called it microservices.

> **SAUL GOODMAN**
> *(not missing a beat)*
> I described it the way a prosecutor would describe it, if he ever wanted to. And he won't, because he'll get tired reading at the third rectangle. That's the whole point.
> *(produces a stack of papers)*
> Sign here. And here. And right here, lower down.
> *(flips a page)*
> Congratulations, it's now a DAO. Decisions are made by a smart contract. Guilty parties legally do not exist. Beautiful?

Jess peers over his shoulder.

> **JESS**
> Where do I sign?

Saul flips through. Frowns. Flips back.

> **SAUL GOODMAN**
> *(to Gus, under his breath)*
> Is there a second party budgeted here?

Gus shakes his head silently. Once.

> **SAUL GOODMAN**
> *(to Jess, beaming)*
> We'll onboard you later. As a separate… prompt.

Jess leans back. His cap slides down over his eyes. He watches Gus top up Bely's coffee. Again — Bely's only.

---

**INT. CYBER-INCIDENT UNIT — DAY**

An open-plan office buried in sticky notes. HANK stands at a board pinned with printouts — code fragments, commit screenshots, marker arrows. In the center, large: `namespace: Heisenbug`.

GOMEY walks over with two cups of vending-machine coffee.

> **GOMEY**
> Brass made the call. The case is officially yours. "Heisenbug" is your job now, not your lunch-break hobby.

> **HANK**
> *(not looking away from the board)*
> You hear that, Gomey? It's not a hobby anymore. They *pay* me for this now.

He jabs the marker at a printout.

> **HANK**
> Look here. All these Gus startups — their code is polished to a shine, right? On the outside. But there's one handwriting that surfaces in the dirtiest places. Where it's actually hard. Where you have to fix things under load.
> *(circles a fragment)*
> Indentation. See it? Everywhere it's spaces, two of them. But this guy — always aligns to the argument, breaks the line before the dot in a method chain, and the comment is exactly one sentence, no period at the end. Always. It's like… a fingerprint. You can rewrite a variable name. You can't rewrite a habit.

> **GOMEY**
> Hank, it's code. Millions of people write it the same way.

> **HANK**
> *(smiles)*
> The same way is how they write it *badly*. Good is what they write their own way.
> *(taps the marker on the board)*
> This guy writes good. And he's somewhere near Gus. I'll get him on the indentation, Gomey. On the indentation.

---

**INT. STOREFRONT CAFÉ "THE HUB" — EVENING**

Gus walks them to the door. At the threshold he extends a hand to Bely.

> **GUS**
> The schema on Monday. Not Friday.

> **WALTER BELY**
> Monday.

They shake. Gus's grip is exactly as firm as it needs to be, not a gram more. He lets go first.

> **GUS**
> *(looking only at Bely)*
> I'm glad it was the one who writes who came.

The door closes behind them on a soft hinge. Jess walks to the car half a step behind Bely, hands in his pockets.

> **JESS**
> Hey… is it normal he said two words to me all morning?

> **WALTER BELY**
> He buys what he needs.

> **JESS**
> *(quietly, to himself)*
> Yeah. They didn't put me in the cart.

Bely doesn't answer. Jess looks at his back. Something in his face shifts — barely, but it shifts.

---

**INT. BELY'S APARTMENT — NIGHT**

SVETA in the kitchen, in a robe, scrolling her phone. The doorbell. On the step — a courier with a thick envelope.

> **COURIER**
> Goodman & Associates. Sign here.

She signs. Closes the door. The envelope is heavy. On it, a gradient sticker and a QR code that leads to a landing page — "CALL GPT."

Sveta sits at the table. Opens it. Pulls out a contract. Reads the first page. Frowns. The second. The third. Rectangles, arrows, a chain of LLCs, the word "DAO," Bely's signature.

Her hand hovers over the phone — to call, to ask, to panic. It hovers.

She doesn't call.

Instead she reaches for a notepad. Opens a blank page. Across the top she prints: `STRUCTURE. CASHFLOW. RISKS.` She takes out her markers. And she starts drawing the same diagram — but neater than Saul. Spread out across quarters. With a column labeled "legitimization."

She doesn't panic. She decomposes.

> **SVETA**
> *(to herself, studying the chain of companies)*
> So… this isn't money laundering. This is a deliberate architectural compromise.

She underlines the word "compromise" twice. And for the first time this episode — she smiles.

**END OF EPISODE.**

*Next episode:* S01E05 "Standup." The double life goes on a schedule: by day Bely runs code reviews at the incubators' daily standups, by night he writes the core no one is ever supposed to see. Sveta opens a "consulting firm" and starts running Gus's money through real invoices — the laundering becomes a business process with a dashboard. And Hank, paging through public repositories hunting for his "indentation handwriting," stumbles onto an abandoned project called "Context," last commit dated 2008, the author signed off with a handle Hank has seen somewhere before.

---

<div align="center">

[← S01E03 · Retry With Backoff](./s01e03-retry-with-backoff.md) · [📺 All episodes](../seasons.md) · [S01E05 · Standup →](./s01e05-standup.md)

</div>
