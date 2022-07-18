VAR hunger = 0 //goes up with meat, goes down with alt_food
VAR PC_meat = 0
VAR PC_b4_meat = 0
VAR meat_left = 11 //how much is left in the fridge (qty might be 15?)
VAR meat_eaten = false
VAR beastly = false//Becomes true a 4 Meat
VAR c_hunger = 0

VAR feral = false //not actually being used
VAR day = 1 //days will continue until meat gone (not sure if use)
VAR creature_fed = 0 //too much too quickly makes it scary; (might cut this)
VAR mice = 3 //MIGHT CUT
VAR mice_eaten = false //MIGHT CUT

->start

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
    -PC_b4_meat == (PC_meat - 1) && beastly == false:
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
~c_hunger++

{beastly == true:
~hunger++
}

=== function starvation(x)
    {x == wd_episodes.starve1:
    ~PC_meat += 3
    ~meat_left -= 3
        {-PC_meat >= 3:
        ~hunger -= 3
        -else:
        ~return
        }
    }
    
    
    { x == wd_episodes.starve2:
        ~PC_meat += 2
        ~meat_left -= 2
        ~hunger -= 2
    }
    
    
    
=== function seen_ever(-> x)
    ~ return TURNS_SINCE(x) == -1
=== function seen_last_turn(-> x)
    ~ return TURNS_SINCE(x) >= 2 || seen_ever(x)
=== function came_from(-> x) 
    ~ return TURNS_SINCE(x) <= 1
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

/*
->header

==header== 
Title: Hunger Something Something Meat Scary Timez

Author: Luis Enrique Lopez

Description: A young, penny-starved man takes on a simple job that may cost him more than he has. 

TW: Gore, Body Horror, Eating Disorder/Starvation, Animal Cruelty, Isolation
Time: Who knows
    +[Begin]
    ->start
*/

===start===
/*
"...One story of creation tells of a beast with an insatiable appetite that threatened to eat he gods. It was struck down and it's corpse was left to rest upon the sea of the first age."
    *[Flip to the next page]"Chapter 13: Carcass of Creation"
    
    -Declaring this a good place to stop, Oscar folded the corner of the page to mark it. He winced as a tear formed on the crease and he shook his head, deeming it a problem for later.
*/

    Oscar tried to shake off the pounding in his head. He challenged the night to see who'd stay up longer and the weight of an overdue rent notice ensured his win.
    
    After ruining all his job interviews last week, the young man was inspired to open up a trending gig app. He winced and blinked, each quake in his skull ticked closer to an irreversible hour.
    
    Honestly, his head was exaggerating.
        
        *He began his search[...] <>
        
    -of anything to let the landlord know he was making an effort. He filtered for jobs with little to no experience and a payout range too high for the expected skill level.
    
    -(job_opts) {He saw a few. Which one did he check?|What else popped up?|There had to be something that wasn't so specific. <>}
    
    *\ {~Some|A} themed TV-show performance.[] Oscar knew nothing about the show, but did have a clue on fans being particular about the details. They'd probably quiz him. Pass.
    
    *\ [{This job asked for|Something that required} acrobatic skills.] Oscar couldn't possibly fake being a juggling trapeze performer. He went back a page.
    
    *{CHOICE_COUNT() == 0} [He kept scrolling...]
    
    -(job_loop)
    {->job_opts|->job_opts|}
    
    Oscar kept scrolling until his eyes caught a sizable number from their periphery. He striked the link and the page flashed open:
    "In urgent need of pet-sitter for a couple of days. No experience required! ($X,000)
    Hi there prospective caretaker, my wife and I will be out of town for a conference. We need someone to feed our pet and watch our house while we're gone.
    You will be compensated upon our return.
    If you are seriously interested or want additional details call (XXX)XXX-0000.
    
    Henry & Frieda Fleischer"
    
    -(call) {After reading the ad, Oscar...<> |}
    
    *\ {|He} called the number[.] and<> 
    
    *\ thought of looking for another gig.[] But with no recourse in mind, he stared hard at the page.
        ->start.call
    
    -the phone rang for a while.
    
A low and languid voice answered, <>    
"Hello, this is the Fleischer residence. Please leave your name and reason for calling we will get back to you after determining your query."

    *Oscar waited[...] for a response, and not more than a minute passed before he got a call back.

    -The same unspirited voice as before began, "Hello, this is Henry Fleischer. Oscar is it? Are you calling about our little job posting?"

    *"Yeah, that's me.["] I can definitely do it. Quick question, though. Are y'all really paying as much as listed on the app?"

    -"Why yes, of course. My wife and I are desparate for someone at this very moment, but most applicants had some hesitations with being escorted to our locale and parting with their phones. We simply want to keep our privacy-"

    "That's it?" Oscar's impatience was too evident. He collected himself, "none of that should be a problem. Anything else you need me to know about?"

    *[There was a pause...]
        **[Did he give off a bad vibe?]
            ***[He was so obvious.]
                ****[He just had to sit and listen...]
                    *****[If only he waited.]

    -"Yes, yes. Let me just run through the rest." 
    
    Oscar sighed in relief.
    
    The man continued with a pleasant readiness, "as I said, leave your electronic devices, we will send someone to get you. Ah, here, it's important you stay inside until we return, our surveillance will ensure this. If violated, it will affect your compensation. Additionally, a bed and food will be provided. So you shouldn't be hurting for proper rest. Are any of these asking for too much?"
    
    *"This all sounds[...] good to me! I can survive a weekend without my phone." Heck, he'd clean the toilets and build a statue in their name for how much they were paying.

    -"Right then, we will send..." 

    The next day, Oscar waited in the morning outside of his shabby apartment complex until a smooth black car came to take him. In a single moment, he grew drowsy and shut his eyes.
    
    *He slept...

