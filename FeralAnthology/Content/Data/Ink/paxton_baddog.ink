VAR trust = 5
VAR trapped_survive = false
VAR egg_survive = false
VAR foxhunt_survive = false
VAR random_int = 0

-> intro

=== description ===
Title: Bad Dog
Author: Seth Paxton

Description: A wild dog in the woods runs across a group of ill-fated campers.

CW: Language, Gore, Animal Cruelty
Time: 10 Minutes

-> DONE

=== intro ===
>>>PlayMusic(baddog_main1)
>>>ResetCampfire()
Cassie is a bad dog.

Cassie loves living in the woods and doing things only bad dogs get to do. She barks at children. She steals from picnics. Cassie poops wherever she wants because Cassie is a bad dog.

+ [Continue]

- One morning, as Cassie is playing in leaves, she catches the scent of dried meat, sweat, and stale beer. Campers. She lopes along finding signs like broken glass, broken branches, and candy wrappers. 

>>>ChangeCampfire(Bright)

Cassie eats a candy wrapper and savors the salty plastic, then she throws it up. Her stomach growls. It reminds Cassie of where she used to live: in the dark, hungry, on a chain. But now she lives in the woods, and no one hits her.

+ (greet)[Go say hello]
    Cassie knows that no human can resist a cute dog. She sets her tail wagging and opens her mouth (gullible humans find this endearing). When she gets close they both turn and look, one makes a cooing sound that means Cassie can do whatever she wants.
    
    ++ [Continue]
    -- 
+ (sneak)[Sneak up behind the campers]
    Of course Cassie doesn't run right up to the campers, only good dogs trust humans. She slips behind them (which is easy, humans cannot smell and their sight is limited to only a few feet in front of them) and sees what they're about.
    
    ++ [Continue]
    -- 
+ (wait)[Get ahead of the campers and wait]

- There are two campers, one in blue and one in yellow-brown, and they both smell like sweat and beer. The yellow-brown one has hair on its face (not all humans have this) which carries the sweet smell of meat.
    
    Cassie begins to plan. A{greet:n adorable}{sneak: sneaky}{wait: patient}, devious plan. 

+ [Get that meat]

- {greet: Cassie pretends to be a good dog. She sits. She looks friendly. She makes sure the blue human can see what a good dog she is.}{sneak: Cassie takes the clever way, she avoids meat-hair-face and begins to walk ever closer to the blue human until it notices her arrival.}{wait: }

"Aww! <something something> dog! Isn't she just so cute? <something something> owner?" The blue human was a good choice: it doesn't know Cassie is a bad dog.

The yellow-brown human says it doesn't like Cassie. It jealously guards its meat. "<something something> wild. No collar <something something> leave it alone."

Cassie will have to...

+ get creative.
>>>show_trust()
-> learn_trust

= learn_trust
//Your trust level is {trust}.
{The two humans watch Cassie closely.|}{trust == 10: "Just look at her, she's hungry." The face-hair human sighs when the blue human says this, and reveals his stash of bag meat. It takes out a small piece and crouches down.}

* {trust < 10}[Flop ears from side to side]
    ~trust ++
    Cassie tilts her head one way and then another. "Aww, she's <something something> such a cute puppers. <something something>!"
    
    The yellow-brown human with the hair-face isn't as easy to impress. It says nothing.
    -> learn_trust
* {trust < 10}[Lay down]
    ~trust += 2
    //TODO: Flesh
    -> learn_trust
* {trust < 10}[Circle the humans]
    ~trust ++
    Cassie needs to know every angle before she strikes. Her tail keeps wagging (she can smell the meat) but the yellow-brown human with the hair-face can tell she's plotting.
    
    "See? <something something>." The blue human disagrees with it. "You <something something> alone in the woods."
    -> learn_trust
//* Bark at them
* {trust < 10}{CHOICE_COUNT() < 3}[Roll on the ground]
    ~trust += 3
    Cassie feins trust by rubbing her back into the fallen leaves. Both humans look at her with faces that say "I like you," and "I will not hurt you." 
    -> learn_trust
* {trust < 10}{CHOICE_COUNT() < 3}[Make sad eyes]
    ~trust += 5
    //TODO: Flesh - Beg
    -> learn_trust
+ {trust >= 10} Take the meat
    >>>PlayMusic(baddog_main2)
    ~trust = 0
    //Your trust level is {trust}.
    Suckers. Cassie doesn't bother with the tiny bite, instead she lunges for the whole bag of meat and runs!
    
    The face-hair human shouts. Cassie is reminded of all the mean things humans have called her; mongrel, animal, bitch, and she embraces them all. Cassie wolfs down the meat and licks her lips, savoring every second of it.

