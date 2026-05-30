# BREAKING PROD

### Season 1, Episode 6 — "Merge Conflict"

[`🇷🇺 Русский`](../../ru/episodes/s01e06-merzh-konflikt.md) · `🇬🇧 English`
[← Previous episode](./s01e05-standup.md) · [Next episode →](./s01e07-chekhovs-console-log.md)

---

## COLD OPEN

**INT. "EMIL & CRAZE" BASEMENT COWORKING — NIGHT**

Bare concrete walls. An LED strip bleeds purple. A printout on the wall: a photo of a burning cargo van, captioned in marker — "NEVER AGAIN." Beneath it, two chairs wrapped in blue duct tape.

EMIL (thin, in a hoodie three sizes too big) sits cross-legged. CRAZE (shaved head, twitching eyelid) stands over four monitors. Each shows a terminal.

> **CRAZE**
> Remember how we got out of that van?

> **EMIL**
> I spent ninety minutes typing `kill -9` one process at a time. On my phone. In T9 mode.

> **CRAZE**
> The fork bomb spawned faster than we could reap.

> **EMIL**
> *(flat)* We killed it the exact second my phone died. That wasn't a win. That was a draw by timeout.

Craze rests a hand on the top monitor, almost tenderly.

> **CRAZE**
> And now we have eighteen thousand agents. They write code while we sleep. We dump. We charge a hundred rubles for a landing page.

> **EMIL**
> A hundred rubles for a landing page that crashes on the third visitor.

> **CRAZE**
> The third visitor is already an engagement metric.

Emil turns to face the monitors. The main screen shows a repository branded "TinderForDogs."

> **EMIL**
> That's Bely's. "Heisenbug." Launch tomorrow at noon.

> **CRAZE**
> *(smiles with one half of his face)* Then let's gift them a dependency. A small one. `left-pad`, but with personality.

Emil types. A line appears: `npm publish dog-tinder-utils@1.0.0`. In `postinstall` — a single curl to a foreign server.

> **EMIL**
> When he builds prod, it installs itself. And at launch, we give him traffic. A lot of traffic.

> **CRAZE**
> A DDoS as a housewarming gift.

> **EMIL**
> *(hits Enter)* Published.

Silence. Somewhere a pipe drips.

> **CRAZE**
> Say it out loud. Once. For the mood.

> **EMIL**
> *(sighs)* …We're getting revenge.

> **CRAZE**
> You're goddamn right.

**TITLE CARD: BREAKING PROD**

---

**INT. FLOW OFFICE, OPEN PLAN — DAY**

Noon. A wall screen displays the "TinderForDogs" launch dashboard. Green graphs. A balloon tied to a chair. Someone brought a cake.

VALENTIN BELY stands at the screen, arms crossed. Beside him — JESS, headphones around his neck, nervously spinning a stylus.

> **JESS**
> A thousand signups in ten minutes. We're gods, Mr. Bely.

> **BELY**
> Gods don't celebrate a graph that grows too smoothly.

He studies the traffic curve. It's perfectly straight. Too straight.

> **BELY**
> Real people arrive in waves. This is a line. A script draws a line.

On screen, the signup count jumps from 1,200 to 80,000. The graphs turn red. The sound — like someone dropping a server down a staircase.

> **JESS**
> Is that… good? Is that virality?

> **BELY**
> *(quietly)* That's an attack. Someone loves us. Very, very much.

PagerDuty on Jess's phone begins to buzz. Then a second one. Then the whole open plan rings in chorus, like a doomsday church bell.

> **JESS**
> Oh no. Oh no-no-no. It's the apocalypse.

> **BELY**
> It's Friday, Jess. I told you. No launches on Fridays.

> **JESS**
> It's Wednesday!

> **BELY**
> *(looks at him)* For prod, it's always Friday.

Bely opens the logs on his laptop. Scrolls. Stops. In the dependency list — `dog-tinder-utils@1.0.0`.

> **BELY**
> I didn't install that library.

> **JESS**
> Maybe it's transitive? A million of them get pulled in nowadays…

> **BELY**
> *(reads the `postinstall`)* …It's phoning home. To a server in a basement. *(beat)* I know this handwriting. Two-space indents and contempt for humanity.

> **JESS**
> Emil and Craze? You said they burned up in the van.

> **BELY**
> I said we left them there. That's not the same thing.

---

**INT. GUS'S CHICKEN — "FRING BROTHERS. FAST FOOD & HOSTING" — DAY**