->house

===house===

Our vagrant gasped as if he woke from a dream. He was standing in a fairly-sized living room, to the left was an arched doorway and he caught glimpse of a sink, and a door sat on the other side. The most obvious sight was a dark hallway cutting through the center of the lounge. He straightened himself and promised to check that one last.

*Oscar noticed[...] a signed letter on a stand. It read...

Hello Oscar,
please remember:
\-Feed our pet once a day. If you don't, it will get restless
\-Food is in the fridge
\-Will not eat anything else
\-MUST be hand-fed
\-If anything happens to our beloved companion, you must replace it 
\~Henry & Frieda Fleischer

He snorted and wondered why they wrote this at all. There was no way he'd mess up this trivial errand.
->intro_house_opts

= intro_house_opts
    {Oscar looked towards both ends of the room. What did he do?| Oscar thought about what he should check out next.|}

* [{He walked into the kitchen.|The kitchen is where one can find the most important things, like snacks.}] Jostling into the reasonably proportioned kitchen, Oscar found the fanciest countertop and sink combo he'd ever seen. Drawers all over, a posh dining table, and a steel fridge. <>
    -> house.go_kitchen

* [{~He went to explore the door.|He was intrigued by the door.}] He held it about a crack wide and pushed. <>
    -> house.go_bedroom

