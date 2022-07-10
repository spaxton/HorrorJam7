VAR has_hotdog = false
VAR hotdogs_failed = 0

-> title
=== title ===
<b>Where for art thou, Scooby Doo?</b>
<i>A silly interactive fanfiction by Seth Paxton</i>

+ Start
    ->opening
/*
+ Start from the pool
    ->pool
*/

=== opening ===

- The Mystery Machine pulls up to a creepy villa in Verona. Daphne looks excited, "A free trip to Italy! Can you believe our luck?"

Scooby pants and stares worriedly at the rickety building as Shaggy reads from a travel brochure. "Color TV, swimming pool... free breakfast buffet! We really <i>are</i> in luck, Scoob!" A board falls off the exterior of the villa.

"Okay gang... <>

* Let's split up and look for clues!"
    "Look for clues??" All but Fred echo.
    
    "Sorry, force of habit, I meant check in to our rooms."
    
    "Don't scare me like that, Fred!" Shaggy slumps back in relief and Scooby nods.
    
* Who wants to jump right into that pool?"
    "No can do: it's locked up tight." Velma points out the thick, iron gate all around the villa. "We'll have to check in with the front desk."
    
    "On it!" Daphne shouts as she goes through the gate in a giddy run.
    
    "I guess that means <i>we're</i> stuck with the luggage." Shaggy opens up the back of the Mystery Machine and Daphne's mountain of luggage wobbles.
    
* How did we win the trip again?
    Scooby points to himself proudly. Shaggy says, "We ate, like, 4,000 boxes of Scooby Snax, so they sent us a prize!"

- The gang approaches the front desk, Daphne is speaking with the clerk who hands her a key ring with a creepy smile. "Do enjoy your stay, honored guests." Daphne seems not to notice his creepy laugh.

- (desk_choices)
    * (know_pool_location) "Which key is to the pool?"
        The front desk clerk points out a thick iron key attached to the ring. "You'll find the gate down the stairs and through the lockers. Just don't get... <i>locked in</i>." He lets out another creepy laugh.
        ->desk_choices
        
    * "Why isn't there anyone else here?"
        "We haven't had visitors in quite some time, not since..." The creepy desk clerk looks at a newspaper clipping on the wall which reads "ARSON??" He giggles creepily. "Not since <i>the fire</i>."
        ->desk_choices
        
    * {!know_pool_location}"Thanks!" (wander off)
        The gang heads into the villa but quickly get lost. Doors in a hallway seem to open to doors on opposite sides of the same hallway. 
        
        Shaggy meets eyes with a painting that blinks, Scooby jumps into his arms and luggage goes everywhere. "Did you see that Fred?"
        
        The two turn but the hallway is empty.
        
        ** Run away wildly
            Shaggy carries Scooby up and down stairs, indoors and out, until they reach Fred's silhouette. "I thought we'd lost ya!"
            
            The silhouette turns but it isn't Fred at all! It's someone else in an ascot, and a sword run through him!
            
        ** Retrace your steps
            "No problem, we just have to go back the way we came." Scooby gets out of Shaggy's arms and the two walk backwards down the hall. After a minute they run into Daphne.
            
            But when they turn it isn't Daphne at all! The purple clad figure hovers in mid-air, and she's as white as a sheet!
            
        -- "Ru-ru-ru-ru-Rhost!" Scooby shouts, picks up Shaggy, and the two run back to the front desk where the rest of the gang is talking to the clerk.
            ->desk_choices
    * {know_pool_location}"Thanks!" (go to pool)
        ->pool
    
=== pool ===
In the hot, Italian sun the gang enjoys a relaxing day by the pool. Velma reads under an umbrella, Daphne floats in the shallow end, and Fred goes diving.

"Boy what I wouldn't give for a hotdog right now, eh Scoob?" Shaggy looks through his sunglasses at Scooby who is panting in the heat.

"Ror uh Rundae!" Scooby licks his face.

"Like, look over there: a concession stand!" Shaggy and Scooby leave their towels in a cloud of dust as they rush over.

-> concession_stand

= concession_stand
{There is no one at the concession stand. "Check it out Scoob, no line!"|The seemingly abandoned concession stand advertises hotdogs and sundaes.} <> 
<- ambient_shuffle

+ {!has_hotdog} Get a{hotdogs_failed>0:nother} hotdog
    Shaggy preps a hotdog, piling it high with {~mustard|onions|relish|katsup|everything he can get his hands on}. A shadowy figure lurks behind the stand, unseen.
    ~has_hotdog = true
    ->concession_stand
+ {has_hotdog} Eat the hotdog
    Shaggy closes his eyes and opens wide, but before he bites down a shadowy hand snatches the hotdog from his grasp. "Like, what gives, Scoob? I coulda made you a hotdog too!"
    
    Scooby looks confused and offended.
    ~has_hotdog = false
    ~hotdogs_failed ++
    {hotdogs_failed == 3: ->spook}
    ->concession_stand