Sterile. The smell of fryer oil and server AC. GUS FRING, in a perfectly pressed polo, folds napkins into perfect triangles. Bely enters without knocking. Gus does not look up.

> **BELY**
> We're under attack. Emil and Craze. A dependency plus a DDoS. The launch is dead.

> **GUS**
> *(folds a napkin)* I know.

> **BELY**
> You know?

> **GUS**
> I learned at 12:04. You arrived at 12:31. *(sets the napkin down)* Twenty-seven minutes. That's worth reflecting on.

Gus takes out his phone. Opens Slack. Types one message into a channel Bely can't see. Presses send.

> **GUS**
> Done.

> **BELY**
> What's done?

> **GUS**
> Their cloud account. Closed. The provider received a complaint about billing fraud and suspicious mining activity. With attached logs. Very convincing logs.

> **BELY**
> You fabricated them?

> **GUS**
> I *found* them. *(beat)* Eighteen thousand agents consume resources like a farm. Technically, that is suspicious activity. I merely helped the right person on the provider's SRE team notice it.

> **BELY**
> You didn't touch them.

> **GUS**
> I didn't touch them. I simply called the right SRE. *(adjusts a napkin)* In our business, Valentin, you needn't burn anyone's van. You need only know who signs the gas bill.

Bely is silent. On the screen behind Gus — a security camera showing an empty parking lot. And the perfect triangles of napkins.

> **GUS**
> Go back to your launch. The traffic is already falling. *(barely perceptible)* I dislike merge conflicts. I prefer there be only one branch.

---

**INT. FLOW OFFICE, "ROLLBACK" MEETING ROOM — DAY**

SVETA behind a glass wall, three laptops in front of her and one bottle of still water. She's speaking into a headset. Background — the muted clatter of keys.

> **SVETA**
> *(into headset)* No, in the press release we don't say "the competitor got banned." We say "a partner re-evaluated their infrastructure strategy." *(beat)* Because the prosecutor's office understands "banned" literally, and "re-evaluated" — not at all.

SAUL GOODMAN enters in a suit the color of undercooked salmon, carrying a briefcase with a sticker: "I ❤️ NDA."

> **SAUL**
> Svetlana! The star! Tell me you didn't forward logs fabricated by our mutual friend in the glasses.

> **SVETA**
> I forwarded nothing. I forwarded a *link* to the logs. Those are different verbs.

> **SAUL**
> *(sits, puts his feet on the table)* You're a dangerous woman. I'd marry you, but I've already got three NDAs on that matter. *(turns serious)* Emil and Craze are out of a cloud, but not out of a lawyer. They'll sue for "unfair competition."

> **SVETA**
> Let them. Their `postinstall` has a curl to a sketchy server. That's not code. That's a signed confession in JSON.

> **SAUL**
> *(jabs a finger)* That's exactly why I love you. Cold, deliberate…

> **SVETA**
> …architectural compromise. Yes. I know.

Saul extends a hand. Sveta looks at it, then shakes it — with two fingers, the way you'd pick up someone else's mouse.

> **SVETA**
> This is an alliance. Not a friendship.

> **SAUL**
> In my business those are synonyms.

---

**INT. CYBERCRIME UNIT — DAY**

HANK at a desk buried in IT conference badges. Old, laminated, with frayed lanyards. He lays them out like a game of solitaire. GOMEY peers over his shoulder with two cups of coffee.

> **GOMEY**
> Hank, those are badges from 2008. Why do you have a museum of lanyards?

> **HANK**
> The "Context" repository. Core from 2008. Somebody wrote an engine that still powers half these vibe cartels. And that somebody went to conferences.

Hank holds a magnifier to the git history on screen. Commits. The author's email is redacted, but the domain shows.

> **HANK**
> Look. The indents. Two spaces everywhere. Never tabs. It's like handwriting, Gomey. Indentation is a fingerprint. A man can change his handle, but he won't change his formatting style. That runs deeper than a name.

> **GOMEY**
> And what does the indentation say?

> **HANK**
> That the author is a perfectionist who hates chaos. Taught. University, maybe. *(taps a badge)* Here. "V. B." Speaker, compilers track. The name's covered by a sponsor logo, but the initials…

He holds the badge to the light. Part of the name reads: "Valent… B…". The rest hidden under the logo of a long-dead startup.

> **HANK**
> "Valent." Something with a "B." Close, Gomey. I can feel him.

> **GOMEY**
> Half the "Valents" in the country are "Valentins." Narrow it.

> **HANK**
> *(stands, grabs his jacket)* I've got a lead. The speaker's former employer — a shop called "Flow." Still alive. Let's go shake their HR.

