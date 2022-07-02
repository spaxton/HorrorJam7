VAR trust = 5

-> story_select

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

TW: Gore, Animal Cruelty
Time: 10 Minutes
    + Play
    -> intro
    + Back
    -> story_select

=== intro ===
Cassie is a bad dog.

Cassie loves living in the woods, and people love it too because Cassie is a bad dog. She barks at children and scares them. She steals food from picnic tables. Cassie poops wherever she wants because Cassie is a bad dog.

+ [Continue]

- Cassie catches the scent of dried meat, sweat, and stale beer. Campers. She lopes along finding signs like broken glass, broken branches, and candy wrappers. 

Cassie eats a candy wrapper and savors the salty plastic, then she throws it up. Her stomach growls. 

Meet some campers

+ [Continue]

- Cassie gets the campers to trust her
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