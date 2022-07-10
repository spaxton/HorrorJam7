
VAR hunger = 0 //goes up with meat, goes down with alt_food
VAR PC_meat = 0
VAR PC_b4_meat = 0
VAR meat_left = 11 //how much is left in the fridge (qty might be 15?)
VAR day = 1 //days will continue until meat is gone
VAR meat_eaten = false
VAR beastly = false//Becomes true a 4 Meat
VAR feral = false //True at 7(8?) Meat

VAR creature_fed = 0 //too much too quickly makes it scary; (might cut this)
VAR mice = 3 //MIGHT CUT
VAR mice_eaten = false //MIGHT CUT

-> header

TODO figure out a better way to call the previous qty of meat.
=== function PC_meat_eaten()
~meat_left --
~PC_meat ++

    {
    -PC_meat > 0:
        ~meat_eaten = true
    -else:
        ~return
    }
    
    {
    -PC_b4_meat == (PC_meat - 1) && beastly == false && feral == false:
        ~hunger++
        ~PC_b4_meat++
    -else:
        ~return
    }
    
    {beast_check()}

=== function beast_check
    
    {
    -PC_meat >= 4:
        ~beastly = true
    -else:
        ~ return
    }
    
    {
    -PC_meat >= 7:
        ~feral = true
    -else:
        ~return
    }

=== function day_end_check
~day++
~hunger++

TODO might have to change qty consumed here.
=== function starvation(x)
    { x == starve1:
        ~PC_meat += 3
        ~meat_left -= 3
        {hunger != 1:
        ~hunger = 1
        }
    }
    { x == starve2:
        ~PC_meat += 4
        ~meat_left -= 4
        {hunger != 2:
        ~hunger = 2
        }
    }

/*
	Tests if the flow passes a particular gather on this turn.

	Usage: 

	- (welcome)
		"Welcome!"
	- (opts)
		*	{came_from(->welcome)}
			"Welcome to you!"
		*	"Er, what?"
			-> opts
		*	"Can we get on with it?"
		
*/

=== function seen_ever(-> x)
    ~ return TURNS_SINCE(x) == -1
    
=== function seen_last_turn(-> x)
    ~ return TURNS_SINCE(x) >= 2 || seen_ever(x)

=== function print_number(x) 
~ x = INT(x) // cast to an int, since this function can only handle ints!
{
    - x >= 1000000:
        ~ temp k = x mod 1000000
        {print_number((x - k) / 1000000)} million{ k > 0:{k < 100: and|{x mod 100 != 0:<>,}} {print_number(k)}}
    - x >= 1000:
        ~ temp y = x mod 1000
        {print_number((x - y) / 1000)} thousand{ y > 0:{y < 100: and|{x mod 100 != 0:<>,}} {print_number(y)}}
    - x >= 100:
        ~ temp z = x mod 100
        {print_number((x - z) / 100)} hundred {z > 0:and {print_number(z)}}
    - x == 0:
        zero
    - x < 0: 
        minus {print_number(-1 * x)}
    - else:
        { x >= 20:
            { x / 10:
                - 2: twenty
                - 3: thirty
                - 4: forty
                - 5: fifty
                - 6: sixty
                - 7: seventy
                - 8: eighty
                - 9: ninety
            }
            { x mod 10 > 0:
                <>-<>
            }
        }
        { x < 10 || x > 20:
            { x mod 10:
                - 1: one
                - 2: two
                - 3: three
                - 4: four
                - 5: five
                - 6: six
                - 7: seven
                - 8: eight
                - 9: nine
            }
        - else:
            { x:
                - 10: ten
                - 11: eleven
                - 12: twelve
                - 13: thirteen
                - 14: fourteen
                - 15: fifteen
                - 16: sixteen
                - 17: seventeen
                - 18: eighteen
                - 19: nineteen
            }
        }
} 

/*
    *A        light                  seemed to      pull              it
    
    **   single                 door                              to   self
    
    ***                     the                        dark     in
    
    ****               above                                                a void
    
*/

==header== 
Title: Hunger Something Something Meat Scary Timez

Author: Luis Enrique Lopez

Description: A young, penny-starved man takes on a simple job that may cost him more than he has. 

TW: Gore, Body Horror, Eating Disorder/Starvation, Animal Cruelty, Isolation
Time: Who knows
    +[Play]
    ->start

