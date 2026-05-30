# BREAKING PROD

### Season 1, Episode 9 — "Force Push"

[`🇷🇺 Русский`](../../ru/episodes/s01e09-fors-push.md) · `🇬🇧 English`
[← Previous episode](./s01e08-rollback.md) · [Next episode →](./s01e10-postmortem.md)

---

## COLD OPEN

**INT. FLOW — "CHICKEN-BYTE" SERVER ROOM — NIGHT**

A sterile white corridor behind the franchise kitchen. The racks hum, steady as liturgy. **GUS FRING**, in a flawlessly pressed polo, stands before a monitor. On screen — a neat PDF. Title: "HEISENBUG METHODOLOGY: FULL DOCUMENTATION."

Every commit. Every pattern. Every one of Bely's tricks, lovingly documented by another hand.

**MIKE** stands by the door, arms folded.

> **GUS**
> *(without turning)*
> Mike. Once the teacher has written down everything he knows... he stops being the teacher.

> **MIKE**
> He stops being necessary. Those aren't the same thing.

Gus scrolls the PDF to the last page. A dependency diagram. Clean. Complete. Except one line, greyed out: `context@2.0.8 — source unresolved`.

> **GUS**
> Tomorrow we revoke his keys. All of them. SSH, cloud, secrets, pager.
> *(a beat)*
> And the day after... a man named Schrader receives an anonymous archive. A napkin. A name. An address.

> **MIKE**
> You're handing over Heisenbug.

> **GUS**
> I'm closing an incident. Cleanly. The way I do everything.
> *(quietly)*
> Nobody reads diffs, Mike. So nobody will notice me removing a man from the commit history.

He closes the laptop. The screen dies. Only the green diodes of the racks blink in the dark — calm, like a pulse.

**TITLE CARD: BREAKING PROD**

---

**INT. BELY HOUSE — GARAGE — MORNING**

Cold. A bare bulb. **VALENTIN BELY** sits at an old laptop, a blanket over his knees. On screen — a terminal, the dependency tree blown up full-frame. Thousands of lines. And at the bottom, the root of it all, one line highlighted: `context@2.0.8`.

**SVETA** comes in with two mugs of coffee. Sets one beside him. Looks over his shoulder. These screens don't frighten her anymore. She reads them.

> **SVETA**
> Is that his whole network?

> **BELY**
> That's his whole *empire*. Flow. Chicken-Byte. The slop farms. Eighteen subsidiaries. Three hundred forty repositories.
> *(runs a finger down)*
> And all of it — stands on this.

> **SVETA**
> On what?

> **BELY**
> Context. Two thousand eight. I wrote a memory core in one evening. Honest code. Boring code. Nobody forked it, audited it, *looked* at it. Just `npm install` — and forgot.
> *(almost tenderly)*
> And it sits transitively under everything. Under every service he has. Under every vibe-project his fleet ever generated. The root. The kill switch.

Sveta sits down across from him.

> **SVETA**
> And what happens if you...

> **BELY**
> If I publish a new version? One `git push --force`. One bump.
> *(looks at her)*
> His entire infrastructure pulls my code through the transitive dependency. And does exactly what I put inside it.

> **SVETA**
> He'll kill you.

> **BELY**
> He's already decided. I just read his commits better than he reads mine.

He drains the coffee. On screen — a deploy button. His finger hovers over Enter. Doesn't press it. Not yet.

---

**INT. "SAUL GOODMAN & PARTNERS" OFFICE — DAY**

Cheap gilt, styrofoam columns. **SAUL GOODMAN** darts between the shredder and the safe, stuffing folders into a backpack.

> **SAUL**
> No-no-no. When I said "diversify your risk," I meant crypto, not a *supply-chain civil war*.

> **BELY**
> I need one quiet day. So Mike doesn't pick a side too early.

> **SAUL**
> Mike picks a side based on who pays the hourly up front. That's not loyalty, that's an invoice.
> *(jabs a finger)*
> Listen to me. If you pull that switch — it's not just Fring that goes dark. *Everything* you ever touched goes dark. Every slop-project of yours sits on the same lib. You get it? You — are the single point of failure of your whole internet.

