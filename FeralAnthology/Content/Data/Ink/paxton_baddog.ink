VAR trust = 5
VAR trapped_survive = false
VAR egg_survive = false
VAR foxhunt_survive = false

-> intro

=== description ===
Title: Bad Dog
Author: Seth Paxton

Description: A wild dog in the woods runs across a group of ill-fated campers.

CW: Language, Gore, Animal Cruelty
Time: 10 Minutes

-> DONE

=== intro ===
Cassie is a bad dog.

Cassie loves living in the woods and doing things only bad dogs get to do. She barks at children. She steals from picnics. Cassie poops wherever she wants because Cassie is a bad dog.

+ [Continue]

- One morning, as Cassie is playing in leaves, she catches the scent of dried meat, sweat, and stale beer. Campers. She lopes along finding signs like broken glass, broken branches, and candy wrappers. 

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

Cassie will have to <>

+ get creative.
>>>show_trust()
-> learn_trust

= learn_trust
//Your trust level is {trust}.
{The two humans watch Cassie closely.|}{trust == 10: "Just look at her, she's hungry." The face-hair human sighs when the blue human says this, and reveals his stash of bag meat. It takes out a small piece and crouches down.}

* {trust < 10}Gain trust 1
    ~trust ++
    -> learn_trust
* {trust < 10}Gain trust 2
    ~trust += 2
    -> learn_trust
* {trust < 10}Gain trust 3
    ~trust ++
    -> learn_trust
* {trust < 10}{CHOICE_COUNT() < 3} Gain trust 4
    ~trust += 3
    -> learn_trust
* {trust < 10}{CHOICE_COUNT() < 3} Gain trust 5
    ~trust += 5
    -> learn_trust
+ {trust >= 10} Take the meat
    ~trust = 0
    //Your trust level is {trust}.
    Suckers. Cassie doesn't bother with the tiny bite, instead she lunges for the whole bag of meat and runs!
    
    The face-hair human shouts. Cassie is reminded of all the mean things humans have called her; mongrel, animal, bitch, and she embraces them all. Cassie wolfs down the meat and licks her lips, savoring every second of it.

- Cassie loves being a bad dog.

+ [Continue]
    >>>hide_trust()
    ->development

=== development ===

Cassie's amazing morning has her feeling satisfied. These woods might as well belong to her. And all its meat (which she has buried in strategic locations that only sometimes get forgotten).

+ [Continue]

- As Cassie trots around her domain when something catches her nose that she has not smelled before.

+ \*Sniff*

- What IS that? There are stones and rotting fruit and those little bugs that don't taste good in the smell, but there are other things too: smoke, cow piss, and lightning.

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
    ->examine_body
    
* {TURNS_SINCE(->close) == 1}Smell the outside ins
    ->examine_body
    
* {TURNS_SINCE(->close) == 1}Look at the inside outs
    ->examine_body
    
* {TURNS_SINCE(->close) == 2}Taste the good meats
    ->examine_body
    
* {TURNS_SINCE(->close) == 2}Push the writhing bits
    ->examine_body
    
* {close}Find what did this

* {!close}Leave it alone
    Whatever did this to the deer it isn't worth Cassie's hard-earned breakfast to find out more. She picks a direction away from the closest pieces of thrown insides (a hunk of liver) and walks quickly.
    
    Cassie is reminded of the dogs that didn't do good at fighting. They would have their insides hanging out and blood spurting from their necks while Cassie listened and smelled from the dark room. Cassie hates the memory of the dark room.
    
    Before Cassie realizes it she's picked up the inside-out smell again, but this time it's fresher. Harsher. Something is making that smell right now.
    
    ++ Go and see
        -> backwards_intro
    
- (backwards_intro)

Cassie can hear the gurgling of a hiker whose insides are going out. Cassie cannot move as she sees something that is not a dog slurping out the hiker's blood and bits of bone.

The thing that is not a dog almost looks like a dog if you had never seen a dog before. Its tail is at its front and is doing the slurping. Its head is at its back and is growing new ears and more chunks get slurped. Its legs are only mostly on wrong and it forgot to put on its skin.

Cassie watches the backwards not-a-dog as its veins move bits, pumping blood and stuff that is not blood. Cassie is very glad she has skin. That's when she sees something else. Something attached to the hiker. Something that cannot get away on its own.