===start===
/*
"...One story of creation tells of a beast with an insatiable appetite that threatened to eat he gods. It was struck down and it's corpse was left to rest upon the sea of the first age."
    *[Flip to the next page]"Chapter 13: Carcass of Creation"
    
    -Declaring this a good place to stop, Oscar folded the corner of the page to mark it. He winced as a tear formed on the crease and he shook his head, deeming it a problem for later.
*/
    Oscar had to deal with his overdue rent and impending eviction. The jobless man unlocked his phone and opened up a trending gig app.
        
        *He began his search[...] <>
        
    -of any job he could find that would let the landlord know he was making an effort. He filtered for jobs with little to no experience and a payout range too high for the expected skill level.
    
    -(job_opts) {He saw a few. Which one did he check?|What else popped up?|There had to be something that wasn't so specific. <>}
    
    *\ {~Some|A} themed TV-show performance.[] Oscar knew nothing about the show, but did have a clue on fans being particular about the details.
    
    TODO this opt might need some readjusting lol
    *\ {Something requiring|A job asking for|This one required} insane motor-skills[.] Oscar couldn't possibly fake being a juggling Cirque du Soleil acrobat. He went back a page.
    
    *->
    
    -(job_loop)
    {->job_opts|->job_opts|}
    
    Oscar kept scrolling until his eyes caught a sizable number from their periphery. He striked the link and the page flashed open:
    "In urgent need of pet-sitter for X days. No experience required! ($X,000)
    Hi there prospective caretaker, my wife and I will be out of town for a conference. We need someone to feed our pet and watch our house while we're gone.
    You will be compensated upon our return.
    If you are seriously interested or want additional details call (XXX)XXX-7852.
    
    Henry & Frieda Fleischer"
    
    After reading the ad, Oscar...<>
    
    *\ {|He} called the number.[]
    
    *\ {|He} thought of looking for another gig.[] But with no recourse in mind, he dialed the number from the job posting.
    
    -The phone rang.
"Hello, this is the Fleischer residence. Please leave your name and reason for calling we will get back to you after determining your query."

He waited for a response, and not more than a minute they called back.

"Hello this is Henry Fleischer, are you calling about the job posting?"

"Yeah, I can do it. I just don't have a car."

"Great, here are some additional details (can't tell you location, you must stay in house), we will send someone to pick you up. Thank you."

"Appreciate it. I'll do my best."

*Oscar waits for the ride.

Oscar gets picked up and the car is blacked out and he falls asleep.

->house

===house===

Oscar finds himself in a sizable living room upon entering the door. To the left an arched doorway lead to the kitchen. Another door lead to the bedroom/bathroom, where Oscar will sleep. Lastly, and most obviously, a hallway darkened toward a door in the back that lead to some stairs heading downwards, where the pet sleeps. He promised himself to check that one last.

*Oscar noticed a signed letter on a stand.

Our friend reads the note that has specific instructions on feeding the pet.
\-Feed our beloved pet once a day. Twice, if restless.
\-Food is in the fridge.
\-Make sure all the food is gone by the time we get back.//maybe not this
\-Will not eat anything else
\-MUST be hand-fed.
\-Something ELSEEEEEEE
\~Henry & Frieda Fleischer
->intro_house_opts

= intro_house_opts
    {What does Oscar do?| Oscar thought about what he should check out next.|}

* [{He goes into kitchen.|The kitchen is where one finds the most important things, like snacks.}] Jostling into the reasonably proportioned kitchen, Oscar finds the fanciest marble countertop and sink combo he's ever seen. Drawers all over, and a fridge that looked like it came from beyond the current age. <>
    -> house.go_kitchen

* [{~He steps into the bedroom|He's intrigued by the idea of a comfortable bed.}]
    -> house.go_bedroom

*->house_outro

    =go_kitchen
 {!{~Oscar's| The man's| His} {~curiosity|concentration} {~spools|wanders} around and {he decides to...|then he...}}

    *(firstaid)\ {open up all the drawers and cupboards|Oscar wanted to check the cupboards and pantry}[.], and only found a mass array of kitchenware, cleaning supplies and a first-aid kit. Oscar shuts the drawers.
    -> house.go_kitchen
    
    *\ {go|He goes} over to the dining table[.], but other than velvet table cloths and a golden candelabra, there wasn't anything worth seeing.
    ->house.go_kitchen
    
    *-> go_kitchen_done
    
    =go_kitchen_done 
    Oscar finally focused on the object of his obligations. He walked over to the fancy fridge towering in it's daunting physique. He slowed his step when he got closer. His stomach let out a heinous roar and he wondered why he hadn't noticed this hunger sooner. He thought that maybe it would be better to check this last, but his hand was already gripped to the handle.
    
    
    *He opened the fridge[.] and took his time registering the sight. <>
    
    - {print_number(meat_left)} glass containers were immaculately ordered across two shelves. Four-ounce handfuls of what looked like ground beef laid inside of each unit of glassware. Not a single one spaced out of line from one another. A waning odor wrenches him back to the rest of his senses.
    
    *\ {Oscar|He} closes the fridge[.] and {!exits|makes his way|escapes} to the living room. wiping away a spot of saliva from his mouth. He shakes off the moment and gathers himself.
    ->intro_house_opts

    =go_bedroom
    This is where Oscar would be sleeping. It wasn't really exciting.
    *[At least he was impressed by the bed.] The vagrant nods in approval and steps out of the room.
    ->intro_house_opts

    =house_outro
    Pacing back into the sophisticated lounging room, Oscar realized that he hadn't yet found the what he was supposed to feed. The {~dog|cat|iguana|hamster}, {~mole|snake|unicorn}, or whatever the Fleischers' pet was supposed to be was probably getting hungry, he thought.
    
    He took to the hallway and turned on the lights at the {~invitation|umbral} of shadow leading in. The bulbs flicked on without a single {tick|crackle|snap} or subsequent {buzz|hum}. The silence seemingly darkened  the maw of black waiting at the end of the hall.
    *Oscar walked forward[...] and slowed his pace to ensure the stillness wasn't his only companion. <>
    -(door_opts){He reached the doorway and saw some steps going down to a door.|}
    
    *A single light above the door seemed to be pulling darkness into itself.
    
    -The door was scary and bolted on the side, no handle, just a doggy door near the bottom. Oscar approaches the door, the smell reminding you of the fridge. He knocked on the door carefully, a ring that lasted beyond hearing lingered.
    
    "{~Hey bud|Hey boy}?"
   
   *[...]
   
   -The microscopic sounds of his clothes brushing against his skin and his hair tickling his brow made him far too aware of his own heartbeat. The pumping felt too broad and unspecific. There was nothing else. No other being.
   
   *\ {|"}What {was he|am I} doing here[?]," he stressed.
   
   -He backed away from the door with eyes still locked on it.
   
   Oscar made his way back up the stairs.
   He pondered on the lack of any information on the "beloved" pet and how that made his thoughts swirl. He was just there to feed it, and nothing else. A couple of burger patties for a few days and he'd have his pay.
   
   Once he was aware of having seen the whole place, hunger and stagnation washed over him. He had to really get started on his job before he passed out. Even if he wasn't so sure there was anything alive down there.
    ->day1
    
        TODO The first time that meat is available to eat, make it as unlikeable as possible. Use a bunch of gather/weave combos to make it obvious that the PC should not be eating this stuff.
    
    =day1
    Our vagrant's stomach was growling, but he had to make sure he was doing his job. Still it was difficult to prioritize the job when it seemed like there wasn't one. Following the jingle of his stomach, he went over to the kitchen. The fridge stared him down while he gripped the handle.
    
    - (first_bite) {What do you think Oscar was thinking about?|What else was going on in our derelict friend's mind?|->day_end}
    
    *Feeding the Fleichers' pet
    ->feed_pet_firsttime
    
    *The taste of that meat.
    ->meat_firsttime
    
    *{first_bite_loop} [{|Nothing.|}] Oscar just leaves. He {believed|felt|thought|decided} that this was enough for now.
    ->day_end
    
    =feed_pet_firsttime
    Oscar grabs a container of the meat and opens it up. The instructions did say he was supposed to hand feed it. Balancing the glass in his grip he makes his way down the hallway once more. Hoping there's something down there that will eat this meal.
    
    He brings it down there and things are a little tension, and it isn't until he grabs a handful and feels the meat tingling against his fingers and calls for the pet to get their food. So he sticks his hand inside, maybe shines a light (can't see nothin') and sticks his hand in about forearm deep and starts to hear some breathing, whining, and dragging. A smell arises and a taste almost forms on his tongue. Eventually a tongue licks away the meat from the PCs hand and they pull away. Disgusted by the putrid smell on their hand. He stepped away from the door, shook. The man headed up to the bathroom to clean up, but a solid would invited the smell to stick around.
    ~meat_left--
    
    ->firstbite_loop
    
    =meat_firsttime
    Oscar wasn't always a fan of meat, but he could eat it when he needed to. Of course now he was getting hungry. It's just that...he didn't know what the meat was made of. Even if it made him less apt to have taste, he was aware that this was the only food in the house. What could he do with it?
    
    *[Cook it.] He preps it in a non-stick pan, but there's no salt or oil. To further compound his disappiontment, the smell of the meat cooking up wasn't the best. He cooks it through and plates it.
    
    **He eats it.[] Nose pinched and by the mouthful. Slimy and with a fermented aftertaste. He thought he crisped it up.
   ~PC_meat_eaten()
    ->firstbite_loop
    
    **He cuts a piece off.[] The taste of cream left out overnight and rancid eggshells flood his nostrils and the dryness competes with the heavy juices squeezing out from inside the meat.
    ~PC_meat_eaten()
    ->firstbite_loop
    
    
    *[Take a bite.] He pushes a chunk of meat against his teeth.
    An initial gag forces Oscar to steel himself. Even if its intensity was somewhat reduced from the cold, a lightly rancid flavor flooded his mouth. Chewing it felt like the first couple of bites of gum before the saliva wears it down. The taste filled every corner of his mouth, unpleasant but bearable.
    ~PC_meat_eaten()
    ->firstbite_loop
    
    
    
=firstbite_loop
//Once a choice has been made, you can continue or perform another action.
-(first_bite_loop)
->day1.first_bite




TODO Create conditions to TUNNEL "episodes" based on var/cons that have been met or triggered.

==day_end
    {
    -meat_left < 1:
        ->ending_hub
    - hunger >= 2 && !ate_key:
        ->ate_key
    -hunger >= 3 && meat_eaten == false && (!starve1):
        ->starve1
    - (!starve1) && beastly == true && hunger >= 5:
        ->starve1
    -hunger >= 4 && (!ate_nails):
        ->ate_nails
    -hunger >= 5 && starve1 && (!starve2):
        ->starve2
    -hunger == 5 && starve1 && starve2 :
        ->eat_fingers
    -else:
    +Our pet-sitter is exhausted and goes to bed
    ->wake_up
    }


==day_end_loop
 ~day_end_check()
 ->day_end

==wake_up
a transition from whatever episode just happened to the rest of the day. I might rename this.
->feeding_hour

==ate_key
 damn, the character ate a whole-ass key.
 *Isn't that crazies?
 ->wake_up
 
==starve1
can you believe this fool didn't eat nothin'. he be starving and shit, holmes. So he eats three of them big ol meats.
    ~starvation(starve1)
    *This is what happens when you don't eat.
    ->wake_up
    
==starve2
he just keeps doing it, cuh. he never learns, mane. he didn't eat nothins so he ate even more of the meats. THROWS it up, and can't stop himself from eating it. We don't even know where it comes from.
    ~starvation(starve2)
    *Shoulda ate.
    ->wake_up

==ate_nails
this fool gets so hungry that he eats his own nails in his sleeps. this foo didn't even know it, mane.
    ~hunger --
    *Damn, that hurts
    ->wake_up

==eat_fingers
holy moly, Oscar really trying too hard to not eat and stuff. wow, what a legend. too bad now he ate a couple of fingers and has to live without 'em.
*OOF! That's a roughy.
->wake_up

==feeding_hour
    What does Oscar do?
-(feed)
    
    + {seen_last_turn(->feeding_hour.creature_choice)} [Feed creature] damn, that creature got fed!
    ~meat_left --
    --(creature_choice)
    ->feeding_hour.feed

    + {seen_last_turn(-> feeding_hour.meat_choice)} [Oscar feed on meat] Oscar takes a cute little bite
    ~PC_meat_eaten()
    --(meat_choice)
    ->feeding_hour.feed
    
    + [Time for bed]
    ->day_end_loop
    
TODO you might need a more immediate indicator or response for player to know when they're out of meat. ALSO, maybe a way for them to check how much is left whenever they want.
==ending_hub
{
-PC_meat >= 9:
        ->meat_end
-PC_meat <= 4:
        ->creature_end
-else:
        ->alive
}

==meat_end
You become a creature (Oh no!) Then, you EAT the creature downstairs!! Then you molt and morph into an unrecognizable mess. You lay starving, until you hear someone calling out to feed you.
->epilogue

==creature_end
The thing at the bottom of the stairs is calling for you. Demanding that it needs to feed. You see it forcing it's way through the doggy door, it's skin peeling back as it strains to teeth at you in a demented grin. You know you can't escape, homie.
->epilogue

==alive
You lived! NICE! You may have lost some fingers or your sanity, but at least you got a mean green stack to comfort you until you pay rent.
->epilogue

==epilogue
Thanks for testing
->END