- Cassie loves being a bad dog.

+ [Continue]
    >>>hide_trust()
    ->development

=== development ===
>>>ChangeCampfire(Sky)
Cassie's amazing morning has her feeling satisfied. These woods might as well belong to her. And all its meat (which she has buried in strategic locations that only sometimes get forgotten).

+ [Continue]

- As Cassie trots around her domain something catches her nose that she has not smelled before.

+ \*Sniff*

- What IS that? She smells stone dust and rotting fruit and those little bugs that don't taste good, but there are other things too: smoke, cow piss, and lightning.

It's like nothing Cassie has ever smelled before - and it's RIGHT in the middle of HER woods. The scent isn't hard to pin down. After a while she sees the source.

+ A deer carcass.

Cassie doesn't have to get close to know it's disgusting. Dead bodies usually are. But this one is EXTRA gross. Whoever killed this deer barely ate its legs (the best part) and flung the insides all over (disrespectful).

It's smoking with a faint, lilac shimmer in the air that Cassie has never seen. She feels like she's going to throw up, but she is curious.
->examine_body

= examine_body

* {!close}Give it a sniff
    The stench is rancid and sticks to the inside of Cassie's nose like mud. Lightning, the little things that grow in piles of shit, old blood.
    
    Bag meat claws at Cassie's throat, begging to be set free, but she keeps it in her stomach for now.
    -> examine_body
    
* (close)Get closer
    >>>ChangeCampfire(Lime)
    Every paw forward makes Cassie's fur shudder. Waves of sick heat pulse from the body. Something ripped into the deer. Cassie passes a piece of inside that would be eaten by crows by now if the smell wasn't so wrong.
    
    Cassie notices there aren't any birds here. No bugs. The body is alone. Except for Cassie, who can now see that something was put into the deer's dead body.
    ->examine_body
    
* {TURNS_SINCE(->close) == 0}Smell the outside ins
    Cassie can't even prepare herself for the smell before her hard-earned breakfast pushes up of its own free will. The smell of dried meat vomit mingles with the lightning/dust/wrong eggs smell coming out of the carcass.
    
    Cassie blinks away tears as she looks closer at the hole. It's not a bite, the would looks like something sucked the deer from a single tooth the size of Cassie's head. Things wriggle inside the deflated meat.
    ->examine_body
    
* {TURNS_SINCE(->close) == 0}Look at the inside outs
    //TODO: Flesh
    ->examine_body
    
* {TURNS_SINCE(->close) == 1}Taste the good meats
    //TODO: Flesh
    ->examine_body
    
* {TURNS_SINCE(->close) == 1}Push the writhing bits
    //TODO: Flesh
    ->examine_body
    
* {close}Find what did this
    This is wrong. Cassie has seen a lot of wrong things so she knows the difference between bad and wrong. Cassie is reminded of her owner. A fat, evil human who loved to hear dogs yelp in pain. Wrong.
    
    Cassie couldn't let that go on. It wasn't just her that yelped in the dark. She remembers the taste of neck blood and the yelp humans make in pain. Bad dogs can make wrong things go away. Cassie is a bad dog.
    
    She sniffs and finds the same inside-out smell carried by the wind. 

    ++ Follow it, wherever it leads
        >>>ChangeCampfire(Sky)
        ->backwards_intro

* {!close}Leave it alone
    Whatever to the deer it isn't worth Cassie's hard-earned breakfast to find out more. She picks a direction away from the closest pieces of thrown insides (a chunk of liver) and trots quickly.
    
    Cassie is reminded of the dogs that didn't do good at fighting. They would have their insides hanging out and blood spurting from their necks while Cassie listened and smelled from the dark room. Cassie hates the memory of the dark room.
    
    Before Cassie realizes it she's picked up the inside-out smell again, but this time it's fresher. Harsher. Something is making that smell right now.
    
    ++ Go and see
        -> backwards_intro
    
- (backwards_intro)
>>>PlayMusic(baddog_alien)
>>>ChangeCampfire(Alien)
Cassie can hear the gurgling of a hiker whose insides are going out. Cassie cannot move as she sees something that is not a dog slurping out the hiker's blood and bits of bone.