+ A dog

- It's a little dog, a good dog, a dog that is sad her owner is getting its insides slopped out. The good little dog is barking at the backwards not-dog. Maybe she doesn't realize that after the not-dog is done turning her owner inside out it will do the same to her.

~trust = 5
>>>show_trust()
->trapped

= trapped
{|The alien munches, the dog barks since it's stuck on the leash.|The alien slurps up insides, the hiker shoots it with a gun.|The dog puts itself in harms way, the alien pays it no mind as it kills the human.|The alien finhes off the human carcass and grows new legs.|->devotion}

* {trust < 10}Gain a little trust 1
    ~trust ++
    -> trapped
* {trust < 10}Lose trust
    ~trust -= 2
    -> trapped
* {trust < 10}{CHOICE_COUNT() < 2}Gain a little more trust
    ~trust ++
    -> trapped
* {trust < 10}{CHOICE_COUNT() < 2} Lose a lot of trust
    ~trust -= 3
    -> trapped
* {trust < 10}{CHOICE_COUNT() < 2} Gain trust again
    ~trust += 2
    -> trapped
+ (run) Tell her to run
    {trust >= 8: -> escape}
    The little dog refuses, it can't abandon its master.
    -> trapped
    
- (escape)
    ~trapped_survive = true
    The little dog gets away.
    
+ [Continue]
    >>>hide_trust()
    ->the_source
    
- (devotion)
    The little dog gets eaten.

+ [Continue]
    >>>hide_trust()
    ->the_source

- (the_source) Cassie follows the scent of the alien, going back to where it crash landed from - and the campers are there too. They notice Cassie and are pissed off at her.

+ [Continue]
    ->twist

=== twist ===
~trust = 0
>>>show_trust()
->egg

= egg
{The two humans make angry noises at Cassie.|The face-hair human picks up a chunk of meteor and throws it at Cassie.|The meteor smokes and shudders: something is inside|The two humans remain close to meteor, even as something oozes in the ground beneath it.|->idiocy}

* {trust < 10}Bark at them
    ~trust ++
    -> egg_trust_check ->
    -> egg
* {trust < 10}Growl at them
    ~trust += 2
    -> egg_trust_check ->
    -> egg
* {trust < 10}Whine at them
    ~trust ++
    -> egg_trust_check ->
    -> egg
* {trust < 10}{CHOICE_COUNT() < 3} Get between them and the egg
    ~trust -= 3
    -> egg_trust_check ->
    -> egg
* {trust < 10}{CHOICE_COUNT() < 3} Steal their stuff
    ~trust += 2
    -> egg_trust_check ->
    -> egg
    
= egg_trust_check
{trust:
    - 1:
    - 2:
    - 3:
    - 4:
    - 5: The blue human backs away, but the face-hair human continues to stay close.
    - 6:
    - 7: The yellow-brown human finally gets the message and backs away. The egg hatches and a baby alien crawls out. -> back_away
    - else: The humans want nothing to do with you.
}
->->

    
- (back_away)
    ~egg_survive = true
    The two humans step away from the hatching egg. The not-puppy inside cries out and its mother comes running.
    
+ [Continue]
    >>>hide_trust()
    ->foxhunt
    
- (idiocy)
    The face-beard human gets attacked by the not-puppy. The blue human screams as its friend's insides become outsides. Somewhere in the woods another scream responds: the not-puppy's mother is coming.

+ [Continue]
    >>>hide_trust()
    ->foxhunt

- (foxhunt) Cassie tries to warn them about the alien, but they keep running wildly through the woods and must trust her completely (opportunity for death 3: foxhunt)

+ [Continue]
->conclusion

=== conclusion ===

- Cassie reflects on her choices.

{foxhunt_survive: Cassie did a good thing keeping the blue human alive. It called Cassie a good dog.|Cassie feels a little bad that the blue human couldn't outrun the backwards dog.}
{egg_survive: Even The stupid human lived.|Probably nothing could have saved the stupid human.}
{trapped_survive: At least the little dog got away.|The good dog died, it was too attached to its owner.}

The alien is still alive and out there, somewhere. Cassie picks up a gun to go kill it, because Cassie is a bad dog.

THE END

-> END