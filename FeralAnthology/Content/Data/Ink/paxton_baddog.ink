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

CW: Gore, Animal Cruelty
Time: 10 Minutes

-> DONE

=== intro ===
Cassie is a bad dog.

Cassie loves living in the woods and doing things only bad dogs get to do. She barks at children. She steals from picnics. Cassie poops wherever she wants because Cassie is a bad dog.

+ [Continue]

- One day, as Cassie is playing in leaves, she catches the scent of dried meat, sweat, and stale beer. Campers. She lopes along finding signs like broken glass, broken branches, and candy wrappers. 

Cassie eats a candy wrapper and savors the salty plastic, then she throws it up. Her stomach growls. It reminds Cassie of where she used to live: in the dark, hungry, on a chain. But now she lives in the woods, and no one hits her.

+ (greet)[Go say hello]
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
Your trust level is {trust}.

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
+ {trust >= 10} Steal the hotdog
    ~trust = 0
    Your trust level is {trust}.
    
    
    Cassie runs away with the hotdog because Cassie is a bad dog! <>

- Cassie loves being a bad dog.

+ [Continue]
    >>>hide_trust()
    ->development

=== development ===

Cassie finds a weird, deformed animal corpse

+ [Continue]

- Cassie sees a fucked up alien doing some fucked up shit to a human hiker, their dog is trying desperately to get away  but is stuck on the leash. (opportunity for death 1: trapped)

+ [Continue]

- Cassie follows the scent of the alien, going back to where it crash landed from - and the campers are there to. They notice Cassie and are pissed off at her.

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