*->house_outro


    =go_kitchen
 {!{~Oscar's| The man's| His} {~curiosity|concentration} {~spooled|wandered} around and {he decided to...|then he...}}

    *(firstaid)\ {open up all the drawers and cupboards|Oscar went to check the cupboards and pantry}[.], and only found a mass array of kitchenware, cleaning supplies, and a first-aid kit.
    
        --No snacks at all? Oscar rolled his eyes and shut the drawers.
    -> house.go_kitchen
    
    *\ {go|go|He goes} over to the dining table[.], but other than velvet table cloths and a golden candelabra, there wasn't anything worth seeing. He turned away before his thoughts lingered on the lack of windows.
    ->house.go_kitchen
    
    *-> go_kitchen_done
    
    =go_kitchen_done 
    Oscar finally focused on the object of his obligations. He walked over to the steel fridge, towering in it's daunting physique. He slowed his step when he got closer. His stomach let out a heinous roar and he wondered why he hadn't noticed this hunger sooner. He thought it better to check this last, but his hand was already gripped to the handle.
    
    *He opened the fridge[...] and <>
    
    - immaculately ordered across two shelves were {print_number(meat_left)} glass containers. Laid inside of each unit of glassware were four-ounce handfuls of...ground beef? It had to be, only the speckles of fat had a garish tone. Not a single one was spaced out of line from another. A waning odor wrenched him back to the rest of his senses.
    
    *\ {~Oscar|He} closed the fridge[...] and {~retreated from|flew from|escaped} it. He wiped away a spot of saliva from his mouth and gathered himself. A growl in his stomach tried to hold him, but he searched for a distraction.
    ->intro_house_opts

    =go_bedroom
    The bedroom was ordinary with a not-so-fancy bathroom.
    *At least[...] he was impressed by how small the bed was. How did two people sleep on this thing? It must've been a guest house.
    ->intro_house_opts

    =house_outro
    Once in the living room, Oscar realized that he hadn't found the pet he was supposed to feed. The {~dog|cat|iguana|hamster}, {~mole|snake|unicorn}, or whatever it was supposed to be, was probably getting hungry.
    
    The hallway's penumbra held the answer and the man headed to its entrance. He flipped the switch andulbs flicked on without a single {tick|crackle|snap} or subsequent {buzz|hum}. The silence darkened the black maw waiting at the end of the hall.
    *Oscar walked forward[...] and slowed down to ensure the quiet was his only companion. <>
    -(door_opts){He reached the doorway and saw some steps that sank down to a door.|}
    
    *A single light[...] above the door seemed to be pulling darkness into itself.
    
    -It had rusted streaks pointing out heavy bolts latched shut. 
    Oscar started to descend.
    Neither a knob nor handle on the thing, just a doggy flap near the bottom.
    His eyes attempted to find any sign there was something inside.
    A smell baited him forward with familiarity. 
    The fringes of the door led straight to darkness.
    His hands searched for a way in.
    
    *"Hey there...buddy?"[]
        **"You hungry?"[]
   
   -Nothing reacted to his calls.
   
   *[Knock?]
   
   -Oscar carefully tapped twice, letting out a ring he swore he felt after it left his ears.
   
   
   -The microscopic sounds of his clothes brushing against his skin made him far too aware of his own heartbeat. The pumping felt foreign and his forehead became taut. There was nothing else. No other being.
   
   *\ {|"}What {was he|am I} doing here[?]," he stressed.
   
   -He backed away from the door with eyes still locked onto it.
   
   *Oscar returned up the stairs.
   
   -He pondered on the lack of any information about the "beloved" pet. Though, honestly, it didn't matter. He was just there to feed it. A couple of burger patties for a few days and he'd have his cash.
   
   Once at the top of the stairs, hunger and stagnation announced their arrival. He had to get started on this job before he passed out. Even if he wasn't so sure there was anything alive down there.
    ->day1
    
    
    =day1
   He followed the jingle of his stomach into the kitchen. He gripped the handle and the fridge stared him down.
    
    - (first_bite) {What do you think Oscar was thinking about?|What else did the man wonder about?|->first_day_end}
    
    *(pet_first) [Feeding the Fleichers' pet.] Oscar braced himself and tore open the refrigerator door.
    
    ->feed_pet_firsttime
    
    *[The taste of that meat.]
    ->meat_firsttime
    
    *{day1.pet_first} [{|Nothing.|}] Oscar just left. He {believed|felt|thought|decided} that this was enough for now.
    ->first_day_end
    
/*
He prayed there was something down there that would eat this meal.

A heavy and putrid warmth hugged Oscar's wrist. <>
    
    -He felt the fat from the provision leak between his fingers. The tails of oil left a tingle where they ran. Oscar shuddered in one more breath.
    
     The dragging didn't sound closer, it was just there. Singing in place.
     
     He was a statue with senses focused on the touch.
    
*/    
    =feed_pet_firsttime
   He snatched a container of the meat and slammed the door. With glass in hand, he made for the stairs. 
    
    Oscar hurried towards the bolted door. If there was a poor creature in that room, he hoped it wasn't already dead.
    
    *He pounded[...] the door this time.
    
    
    -Not a sound.
    
    Frustration had him tapping his foot.
    
    *[Knock again?] Another mad rain of thumps
    
    -Still nothing.
    
    Oscar thought he might as well pretend something was in that room. The instructions did say he was supposed to hand-feed the thing.
    
    *He opened the meat[.] and closed his nostrils. He felt the odor lick up at him but he pulled out the meat.
    
    -A greasy stain slithered down to the hairs on his wrists and he lowered the meat in response.
    
    *The flap[...] stared up at him. He could just leave it. If nothing happened, he could just drop it and go. 
        
    -He got on his knees and pushed his free hand to open the flap. Only black waved back at him and he pulled back.
    
    He let out a breath, scrunched up his nose even more, and took another. He shoved the meat-filled palm through the small fold.
    
    *[Warmth] A heavy warmth hugged Oscar's wrist. <>
    
    -He felt the fat from the provision leak between his fingers. The tails of oil left a tingle where they ran. Oscar shuddered in one more breath.
    
    *"Hey there, bud?[]
        **"I got you something to eat."[]
            ***He pushed further in[....], stopping halfway down his forearm.
                ****"You might like this one."[]
            
    -Oscar's arm began to ache and he rested it on the hard edge of the opening. He unclenched his nose and the smell started its invasion as he breathed in and out.
    
    *A whine[...] cried out from the other side of the hole.
        **Oscar stiffened[...] and disbelief settled in.
            ***His surprise[...] bridged into answers for questions he'd been asking, but none could form a picture.
            
    -The sound of dragging responded to his curiosity. A slow but consistent series of scrapes against the floor. It moved towards the feed, his hand, him.
    
    *There WAS something in there![] It was just slow. Old, maybe.
    
     -A scent arose and its flavor almost formed on his tongue.
     
    *"Oh, you must be an old gal? Boy?"[]
     
    **A tongue[...] started to lick off the meat from his hand.
    
    -It was squishy. Was it a dog? The top was scratchy, though, maybe a cat? Oscar knew what housepets were like, this wasn't any different. His mind formed a painting of the old critter.
    
    The tongue scooped up the last of the meat and a moment passed before a hefty drop signaled reprieve.
    
    *"Happy? Boy?"
    
    -Oscar didn't wait to pull his hand back out and grab the tray. He realized as he stood up, his breath was rushed.
    
    *What was the problem?
    
    -It was just a cat or something. Once he felt it, he knew it was just some dog. A large cat. Whatever. What was he worried about?
    
    While he wondered, the fetid aroma on his fingers staggered him silly, and he strode up the stairs. Each step leaving behind the smothering pressure.
    
    After a meditative wash, Oscar laughed about his little freakout.
    ~meat_left--
    
    ->firstbite_loop
    
    =meat_firsttime
    Oscar wasn't always a fan of beef but could eat it if he had to. He headed to the kitchen and his appetite grew as he neared the refrigerator.
    He just didn't know what the meat was made of. He remembered his surprise from earlier, this was all they had, but was he really going to eat it?
    
    *[Yes...] The only other choice was to starve, right? If he didn't eat now, he'd eat it later. One stride brought him to the fridge's entrance. C<>
    
    *Well[...], he tried to turn away but his c<>
    
    -ravings shackled him to their desire. The meat was on the other side, he could just take it. His stomach would thank him.
    
    *He grabbed[...] the handle and revealed the {print_number(meat_left)} meals that awaited.
    ->meat_ponder
    
    *He didn't want this[...]. The food was for the pet. It was probably the only thing it got to enjoy in it's lonely room.
    ->firstbite_loop
    
    =meat_ponder
    He inspected his options while his thumb scratched the underside of the handle. Their aura wafted over him.
        
        He picked up a single ration, readied his nostrils, and inspected the nutriment. The smell slithered into his mouth, a hint of day-old eggshells. Oscar thought of...
            
            **taking a bite.[]
            
            ***What did it taste like[?], he wondered.
            ****They say[...] that foods that smell bad taste great.
            *****This is probably one of them.
            ******Or maybe[...] it's a meat alternative.
            *******That would explain the smell, right?
            ********His eyes[...] rolled forward and focused on his palm. <>
            
            --------It was gone. He had eaten it. He heaved a breath to see if a taste had lingered, but there was none. He didn't feel anything different, just the tickle of grease on his palm.
            ->firstbite_loop
            
            **putting it up.[] What was he thinking? The smell wasn't even appetizing. He shelved the patty and closed the fridge.
            ->firstbite_loop
            
           
                
           
    
=firstbite_loop

-(first_bite_loop)
->day1.first_bite

    =first_day_end
Fatigue engulfed him and laid him out on the bed. He was at ease with the chore entrusted to him. Like anything before, he had to get it done no matter what, and it looked like it wouldn't take much. He just hoped the boredome wouldn't kill him before then.

He was still hungry.
*He slept.
    ->wake_up


==feeding_hour
    {What does Oscar do?|What was on {~Oscar's|our friend's|his} mind?|What was his plan?|What did {~Oscar|our friend|this man} have to do to see the next day?| What did it take for {~Oscar|the desparate vagabond|sorry fool} to survive?}
-(feed)
    
    +{meat_left >=1} {seen_last_turn(->feeding_hour.creature_choice)} [{&{Feed|Nourish} the {old|beloved} {~boy|gal}.|Give the {~cat|dog|pet} some meat.|Bring food to the {thing|creature|monster} {~below|downstairs}.}]
    ~meat_left --
    ~c_hunger --
    --(creature_choice)
    ->feeding_hour.feed_creature->
    ->feeding_hour.feed

    +{meat_left >=1} {seen_last_turn(-> feeding_hour.meat_choice)} [{{~Curb|Restrain|Ease} his {gastric desire|hunger|starvation}.|{~Listen to|Satify|Comply with} his stomach.| {Get|Acquire|He needs} a {~bite|taste|piece} of that {~grub|food|meat|nourishment}.}]
    ~PC_meat_eaten()
    --(meat_choice)
    ->feeding_hour.feed_PC->
    ->feeding_hour.feed
    
    +{meat_left > 0} {CHOICE_COUNT() <= 1}
    [Time for bed]
    ->day_end_loop
    
    *{meat_left <= 0} There was no meat left...[]
    ->out_of_meat
    
    TODO finish these
    =feed_creature
    {
    -day == 2: 
    nothing crazy happens
    -day == 3:
    Don't be a cunt, but kinda weird
    -c_hunger == 1:
    kinda antsy
    -c_hunger == 2:
    really weird
    -c_hunger == 3:
    why the fuck would you do that!!!??!?!?
    -else:
    just hunger, mang. good boy/girl??
    }
    ->->

    =feed_PC
    {
    -PC_meat == 0:
    ->feeding_hour.firstfeed->
    -PC_meat == 3:
    ->feeding_hour.transform->
    -beastly == true:
    {shuffle:
    -In the seconds it took Oscar to finish off his morsel, he delighted in the prospects of seeking another supply to soothe his hunger. 
    -He clawed out a lump and shredded it so swiftly, he was left to lick the residue off his fingers.
    -This poor being finished his meal in a blink. He surpressed a fit at the thought of having to share his food. He considered the possibility of taking them back, if he had to.
    }
    -else:
    {shuffle:
    -He decided he could stand to eat the meat instead of having sleep for dinner. He worthlessly promised that this would be the last time he'd make a grotesque compromise.
    -The crude smell taunted him to retch but he held together all the way down his gullet.
    -Oscar took a bite of the undetermined food. Even if its intensity was somewhat reduced from the cold, a lightly rancid flavor flooded his mouth.
    -He edged on the option to opt out when the slimy patty hit him with a fermented aftertaste. It went down well enough and he tried to huff out the taste.
    }
    }
    ->->
    
    =firstfeed
    Our meager companion took one of the {print_number(meat_left)} {~rations|trays|meals} and set it on the dining table. His thumb hesitantly traced the lid before revealing the questionable substance. The smell it gave off wasn't the best and reminded him of his earlier attempt.  
    *He fumbled[...] the unit into his palm and held it up. 
    
    -Yellow-tinged streaks straddled the portion. He followed the obscene trails, rotating the clump when he reached the edges.
    
    *Nose pinched[...], he brought the wad up to his lips.
    
    -An initial gag forced Oscar to steel himself and he bit down by the mouthful. Chewing it reminded him of the first couple of bites of gum before saliva wears it down. However, this thing never wore down but it went down far too easily.
    As he cleaned up the glassware, he felt the emptiness grow inside of him.
    ->->
    
    =transform
    Unremittingly, Oscar scraped for a meal from the storage and brought it in for a whiff. He was familiar with it but he wanted to refresh himself.
    *He pushed[...] the chunk of meat against his teeth. His fangs etched canyons into the mass and it filled every corner of his mouth. The taste of cream left out overnight and rancid eggshells flood his nostrils. He craved it.
    
    -The outer dryness competed with the heavy juices that squeezed out from the meat, invigorating his fervor. Swallowed pieces burned away anything else he had inside. His primal needs dared each other to rip apart the strands of his mind.
    
    *He wanted more.
    **He wanted more[...]and it would be delicious.
    ***It would be delicious and[...] he'd get stronger.
    ****[He'd...] He passed out.
    
    ----Blades forged by famine cut from within his belly and the pain startled him to sobriety. He tried to forget his power trip while he analyzed his surroundings. Oscar tried not to hurl his guts when he cleaned the mess around him.
    ->->
    
    
    =out_of_meat
    {
    -PC_meat >= 9:
    ->meat_end
    -else:
    ->alive
    }

==day_end
    {
    -meat_left < 1:
        ->alive
    -c_hunger >= 4:
        ->creature_end
    -PC_meat >= 9:
        ->meat_end
    -hunger >= 3 && meat_eaten == false && (!wd_episodes.starve1):
        ->wd_episodes.starve1
    - (!wd_episodes.starve1) && meat_eaten == true && hunger >= 4:
        ->wd_episodes.starve1
    -hunger >= 5 && wd_episodes.starve1 && (!wd_episodes.starve2):
        ->wd_episodes.starve2
    -else:
    ->wind_down->
    <-pillow_thoughts
    *\ {~{~He|The fool|Oscar|The man|The poor soul|Our empty friend|Our destitue companion} fell asleep...|To sleep he went...|Sleep...| Oscar's thoughts disspated...|{~He|The famished fool|Oscar|The destitue man|Our poor friend|The hungry man|Our companion} dozed off...|{~His|The young fool's|Oscar's|The poor man's|Our starved friend's|The struggler's|Our impoverished companion's} exhaustion took over...|He shut his eyes to the lullaby of his gut...| He faded...}
    ->wake_up
    }

    =wind_down
    {
    -c_hunger == 2:
    {~A {~screech|scrape} like a knife through styrofoam pierced the silence from below. |Withered strength forced the shrill {~scratching|scrapes} to last almost an eternity. |The {~needy|hungry} creature reached for the only place it knew its food came from. Its nails renewed the metal trails amidst the rusted barrier. |Sedated wails rose up from {~beyond|past} the stairs to {~foil our {~sitter's|host's} chances of sleep. |demand its sustenance. }}
    ->->
    -c_hunger == 3:
    {Starvation let out an {~atrocious|awful} cry in its desparation. Oscar became motionless and pleaded the {~creature|beast|monster|abomination} couldn't get through its {~door.|prison.} |The {~horror|thing} below made requests on the door. Each grotesque {~slam|crack} made Oscar aware of how {~famished|ravenous} it truly was. |Oscar's mind formed {~splinters|fissures|fractures} in its attempt to discern the words he heard from down the {~steps.|stairs.} He couldn't make any of it out but maybe he didn't want to believe he heard {~"food."|"hungry."|"meat."}}
    ->->
    -else:
    ->->
    }
    
=pillow_thoughts
{
    -beastly == true:
    {shuffle:
    -Faint chittering comforted him with the assurance of a potential snack.
    -A swarm of aromas tugged at Oscar's urges. The tempting feed in cold storage, the pests in the walls, and the unseen beast below. A bouquet of entities that obediently played their own part in this artificial abattoir.
    -His appetite never stopped wanting. He could hunt for what it wanted, but that wouldn't stop its irrevocable impulses. It couldn't.
    -Oscar closed his eyes and every hair on his body pointed outward to any fluctuation in the air. The ocean of nerves perceived every crawling insect on his knitted shelter. He turned to reset his focus.
    }
    ->DONE
    
    -else:
    {shuffle:
    - Oscar struggled to not think about what hour of the day it was.
    - He swore his stomach was eating itself. How much longer would he have to be awake for this?
    - Oscar rolled onto his back to reduce the stabbing feeling of needles in his stomach.
    - He really wished he knew what that thing downstairs was.
    - He wondered if a day had even gone by.
    - After all this, he would be debt-free. He prayed tomorrow was the last.
    }
    ->DONE
}
    
    TODO FINISH below
    
==wd_episodes

    =starve1
    ~starvation(starve1)
    Oscar had a hard time believing his innards weren't being carved out. His sight did not match the sensation and desparation took hold. Every motion pushed the imaginary tool further in, pulling more out.
    *He stepped[...] into the living room and a pain exploded from his gut. He was knocked clean off his feet, but he was confident in his solution. 
    
    -His head strained to pair his quarreling vision together, and he dug his fingers into embellished terrain. His palms cramped to follow the floor's etchings to reach the kitchen. The fridge pulled into his view and he slung a hand at the handle.
    
    *Another pang of hunger[...] pulled him down. Bewildered, he held his stomach and tried breathing the pain away.
    
    -Oscar took a minute before he launched another hold at the handle and dragged it open. His void bowels threatened to drag him into unconsiousness, but a sterile haze poured over him, leaked into his nostrils, and tightened his skin.
    
    *Oscar took a deep breath[...] and pulled himself up. Agony stretched from his abdomen to his chest. At the top, focus shifted from the ache to his sight.
    -The {print_number(meat_left)} heinous globs of flesh waited for him. Instinct ordered him to ravage the prey and he hooked two handfuls to start. He poured the meat down his throat to salve the anguish in his core.
    He hacked and coughed to clear he way down. The saliva too slow to slide everything down, but he consumed more to force it. Oscar inhaled through his nose while he took a minute to will the bulk through.
    *He collapsed[...] into a meditative sprawl which cleared his mind. He felt the hunger deepen, layers of agitation distending from his organs.
    -He just ate, though. He should be okay for a while, right? He strained to stand up and hobbled carefully back to his bed. He'd tell himself he was healthy to achieve rest.
    ->wake_up
    
    =starve2
    he just keeps doing it, cuh. he never learns, mane. he didn't eat nothins so he ate even more of the meats. THROWS it up, and can't stop himself from eating it. We don't even know where it comes from.
    ~starvation(starve2)
    {
    -meat_left <= 1:
    ~PC_meat--
    ->endhub
    -else:
    ->wake_up
    }
    
    
==day_end_loop
 ~day_end_check()
 ->day_end

==wake_up
    {
    -hunger >= 2 && !wu_episodes.ate_rat:
        ->wu_episodes.ate_rat
    -hunger >= 4 && wu_episodes.ate_rat && wd_episodes.starve1 && !wu_episodes.ate_nails:
        ->wu_episodes.ate_nails
    -hunger >= 5 && wd_episodes.starve1 && wd_episodes.starve2 && !wu_episodes.ate_fingers:
        ->wu_episodes.ate_fingers
    -else:
    ->morning_thoughts->
    }
    ->feeding_hour

    
    =morning_thoughts
    {shuffle:
    -Rest wasn't enought to dampen his hunger.
    *He got[...] out of bed and headed to the kitchen.->->
        
    -Teeth potruded out from his ribs and into abdomen. Oscar stroked the rows until his whole hand plunged into the cavity.
        *[Enamel crushed his...]Eyes flashed open and breath raced into him. He caught it and relaxed, but didn't feel like he slept at all.->->
    -Distant clattering shook Oscar awake and he began filtering possibilities as he headed to the source. Pinpricks flew up his back in his search for an encounter.
        Strips of wilted, red grime painted on the kitchen floor led to an exposed container of meat. It laid untouched
        *Oscar scooped[...] the sustenance back into the fridge. The unseen needles continued their dancing on the stage of his spine.->->
    -Tendons extended at the risk of tearing from his hand. His shoulder started to ease out of socket...
        *and he fell[...] to his knees. Oscar blinked into consciousness and found his grip clawed around the refrigerator handle. Cold ran through him as he untucked each finger from the door.->->
    -Oscar's head throbbed him out of sleep.
        *He needed something[...] to eat. He hoped this ordeal would end soon.->->
    }

TODO finish the stuff below lol
/*
   -wu_episodes.ate_rat:
    If Oscar really had eaten a rat, it didn't do much to fight off the ravenous waves inside of him.
    -wu_episodes.ate_nails:
    Every movement of his fingers translated to tiny aches at the tips.
    -wu_episodes.ate_fingers:
    Our starving friend struggled to believe his finger was gone. The emptiness never stopped reminding him of how much pain it was in.
    -else:
*/
==wu_episodes

    =ate_rat
    damn, the character ate a whole-ass rat.// if meat = false then !hunger--, but if meat = true then hunger--
    *Isn't that crazies?
    ->wake_up

    =ate_nails
    this fool gets so hungry that he eats his own nails in his sleeps. this foo didn't even know it, mane.
    *Damn, that hurts
    ->wake_up

    =ate_fingers
    holy moly, Oscar really trying too hard to not eat and stuff. wow, what a legend. too bad now he ate a couple of fingers and has to live without 'em.
    *OOF! That's a roughy.
    ->wake_up

TODO endiiiiiiiiiings these are super important
==endhub
    {
    -PC_meat >=9:
    ->meat_end
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