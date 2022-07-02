
-> title
=== title ===
<h3>Two Rings<h3>
A Horror Tale by Jeff Harman

+ Start
->opening

=== opening ===

- It was a romantic summer night with a full moon. Smoke rose from the chimney of a small cabin in the woods.

The hero of our story, let's call him Ron, sat by the wood fire with his lovely wife, Natalie. They wed only five months ago.

+[Continue]
- "It's so lovely out here. The full moon especially." Natalie stated wistfully.
"Best with you, hon." Ron replied.
"Aw, you're too much."
She fiddles with her wedding ring.

+[Continue]
- A scream sounded out, clearly human but from far away outside.
"What was that?" Natalie asked, fear in her voice. 
"Probably just some stupid teenagers pulling pranks on us." Ron replied.

Natalie stood up, rushed to the cabin door.

+[Follow Natalie]
    -> outside_scream

=== outside_scream ===

- Ron followed his wife outside. The forest was dead still.
"I told you, it's nothing."
Natalie looked into his eyes.
"I don't think so," she asserted.

Another scream, louder, to the east.

"That came from the next cabin!" Natalie interjected.
"You don't know that."

Natalie runs inside, immediately returns with her coat.
"Where are you going?" Ron asked, realizing what she intended to do.
"If they are in trouble, I can't live with doing nothing."

*   [Ask Natalie to stay] -> response_1
*   [Encourage investigation] -> response_2

=== response_1 ===

Natalie frowned, "Ron, I need to do this. I'll be back."
    -> Later_that_night

=== response_2 ===

"We'll see what happens." Natalie responded.
    -> Later_that_night
    
=== Later_that_night ===

- Ron sipped some wine. He assumed an hour of time had gone by.
"She must be on her way back. Let me check my phone."
Ron searches the cabin for his phone, can't find it.
A howl. Clearly a wolf, but something wasn't right.
Ron realized he had to investigate.

*   (machete) Pick up a machete
*   (axe) Pick up an axe
*   (sledgehammer) Pick up a sledgehammer

- Ron ventured outside, trudged cautiously down the trail.
The moon was high above.

+[Continue down the trail]

- Ron realized he must've been close to the nearby cabin.
RAWR!
A wolf-beast, standing on two legs, leapt out of the trees.
Ron raised his {Later_that_night.machete: machete}{Later_that_night.axe: axe}{Later_that_night.sledgehammer: sledgehammer}, but the beast knocked him off his feet!
The beast leered at him, noticed the wedding ring. It sniffed at the ring.

Ron grabbed the weapon, swung at the beast, landed a hit.
It howled at the moon!

+[Run away]
    -> Back_at_the_cabin
    
=== Back_at_the_cabin ===

- The werebeast was hot on his trail.
Ron made it back to the cabin, slammed the door shut. 

*   (chair) Barricade_the_door
*   (bed) Barricade_the_door

- Ron barricaded the door with {chair: chair}{bed: bed}, but he knew it wouldn't hold forever. Whatever that creature was, it had strength.
In the meantime, Ron found a first aid kit and patched himself up. The creature snarled outside.
RING!
Ron's cellphone!
Ron found it under a pillow, answered it.
    -> Answer_the_phone

=== Answer_the_phone===

- "Is this Ron?" The man on the other end asked.
"Yes! Please, I need help, some creature attacked me and my wife is missing!"
"This is the ranger service. We got a call from a neighboring cabin an hour ago, we'll send someone to help."
"Thank you!"
SMASH!
The werewolf's long arm smashed through the small front window, right over the stove.
    -> Repelling_the_wolf
    
=== Repelling_the_wolf ===

- Ron had two choices:

*   [Turn on the stove] -> The_wolf_retreats
*   [Attack] -> The_wolf_retreats

=== The_wolf_retreats ===

- The beast howled into the night as it vanished.
Ron panted, sat on the floor. He wasn't sure how much longer he could last.
He crawled over to the chairs he and his wife sat in earlier that night. He wondered where she was, if she was safe.
He had no idea how much time had passed.
    -> The_wolf_beneath
    
=== The_wolf_beneath ===

- THUD! THUD!
Where was the sound coming from?
Ron gazed down at the floorboards in front of him as a board thumped.
The howl of the beast was beneath him as well.
Ron ran to the barricaded door.
A floorboard was upended, the arm of the beast shot up through the opening.
Ron rushed to the blocked door, cleared the {Back_at_the_cabin.chair: chair}{Back_at_the_cabin.bed: bed} as the werewolf destroyed more floorboards.
    -> Trap_time
    
=== Trap_time ===

- Ron scrambles out of the cabin, slams the door shut.
The beast HOWLS!
Ron backed up, noticed something under the porch.
A beartrap, rusty and potent.
Ron grabs the trap.

*   [Set the trap on the porch] -> The_wolf_is_trapped
*   [Set the trap by the crawlspace] -> The_wolf_is_trapped_two

=== The_wolf_is_trapped ===

- Ron spread the trap wide on the porch.
He backed up, hefted the {Later_that_night.machete: machete}{Later_that_night.axe: axe}.
The door crumpled, and the beast landed in the trap.
It HOWLED, as if it knew the chase was up.
And Ron knew this to be true.

    *   [Hack the creature to death] -> The_wolf_dies_one
    *   [Let it bleed] -> The_wolf_dies_two

=== The_wolf_is_trapped_two ===

- Ron spread the trap wide by the crawlspace.
He backed up, hefted the {Later_that_night.machete: machete}{Later_that_night.axe: axe}.
The beast crawled out from the crawlspace, right into the trap.
It HOWLED, as if it knew the chase was up.
And Ron knew this to be true.

*   [Hack the creature to death] -> The_wolf_dies_one
*   [Let it bleed] -> The_wolf_dies_two

=== The_wolf_dies_one ===

- Finally, the ordeal was over.
Ron threw the {Later_that_night.machete: machete}{Later_that_night.axe: axe} away, almost smiled at what he had accomplished.
Then something started to happen.
The creature's remains morphed, changed. It shrunk, shed its fur.
And in seconds, what was once a beast was now Ron's wife Natalie, still bloodied and gored, and very much dead.
Ron fell to his knees.
"Ron? Are you Ron?"
Ron turned to the dirt road leading away from the cabin.
A forest ranger stood in front of a truck, hand on their holstered gun.
The ranger saw Natalie's remains.
"What have you done?"
    ->END

=== The_wolf_dies_two ===

- The death came slowly. 
Ron sat there, stared transfixed at the beast for minutes.
Finally, the beast expired.
Ron sighed, for he was finally safe.
Then something started to happen.
The creature's remains morphed, changed. It shrunk, shed its fur.
And in seconds, what was once a beast was now Ron's wife Natalie, having bled out from the trap.
Ron's jaw dropped.
"Ron? Are you Ron?"
Ron turned to the dirt road leading away from the cabin.
A forest ranger stood in front of a truck, hand on their holstered gun.
The ranger saw Natalie's remains. 
"What have you done?"
    ->END