> **GOMEY**
> Right now? I have coffee.

> **HANK**
> The coffee will wait. The fingerprint won't.

---

**INT. FLOW OFFICE, RECEPTION — DAY**

Bely heads for the exit, laptop under his arm, typing something on the move. Through the glass doors on the other side enters HANK with Gomey, flashing his badge at the receptionist.

Bely looks up. Sees Hank. Freezes mid-step.

Hank — back turned to him, leaning toward the desk.

> **HANK**
> *(to the receptionist)* I need a list of your employees who've worked here since 2008. Especially anyone who knows a thing or two about compilers.

Bely slowly turns. Walks toward the side exit. Calm. Too calm.

> **RECEPTIONIST**
> We've got turnover. From the old days there's only one person left in the tech department…

Hank turns at the sound of a side door closing. He sees only a back in a beige blazer vanishing behind glass.

> **HANK**
> *(narrows his eyes)* …Who was that?

> **RECEPTIONIST**
> Who? Oh, our sysadmin. Quiet type. Valentin, I think.

Hank freezes. Something clicks behind his eyes. But he waves it off.

> **HANK**
> *(to himself)* Valentin… *(shakes his head)* Nah. A sysadmin at Flow? This guy's a genius who wrote a core engine. Sysadmins don't write core engines.

He turns back to the desk. Beyond the glass, Bely is already getting into his car, hands trembling on the wheel.

---

**INT. JESS'S APARTMENT — EVENING**

A mess. Energy drinks. Three monitors, an IDE on each. Jess is wired, typing feverishly. On screen — a product that isn't in the Flow registry. It's called "WoofMatch."

> **JESS**
> *(to himself)* Bely killed the launch. "Too risky, Jess. No DB schema, Jess." *(mimics)* Well, I'll just ship it. Pure vibe. No schema. The agent will figure it out.

He scrolls the generated code. Doesn't read it. Nobody reads it.

> **JESS**
> Login, signup, tokens… yeah-yeah-yeah, deploy.

The camera pushes in on the screen. In the auth function — a line Jess scrolls past without a glance:

```js
console.log({ user, token, env })
```

The cursor glides past. Jess yawns.

> **JESS**
> Who even reads diffs. It's green. Green means it works.

He hits Deploy. A progress bar. A green checkmark.

> **JESS**
> *(leans back in his chair)* They'll remember me. Not Bely. Me.

On screen — `Deployment successful`. And somewhere in the log stream, unread by anyone, `user`, `token`, `env` flow calmly. Every second. Into an open log.

The camera holds on the line a beat longer than it should. Jess doesn't see it.

---

**INT. FLOW OFFICE, OPEN PLAN — NIGHT**

Bely alone. Monitor light on his face. A dashboard is open. He's watching the "TinderForDogs" rollback. And suddenly he notices a foreign project in the sidebar. "WoofMatch." Not his.

> **BELY**
> *(reads)* Twelve thousand users. In four hours. No advertising. *(frowns)* This isn't an attack. The curve is jagged. This is… real people.

He opens the deploy author. "jess_thekid".

> **BELY**
> *(quietly, dangerously)* Jess. What did you do.

Bely's phone rings. The screen: "MIKE." Bely answers.

> **MIKE**
> *(voice)* Valentin. A friendly tip, for which I bill the hour in advance. Gus just asked me for an address. Not yours. *(beat)* The kid's address.

> **BELY**
> What kid.

> **MIKE**
> The one whose product blew up today. Gus noticed the numbers. Gus always notices the numbers. *(beat)* He wants to meet him. One on one. Without you.

Bely slowly rises. Behind him, on the wall screen — two graphs. The falling one — "TinderForDogs." And the rising one, like a rocket — "WoofMatch."

> **BELY**
> Gus doesn't invite people. Gus… absorbs them.

> **MIKE**
> That's exactly why I'm calling. Consider the clock already running. *(hangs up)*

Bely stares at the rising graph. Then at the author line: "jess_thekid". His jaw tightens.

> **BELY**
> *(whispering)* Say my namespace, Jess. *(beat)* …You don't even know what it is.

Monitor light. Somewhere in the WoofMatch logs, unnoticed, `token` keeps flowing.

**END OF EPISODE.**

---

*Next episode:* "Chekhov's console.log" — The logger Jess forgot has spent four days leaking every token, key, and session into an open log that someone has finally read. Gus meets with Jess. Hank returns to Flow with an employee list. And in the basement, Emil and Craze — out of a cloud but not out of spite — find something very interesting in WoofMatch's public logs.