+ Go sit in the shade
    -> chairs
+ Go swim in the pool
    -> water
+ Go to the diving board
    -> diving_board

= chairs
{A line of chairs and chaise lounges are on one side of the pool, dotted with tiny tables and big umbrellas. Velma is curled up with "Shakespeare - A History."|Velma adjusts her sunglasses over her regular glasses as she reads.} <> 
<- ambient_shuffle

* {has_hotdog} Eat the hotdog
    Shaggy lays out in the shade. Confident and comfortable he opens his mouth and drops the hotdog lengthwise, but before it reaches his mouth a shadowy hand grabs it from the air.
    
    "Velma! I made that hotdog special." Velma ignores Shaggy's assertion, shushes him, and goes back to her book.
    ~has_hotdog = false
    ~hotdogs_failed ++
    {hotdogs_failed == 3: ->spook}
    ->chairs
+ Go to the concession stand
    -> concession_stand
+ Go swim in the pool
    -> water
+ Go to the diving board
    -> diving_board

= water
{The pool is a wide mosaic of tiles that looks out at the ocean through a wrought iron fence. When Shaggy enters his swimming trunks balloon, keeping him afloat.|Something something|Daphne lays out on a floating chair under a big sun hat.} <> 
<- ambient_shuffle

* {has_hotdog} Eat the hotdog
    Shaggy leans against the side of the pool, he doesn't see the snorkle in the water trap. As he goes to take a bite of the hotdog a shadowy hand reaches from the water and steals the meat, leaving Shaggy with only a soggy bun.
    
    "Why are you splashing around, Shaggy? That can't make a hotdog taste any better."
    ~has_hotdog = false
    ~hotdogs_failed ++
    {hotdogs_failed == 3:->spook|-> water}

+ Go to the concession stand
    -> concession_stand
+ Go sit in the shade
    -> chairs
+ Go to the diving board
    -> diving_board

= diving_board
{The diving board is up a short stair and across from an empty lifeguard chair, a shadowy figure lurks behind it unnoticed.|Fred climbs out of the pool and prepares for another jump} <> 
<- ambient_shuffle

* {has_hotdog} Eat the hotdog
    Shaggy steps out on the diving board, hotdog in hand. "I call this the flying frankfurter!" He bounces high, lets go of the hotdog, but as it begins to fall into his mouth a shadowy hand swipes it away.
    
    Shaggy surfaces, stomach still empty, "Did anyone see that!?" Velma doesn't look away from her book. "Flying frankfurter, impressive."
    ~has_hotdog = false
    ~hotdogs_failed ++
    {hotdogs_failed == 3: ->spook}
    ->diving_board
+ Go to the concession stand
    -> concession_stand
+ Go sit in the shade
    -> chairs
+ Go swim in the pool
    -> water

= ambient_shuffle
{shuffle:
    - Fred makes a splash in the pool.
    - "Watch me do a flip!" Fred shouts.
    - Velma mumbles "Jinkies!" and turns a page in her book.
    - Scooby tries in vain to work the icecream machine.
    - Scooby drinks a whole pitcher of pink lemonade.
    - "Shaggy, would you bring me that suntan lotion?"
    - "Isn't this the life?" Daphne says.
}
->DONE

= spook
Wet and hungry Shaggy marches over to the concession stand. "Like watch real close, Scoob!" With a mouth full of nachos Scooby nods vigerously as Shaggy makes another hotdog.

Before Shaggy can take a bite a shadowy hand hooks the hotdog. "Rhat ray!" Scooby points and the two of them chase the shadowy figure into a garden. "Like, unhand my meal!"
- (chase_choices)
* Split up 
    Shaggy and Scooby both go down different paths. "I'm right on his tail!" Shaggy jumps and grabs... Scooby's tail! The shadowy figure darts past the two on the ground.
    ->chase_choices
* Set a trap
    Scooby barks and chases the shadowy figure, but Shaggy spots an empty crate and has an idea. He makes a pull trap and places a Scooby Snack inside. The trap snaps shut!
    
    "Like, That worked better than I thought!" He lifts up the crate and spots... Scooby! The shadowy figure begins to get away.
    ->chase_choices
* ->
    It isn't long before Shaggy and Scooby catch up with the hotdog thief, cornering them in a section of garden with tall trees.
    
    Scooby spots the shadowy figure climbing into the branches!
    
    ** "Rup rhere!"
    Shaggy looks where Scooby is pointing just as the figure is lit up by the hot sun. Both shout together:
    
    <bold>"A monkey!?"

->wrapup

=== wrapup ===
<h4>The End</h4>
Thanks for playing! This incomplete story is meant to give exmples of common code & story patterns in Ink. Let me know if you think I should finish & publish it.

Paxton <i>(they/them)</i>

-> END