The thing that is not a dog almost looks like a dog if you had never seen a dog before. Its tail is at its front and is doing the slurping. Its head is at its back and is growing new ears as more chunks get slurped. Its legs are only mostly on wrong and it forgot to put on its skin.

Cassie watches the backwards not-a-dog as its veins pump blood and stuff that is not blood. Cassie is very glad she has skin. That's when she sees something else. Something attached to the hiker. Something that cannot get away on its own.

+ A dog

- It's a little dog, a good dog, a dog that is sad his owner is getting its insides slopped out. The good little dog is barking at the backwards not-dog. Maybe she doesn't realize that after the not-dog is done turning his owner inside out it will do the same to him.

~trust = 5
>>>show_trust()
->trapped

= trapped
{The backwards not-dog has its tail stuck deep into the human's chest, filling it with something foul as it sucks out the insides. The little dog barks, his leash still clinging to his owner.|The human flails, somehow still alive as its insides are sucked out. It pulls out a thing Cassie knows is called a 'gun' the backwards dog doesn't stop. Thunder splits the air and one of the backwards dog's legs flies off. It pulls its sucking tail out of the human's chest and sticks it into the throat. The human stops flailing.|The little dog barks his head off. He lunges and bites at the muscle and veins that the backwards dog has where skin should be. Sickly fluid pours out instead of blood and the little dog backs away in fear and disgust. The backwards dog doesn't take its tail out of the human's throat.|Cassie retreats as the backwards dog takes its tail out of the human's throat. Its head is swolen with new flesh. Ears grow bones and veins split to fuel sticky birthed limbs. A third pair of legs unfolds as the backwards dog gets longer, and its tail tastes the air for more meat to add to itself.|->devotion}

* {trust < 10}Bark fear into the little dog
    ~trust ++
    The little dog doesn't know what to do. It's angry that its owner is being turned inside out. It wants to attack, it wants to find justice, but Cassie knows that isn't going to work.
    
    One loud bark is enough to get the little dog's attention. He is snapped out of his rage for a moment, but only a moment.
    -> trapped
* {trust < 10}Pull out the little dog's leash
    ~trust -= 2
    Cassie knew that once the little dog could see it was no longer physically bound to its owner it would save itself. She ran at the little dog, grabbed its leash, and pulled.
    
    The little dog was pissed. He snapped, taking skin from Cassie's side as she dropped the leash. The dog wouldn't budge.
    -> trapped
* {trust < 10}{CHOICE_COUNT() < 2}Intimidate the backwards dog
    ~trust +=2
    //TODO: Flesh
    -> trapped
* {trust < 10}{CHOICE_COUNT() < 2} Try to pull the human away
    ~trust += 2
    //TODO: Flesh
    -> trapped
* {trust < 10}{CHOICE_COUNT() < 2} Drag the little dog away
    ~trust -= 3
    //TODO: Flesh
    -> trapped
+ (run) [Tell her to run]
    {trust >= 7: -> escape}
    {~Cassie barks warning. "Run" she says, "you are in danger."|Cassie growls, "Go! Leave!"|Cassie stomps the ground, low, "Shoo!"|Cassie whines, laments, mourns the little dog's fate. If only it would leave.} The little dog refuses, it can't abandon its master. {|Not yet.|He's too good of a dog.|}
    -> trapped
    
- (escape)
    ~trapped_survive = true
    >>>hide_trust()
    The little dog gets away.
    //TODO: Flesh
    
+ [Continue]
    ->the_source
    
- (devotion)
    >>>hide_trust()
    >>>ChangeCampfire(Bloody)
    The backwards dog points its tail at the little dog, still barking next to its owner's carcass now empty. Cassie backs away as the little dog lunges. His muzzle is pierced by the backwards dog's tail and the rancid sucking begins again.
    
    Cassie knows it will not take long for the little dog's insides to fall out. She runs. Cassie chases the scent that the backwards dog left, it would not retrace its steps searching for meat. She runs <>

+ to where it came from.
    >>>PlayMusic(baddog_main2)
    >>>ChangeCampfire(Dusk)
    ->the_source

- (the_source) The backwards dog's scent fades as Cassie follows it wrong. It isn't hard to backtrack: broken branches, puddles of backwards piss, carcasses. Cassie remembers her owner's pack: foul humans who liked to hurt dogs. She remembers them scouring these woods for the dogs she was caged with. It isn't hard to backtrack. To play keep away.

    Now, just like then, Cassie doesn't stop until the trail fades to nothing. Except it's not exactly nothing. Cassie sniffs carefully and is sure that she has gone away from the backwards dog... but there's more of that lightning/rotting fruit/cow piss smell. 
    
+ Another carcass?

- No, this isn't exactly the bile that the backwards dog leaves behind. Wary of losing her way in the fading light Cassie breathes deep: stone dust and ashes... sweat and the things that grow in shit... dried meat and old beer.

+ Campers.
    ->twist

=== twist ===
Cassie picks over the new hill of dirt and looks down into a large, circular ditch that wasn't there before. It reeks of backwards, and in the middle are a bunch of foul rocks and two stupid humans.

They recognize Cassie, silhouetted at the top of the ditch by the setting sun. "That bitch took my jerky!" One shouts. They can't smell that the rocks are wrong.

+ They don't know about the backwards dog.
-
~trust = 0
>>>show_trust()
->egg

= egg
{|The humans are practically ignoring Cassie. They can't smell the wrongness so they get closer. One of the rocks has the same lilac shimmer Cassie saw above the deer corpse.|The humans notice Cassie getting closer. The yellow-brown human picks up one of the foul rocks and hurls it at her. It doesn't notice that the rock is slick with the backwards dog's not-blood.|Cassie sees the big rock breathe. The human's don't notice the rock exhaling fetid fumes. Something is inside.|Cassie has the human's attention when the big rock splits. Ooze pours out and something writhes right beneath their noses.|->idiocy}
{| |>>>ChangeCampfire(Night)|}
* Bark at them
    ~trust += 2
    Cassie lets out several warning barks. "Stop! Danger!" But stupid humans don't learn any other languages. They keep going deeper into the circular ditch, closer to the wrong rocks that smell like lightning and rotting fruit.
    
    Before the yellow-brown human can touch one Cassie barks with FORCE and he recoils in surprise. <>
    -> egg_trust_check ->
    -> egg
* Growl at them
    ~trust --
    Cassie takes a couple careful steps into the circular ditch. She growls at the humans as they approach the rocks in the middle. "Oh yeah? Fuck you! These aren't <something something>!"
    
    The human with hair on its face thinks Cassie is being territorial. It's not wrong, but it is stupid. <>
    -> egg_trust_check ->
    -> egg
* Whine at them
    ~trust ++
    Cassie paws the ground and feels the wrongness that soaks the dirt. Oil and shit and tingling. "Oh don't give me that." The yellow-brown human dislikes Cassie's deference. Cassie hates it.
    -> egg_trust_check ->
    -> egg
* {CHOICE_COUNT() < 3} Get between them and the egg
    ~trust += 2
    Cassie sprints down to the bottom of the ditch. The rancid smell burns her eyes and she knows the rocks are just as backwards as the thing that is not a dog, but she places herself in harms way anyway.
    
    "What the fuck!?" The humans jump back, but they don't go far. Cassie hopes they understand. <>
    -> egg_trust_check ->
    -> egg
* {CHOICE_COUNT() < 3} Steal their stuff
    ~trust -= 2
    //TODO: Flesh
    -> egg_trust_check ->
    -> egg
    
= egg_trust_check
{trust:
    - 1:{~"What is that dog doing?"|"Why does that dog <something>?"|"Where did that dog <something something>?"}
    - 2:{~"This is weird..." Cassie knows those words. Weird is bad.|"What on earth..." confusion is a start.}
    - 3:
    - 4:"<something something> that dog is trying <something something>?" The blue human is paying more attention to Cassie.
    - 5:The blue human starts to step away from the rocks, but the face-hair human stays right in the middle.
    - 6:"Vance{|, really}... <something something> wrong{ here|}." The stupid human with its stupid hair-face doesn't believe its human friend.
    - 7:The yellow-brown human finally gets the message and backs away. The egg hatches and a baby alien crawls out. -> back_away
    - else: The humans {|still }want nothing to do with Cassie.
}
->->

    
- (back_away)
    ~egg_survive = true
    >>>PlayMusic(baddog_alien)
    The two humans step away from the hatching egg. The not-puppy inside cries out and its mother comes running.
    
+ [Continue]
    >>>hide_trust()
    ->foxhunt
    
- (idiocy)
    >>>PlayMusic(baddog_alien)
    >>>ChangeCampfire(Bloody)
    There's nothing more Cassie can do. Except leave. "Dumb dog, probably <something something something>." The hair-face human leans back on the big rock triumphantly, the putrid soil gives under the weight. The rock breaks and something that is not a puppy is pushed out.
    
    Cassie sees the not-blood on the human's paw. "What the fuck--" The blue human screams as the not-puppy impales its tail-face into the stupid human's leg. The stupid-face-hair human crumples with pain, then goes still.
    
+ Back up further
    
    The backwards puppy inflates with blood, gorging itself on bits of stupid. Cassie watches the blue human kick at the backwards puppy, ripping its tail from the leg and squeezing out a shrill scream. Another wrong scream perforates the air in reply.
    
    "Oh god-" the blue human is shocked still, "what was THAT?" Cassie knows. The backwards mother is coming for her child.
    
    ++ Run
    >>>show_trust()
    ->foxhunt

+ [Continue]
    >>>hide_trust()
    The {egg_survive:two humans run away together|blue human runs away on its own}. Cassie runs too. Cassie is much faster than humans, it would be easy for her to leave {egg_survive:them|it} to the backwards dog and keep going. 
    
    Cassie remembers running through these woods, pursued by mean humans with chains and sticks. But Cassie isn't afraid of these humans. Not now. They are weak, pathetic things running for their lives from something they don't understand.
    
    ++ The hunt is on
    ~ trust += 2
    >>>show_trust()
    ->foxhunt

= foxhunt
~ random()
{The woods are dark and humans can't navigate by smell. Cassie can hear the backwards dog speeding over roots on too many legs.|The human trips on a fallen branch. It curses and the backwards dog whistles in excitement.|Moonlight struggles to push through the clouds and leaves. Cassie can smell the lightning and rot that drips from the backwards dog.|"Oh shit! Oh fuck!" Now the human can see the backwards dog. Its long tail coming out the front and pointing right at its fleshy prey.|->got_caught|"Oh God, Vance!" The blue human is losing speed. It doesn't realize that the backwards dog is already back on the move. About to pounce.| ->got_caught}
{|>>>ChangeCampfire(Alien)|>>>PlayMusic(baddog_terror)|}

* {random_int == 0}Zigzag
    ~trust ++
    Cassie whips back and forth, widening her scent trail and making her path harder to follow. The blue human sees what she is doing and follows suit.
    
    {foxhunt:
        - 1: Far behind them
        - 2: Past tree cover
        - 3: Closing in
        - else: Just behind them
    } the backwards dog slows, becoming unsure of its path.
    -> foxhunt
* {random_int == 0}Go fast
    ~trust += 2
    -> foxhunt
* {random_int == 0}Nip at {egg_survive:their|its} heels
    ~trust -= 2
    -> foxhunt
* {random_int == 0}{egg_survive}Get them to split up
    ~trust -= 5
    The face-beard human is slower, the alien can feel it and runs down the easy prey. The blue human screams with the other one even as it runs faster.
    -> foxhunt
* {random_int == 1}Serpentine
    ~trust ++
    -> foxhunt
* {random_int == 1}Create a distraction
    ~trust -= 3
    -> foxhunt
* {random_int == 2}Jump wildly
    ~trust ++
    -> foxhunt
* {random_int == 2}{trust >= 10}Head for the light
    ~trust ++
    -> got_away

    
- (got_away)
    >>>PlayMusic(baddog_alien)
    ~foxhunt_survive = true
    {egg_survive: Both humans survive.|The blue human makes it out alive.}
    
+ [Continue]
    >>>hide_trust()
    ->conclusion
    
- (got_caught)
    >>>ChangeCampfire(Bloody)
    {egg_survive: The face-hair human gets caught. But the backwards dog doesn't slow down, it breaks the human's spine, pulls out a few insides, and keeps coming for the blue human. It must know her scent was close to its pup. ->foxhunt}
    >>>PlayMusic(baddog_alien)
    Both humans get eaten by the backwards dog.

+ [Continue]
    >>>hide_trust()
    ->conclusion

+ [Continue]
->conclusion

=== function random() ===
~random_int = RANDOM(0,2)

=== conclusion ===
>>>PlayMusic(baddog_main2)
>>>ChangeCampfire(Night)
- Cassie reflects on her choices.

{foxhunt_survive: Cassie did a good thing keeping the blue human alive. It called Cassie a good dog.|Cassie feels a little bad that the blue human couldn't outrun the backwards dog.}
{egg_survive: Even The stupid human lived.|Probably nothing could have saved the stupid human.}
{trapped_survive: At least the little dog got away.|The good dog died, it was too attached to its owner.}

The alien is still alive and out there, somewhere. Cassie picks up a gun to go kill it, because Cassie is a bad dog.

THE END

-> END