Bely is silent. A long time.

> **BELY**
> I know.

> **SAUL**
> *(quietly)*
> Of course you know. That's why you wrote it. Back in oh-eight. You just didn't know what for yet.

Saul zips the backpack, heads for the door. Stops.

> **SAUL**
> If anyone asks — I don't know you. And, honestly, I wish that were true.

---

**INT. CHICKEN-BYTE — GUS'S OFFICE — EVENING**

Bely walks in uninvited. Gus doesn't look up — he's slicing an onion into thin, even strips. A kitchen knife. Lamplight on the blade.

> **GUS**
> Valentin. Dinner in twenty minutes. Will you stay?

> **BELY**
> You revoked my cloud key at six this morning. I noticed at six-oh-one.

> **GUS**
> *(not looking up)*
> Access hygiene. Standard. You'd approve.

Bely sets his phone on the table. On screen — a Grafana dashboard. Gus's entire infrastructure. All green. Calm.

> **BELY**
> Look.

> **GUS**
> I look at my metrics every morning.

> **BELY**
> These aren't your metrics. This is *my palm*, with your metrics lying on it.
> *(leans in)*
> Context. Version two-oh-eight. It's under everything, Gustavo. Under every pod. Under every franchise service. Under the register in the room where they're frying your chicken right now.

The knife stops. For the first time — it stops.

> **GUS**
> *(level, very level)*
> You're bluffing. My engineers pin versions.

> **BELY**
> Your engineers pin *direct* dependencies. I live in the transitive ones. Four levels deep. In a lock-file nobody's opened since twenty-eighteen.
> *(almost a whisper)*
> Nobody reads lock-files, Gus. You taught me that yourself.

Gus slowly sets the knife down. Carefully. Parallel to the edge of the table. His calm is no longer calm. It's stone with the first crack running through it.

> **GUS**
> What do you want.

> **BELY**
> I want you to remember who writes the code that feeds you.
> *(takes back the phone)*
> Say my namespace.

A long pause. The onion on the board. The lamp hums.

> **GUS**
> *(through his teeth)*
> ...Heisenbug.

> **BELY**
> You're goddamn right.

---

**EXT. CHICKEN-BYTE PARKING LOT — NIGHT**

Mike waits by Bely's car, leaning on it. A vending-machine coffee in his hand.

> **MIKE**
> He told me to handle you on your way home.

> **BELY**
> And instead you're drinking coffee in a parking lot.

> **MIKE**
> I billed him a full shift up front. The money cleared at four. It's seven now. I've got nine more paid hours in which I *think*.
> *(a sip)*
> And here's what I think. A man who holds the kill switch under everything is a bad target to hit. That's not loyalty, Valentin. That's arithmetic.

> **BELY**
> So you're with me?

> **MIKE**
> I'm with nobody. I just really hate cleaning up after men who underestimated the other guy. And Gus just underestimated you.
> *(steps off)*
> Do what you came to do. But know this: when you pull the switch, it's not just him that goes dark. *Everything* goes dark. And the ones who've been hunting you a very long time will crawl into the light.

He walks into the dark. Bely stands alone. Looks at his phone. The deploy button — still there.

---

**INT. FEDERAL BUILDING — HANK'S OFFICE — NIGHT**

**HANK SCHRADER** alone. Before him on the desk — a yellowed napkin in an evidence sleeve. On it, in faded ink: an architecture sketch and a signature — `Heisenbug, V.B., 2008`.

Beside it — a photo from a family barbecue. Bely, tongs in hand, smiling.

Hank lays the two next to each other. Signature and signature. Handwriting and handwriting. They match.

> **HANK**
> *(to himself, hoarse)*
> No. No, it's not him. That man can't set up a home router.

He pushes the napkin away. Pulls it back. Picks up the phone, dials.

