VAR trust = 5

-> intro

=== story_select ===
Select a story to play.
+ Bad Dog
    -> description
+ A Different Story
    Invalid choice (no other stories found)
    
    ++ Okay
    -> story_select

=== description ===
Title: Bad Dog
Author: Seth Paxton

Description: A wild dog in the woods runs across a group of ill-fated campers.

CW: Gore, Animal Cruelty, Language
Time: 10 Minutes

-> DONE

=== intro ===
Cassie is a bad dog.

Cassie loves living in the woods and doing things only bad dogs get to do. She barks at children. She steals from picnics. Cassie poops wherever she wants because Cassie is a bad dog.

+ [Continue]

- One morning, as Cassie is playing in leaves, she catches the scent of dried meat, sweat, and stale beer. Campers. She lopes along finding signs like broken glass, broken branches, and candy wrappers. 

Cassie eats a candy wrapper and savors the salty plastic, then she throws it up. Her stomach growls. It reminds Cassie of where she used to live: in the dark, hungry, on a chain. But now she lives in the woods, and no one hits her.

+ (greet)[Go say hello]
    Cassie knows that no human can resist a cute dog. She sets her tail wagging and opens her mouth in that way gullible humans find endearing. When she gets close they both turn and look, one makes a cooing sound that means Cassie can do whatever she wants.
    
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

- {greet: }{sneak: Cassie takes the clever way, she avoids meat-hair-face and begins to walk ever closer to the blue human until it notices her arrival.}{wait: }

"Aww! <something something> dog! Isn't she just so cute? <something something> owner?" The blue human was a good choice: it doesn't know Cassie is a bad dog.

The yellow-brown human says it doesn't like Cassie. It jealously guards its meat. "<something something> wild. No collar <something something> leave it alone."

Cassie will have to <>

+ get creative.
>>>show_trust()

-(trust_loop)
//Your trust level is {trust}.
{The two humans watch Cassie closely.|}{trust == 10: "Just look at her, she's hungry." The face-hair human sighs when the blue human says this, and reveals his stash of bag meat. It takes out a small piece and crouches down.}

* {trust < 10}Gain trust 1
    ~trust ++
    -> trust_loop
* {trust < 10}Gain trust 2
    ~trust += 2
    -> trust_loop
* {trust < 10}Gain trust 3
    ~trust ++
    -> trust_loop
* {trust < 10}{CHOICE_COUNT() < 3} Gain trust 4
    ~trust += 3
    -> trust_loop
* {trust < 10}{CHOICE_COUNT() < 3} Gain trust 5
    ~trust += 5
    -> trust_loop
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

- (body_loop)

* {!close}Give it a sniff
    The stench is rancid and sticks to the inside of Cassie's nose like mud. Lightning, the little things that grow in piles of shit, old blood.
    
    Bag meat claws at Cassie's throat, begging to be set free, but she keeps it in her stomach for now.
    -> body_loop
    
* (close)Get closer
    ->body_loop
    
* (smell) {close}{!look}Smell the outside ins
    ->body_loop
    
* (look) {close}{!smell}Look at the inside outs
    ->body_loop
    
* (taste) {close}{smell or look}Taste the good meats
    ->body_loop
    
* (push) {close}{smell or look}Push the writhing bits
    ->body_loop
    
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

- (trapped_loop)
>>>show_trust()


sees a fucked up alien doing some fucked up shit to a human hiker, their dog is trying desperately to get away  but is stuck on the leash. (opportunity for death 1: trapped)

+ [Continue]

- Cassie follows the scent of the alien, going back to where it crash landed from - and the campers are there too. They notice Cassie and are pissed off at her.

+ [Continue]
    ->twist

=== twist ===

Cassie tries to warn them about the alien, but they just keep fucking with the meteor (opportunity for death 2: facehugger)

+ [Continue]

- Cassie tries to warn them about the alien, but they keep running wildly through the woods and must trust her completely (opportunity for death 3: foxhunt)

+ [Continue]
->conclusion

=== conclusion ===

- Cassie reflects on her choices and whether or not any of the campers survived the encounter. The alien is still alive and out there, somewhere. Cassie picks up a gun to go kill it, because Cassie is a bad dog.

THE END

-> END