> **HANK**
> *(into the phone)*
> Gomez. Listen. If — *if* — Heisenbug is real, he's not an interface, he's an *incident*. You don't catch him by IP. You catch him when he comes running to fix the fire himself.
> *(a beat)*
> So listen close. We need a big, beautiful, public fire. And cameras in that data center. Every exit. The roof too.
> *(looks at the photo of his brother-in-law)*
> I have to see his face. With my own eyes. Until I do — he's not family and he's not a suspect. He's a hypothesis.

He hangs up. Stares a long time at the smiling photo. Kills the lamp.

---

**INT. BELY HOUSE — GARAGE — NIGHT**

Bely alone. Laptop open. Terminal. The command typed out in full:

`git push --force origin v2.0.9 && npm publish`

Finger over Enter. On the second monitor — Gus's dashboard. Green. Alive. Defenseless.

Sveta appears in the garage doorway. Silent. Just watching. She nods — barely.

Bely closes his eyes. And presses.

A second of silence.

Then Gus's dashboard begins to die. Pod by pod. Green turns grey. Grey turns red. An entire empire folds in on itself, like a fork bomb that ate its own tail.

> **BELY**
> *(a whisper)*
> Done.

But he doesn't close the laptop. He keeps watching. Behind Gus's dashboard, *another* one opens. Wider. More global. Every project Heisenbug ever shipped.

And they start turning red too. One. Another. Ten. A hundred.

The cascade didn't stop at Gus.

> **SVETA**
> *(quietly)*
> Valentin... why is it still turning red?

Bely doesn't answer. He understands. The switch was under *everything*. Including his own.

---

**INT. SVETA'S SISTER'S HOUSE — LIVING ROOM — SUNDAY, EVENING**

Warm light. A family dinner. Plates, laughter, kids under the table. Bely — in a house tee and boxer shorts, glasses on his nose, a forkful of potato in hand. For a minute — an ordinary man. Tired. Almost happy.

Across the table Hank spins a story, roaring with laughter. Sveta passes the salad. Normal life, an arm's length away.

And then — Bely's phone on the table starts to buzz. Once. Twice. Doesn't stop.

PagerDuty. The screen floods red. An alert. Another. A cascade. `CRITICAL — context@2.0.9 — global failure — 100% nodes down`.

And over all of it — a DM. One line from Saul:

`HANK KNOWS. HANK'S DRIVING TO THE DATA CENTER. RUN.`

Bely slowly raises his eyes. Hank at the table is still laughing — but his phone has buzzed too, and without looking he slips a hand into his pocket.

Bely stands. Too fast. The chair scrapes.

> **SVETA**
> *(mouthing)*
> What?

> **BELY**
> Prod. I'm on the pager. I... I have to.

He doesn't change clothes. No time. He grabs the laptop off the table — like a shield, pressed to his chest. His glasses skew sideways. Barefoot, in boxers, he runs out into the cold night.

---

**EXT. DATA CENTER — PARKING LOT — NIGHT**

Bely's car tears into the empty lot. The roar of generators. Cold. He spills out — half-dressed, laptop clutched to his chest like a shield, glasses askew.

Inside the building, one floor down, a hundred phones of the on-call shift wail PagerDuty — one inhuman chorus. Through the glass doors: the wall of monitors in the NOC — all red. All of it.

The signal on Bely's phone drops. Not a single bar. To record a video, to reach the network, to *think* — he needs higher.

He looks up. At the fire escape. At the roof.

From somewhere below, in the guts of the building — the sound of a door opening. Footsteps. Heavy. Climbing.

Bely clutches the laptop tighter. Sets a bare foot on the first step.

And starts climbing to the roof.

**END OF EPISODE.**

---

*Next episode:*

The roof pays off. Below — the whole world red; above — one man in his underwear with a laptop for a shield. The footsteps on the stairs draw closer. Hank climbs — and finally *sees*. Face to face. The hypothesis becomes a name. And Bely, cornered nine stories up, switches on the camera and starts recording the thing he'll call a confession, and the prosecutor will call a statement of guilt. **S01E10 — "Postmortem."**

---

<div align="center">

[← S01E08 · Rollback](./s01e08-rollback.md) · [📺 All episodes](../seasons.md) · [S01E10 · Postmortem →](./s01e10-postmortem.md)

</div>
