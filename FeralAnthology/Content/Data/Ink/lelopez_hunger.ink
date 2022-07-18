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

/*
{beastly == true: 
~hunger++
}
*/

//PC B4 MEAT WAS RECENTLY ADDED HERE!!!!
=== function starvation(x)
    {x == wd_episodes.starve1:
    ~PC_meat += 3
    ~PC_b4_meat += 3
    ~meat_left -= 3
        {-PC_meat > 3:
        ~hunger -= 3
        -else:
        ~return
        }
    }
    
    
    { x == wd_episodes.starve2:
        ~PC_meat += 2
        ~meat_left -= 2
        ~hunger -= 2
        ~PC_b4_meat += 2
    }
    
    
    
=== function seen_ever(-> x)
    ~ return TURNS_SINCE(x) == -1
=== function seen_last_turn(-> x)
    ~ return TURNS_SINCE(x) >= 4 || seen_ever(x) //each choice counts as a turn and episodes with choices force the feeding.hour to reset their choices
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
Title: Hunger

Author: Luis Enrique Lopez

Description: A young, penny-starved man takes on a simple job that may cost him more than he has. 

TW: Gore, Body Horror, Eating Disorder/Starvation, Animal Cruelty, Cannabalism, Isolation
Playtime: 30
    +[Begin]
    ->start
*/

===start===
/*
"...One story of creation tells of a beast with an insatiable appetite that threatened to eat he gods. It was struck down and it's corpse was left to rest upon the sea of the first age."
    *[Flip to the next page]"Chapter 13: Carcass of Creation"
    
    -Declaring this a good place to stop, Oscar folded the corner of the page to mark it. He winced as a tear formed on the crease and he shook his head, deeming it a problem for later.
*/
>>>PlayMusic(hunger_main)
>>>ResetCampfire()

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

* [{He walked into the kitchen.|The kitchen is where one can find the most important things, like snacks.}] He {~jostled|walked|strolled} into the reasonably proportioned kitchen, and found the fanciest countertop and sink combo he'd ever seen. Drawers all over, a posh dining table, and a steel fridge. <>
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

//TODO Maybe combine the exploration of the door below with feeding the creature for the first time. (After the gamejam fix)
    =house_outro
   
    Once in the living room, Oscar realized that he hadn't found the pet he was supposed to feed. The {~dog|cat|iguana|hamster}, {~mole|snake|unicorn}, or whatever it was supposed to be, was probably getting hungry.
    
    The hallway's penumbra held the answer and the man headed to its entrance. He flipped the switch and bulbs {~came|flickered} on without a single {tick|crackle|snap} or subsequent {buzz|hum}. The silence darkened the black maw waiting at the end of the hall.
    *Oscar walked forward[...] and slowed down to ensure the quiet was his only companion. <>
    -(door_opts){He reached the doorway and saw some steps that sank down to a door.|}
    
    *A single light[...] above the door seemed to be pulling darkness into itself.
    >>>ChangeCampfire(Night)
    
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
    >>>ResetCampfire()
   He followed the jingle of his stomach into the kitchen. He gripped the handle and the fridge stared him down.
    
    - (first_bite) {What do you think Oscar was thinking about?|What else did the man wonder about?|->first_day_end}
    
    *(pet_first) [Feeding the Fleichers' pet.] Oscar braced himself and tore open the refrigerator door.
    >>>PlayMusic(hunger_main)
    ->feed_pet_firsttime
    
    *[The taste of that meat.]
    ->meat_firsttime
    
    *{day1.pet_first} [{|Nothing.|}] Oscar just left. He {believed|felt|thought|decided} that this was enough for now.
    ->first_day_end
    
    =feed_pet_firsttime
   He snatched a container of the meat and slammed the door. With glass in hand, he made for the stairs. 
    
    Oscar wandered towards the bolted door. If there was a poor creature in that room, he hoped it wasn't already dead.
    
    *He pounded[...] the door this time.
    >>>ChangeCampfire(Dusk)
    
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
    >>>ChangeCampfire(Night)
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
     
    **A tongue[...] started to lick the meat off his hand.
    
    -(just_dog)
    >>>ChangeCampfire(Bright)
    It was squishy. Was it a dog? The top was scratchy, though, maybe a cat? Oscar knew what housepets were like, this wasn't any different. His mind formed a painting of the old critter.
    
    The tongue scooped up the last of the meat and a moment passed before a hefty drop signaled reprieve.
    
    *"Happy? Boy?"
    
    -Oscar didn't wait to pull his hand back out and grab the tray. He realized as he stood up, his breath was rushed.
    
    *What was the problem?
    
    -It was just a cat or something. Once he felt it, he knew it was just some dog. A large cat. Whatever. What was he worried about?
    
    While he wondered, the fetid aroma on his fingers staggered him silly, and he strode up the stairs. Each step leaving behind the smothering pressure.
    
    After a meditative wash, Oscar laughed about his little freakout.
    ~meat_left--
    ~c_hunger--
    >>>PlayMusic(hunger_main)
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
            ~PC_meat_eaten()
            ->firstbite_loop
            
            **putting it up.[] What was he thinking? The smell wasn't even appetizing. He shelved the patty and closed the fridge.
            ->firstbite_loop
            
           
                
           
    
=firstbite_loop
>>>ResetCampfire()
-(first_bite_loop)
->day1.first_bite

    =first_day_end
    Fatigue engulfed him and laid him out on the bed. He was at ease with the chore entrusted to him. Like anything before, he had to get it done no matter what, and it looked like it wouldn't take much. He just hoped the boredome wouldn't kill him before then.

    He was still hungry.
    *He slept.
    ~day_end_check()
    ->wake_up


==feeding_hour
>>>ResetCampfire()
    {What does Oscar do?|What was on {~Oscar's|our friend's|his} mind?|What was his plan?|What did {~Oscar|our friend|this man} have to do to see the next day?| What did it take for {~Oscar|the desparate vagabond|sorry fool} to survive?}
-(feed)
    
    +{meat_left >=1} {seen_last_turn(->feeding_hour.creature_choice)} [{&{Feed|Nourish} the {old|beloved} {~boy|gal}.|Give the {~cat|dog|pet} some meat.|Bring food to the {thing|creature|monster} {~below|downstairs}.}]
    ~c_hunger --
    --(creature_choice)
    ->feeding_hour.feed_creature->
    ->feeding_hour.feed

    +{meat_left >=1} {seen_last_turn(-> feeding_hour.meat_choice)} [{{~Curb|Restrain|Ease} his {hunger|gastric desire|starvation}.|{~Listen to|Satify|Comply with} his stomach.| {Get|Acquire|He needs} a {~bite|taste|piece} of that {~grub|food|meat|nourishment}.}]
    --(meat_choice)
    ->feeding_hour.feed_PC->
    ->feeding_hour.feed
    
    +{meat_left > 0} {CHOICE_COUNT() <= 1}
    [Time for bed]
    ->day_end_loop
    
    *{meat_left <= 0} There was no meat left...[]
    ->out_of_meat
    
    //TODO finish these (DONE for the game jam for now.)
    =feed_creature
    {
    -day == 2:
    ->feed_creatureday1->
    -day == 3:
    ~meat_left --
    ->feed_creatureday2->
    //-c_hunger == 2:really weird (take it out for now.)
    -c_hunger == 3:
    When Oscar goes to feed the creatue, he waits a very short amount of time to illicit a response from it. It was waiting, maw agape to receive its dinner. Oscar feels its teeth and they hold onto him while he avoids not tearing his skin. This hasn't happened before. Was it because he neglected to feed it?
    ~meat_left --
    ->-> //He was a statue with senses focused on the touch.
    -else:
    {~He|The fool|Oscar|The poor man|Our hungry friend's|The struggler|Our impoverished companion} {~grabbed|siezed|stole|snatched|plucked} a {~tray|glass container|puck|patty|wad|slab|lump} and {~took|brought|transferred|rushed|escorted} it {~down below|downstairs|under}. He {~funneled|forced|guided|sent|directed} the {~unit|portion|meal|meat|ingredient|carne} through the {small flap|dog door|hole|fold|pit} and {waited|signaled|called|beckoned|gestured} for the {~dog|cat|old boy|old {girl|gal}|creature|thing|being}. {~As|Like} {~always|usual|before}, the {~pet|beloved companion|animal} goes and licks his hand clean. Oscar {~goes back|ascends} {~upstairs|up the stairs}.
    }
    ~meat_left --
    ->->

    =feed_creatureday1
     He grabs one of the remaining {print_number(meat_left)} containers and hauls it down the stairs. Plopping the portion into hand, he whistled and called the {~pet|cat|dog} to the door. He readies his arm for the old {~girl|boy} to receive their dinner.
    *He waited a while[...], but eventually a tongue emerged to claim its meal. Slurping away every piece it can find. The scratch of every lick grew into discomfort after a while, but Oscar could handle it. When finished, he avoided contact with his grimy hand and scrubbed it clean upstairs. 
    ~meat_left --
    ->->
    
    =feed_creatureday2
    Oscar knew the routine, he headed down.
    He maneuvers the food from the glass, to his palm, and through the doggy door. A heavy and damp warmth hugged Oscar's wrist. He waited like always. It never stopped feeling like an eternity.
    *He felt[...] the fat from the provision leak between his fingers. The tails of oil left a tingle where they ran.
    
    -He heard dragging slowly make it's way to him. Jowels glided over his hand before the same tongue started its procedure. The creature slipped away before he got a proper feel.
    ->->
    
    =feed_PC
    {
    -PC_meat == 0:
    ->feeding_hour.firstfeed->
    -PC_meat == 3:
    ~PC_meat_eaten()
    ->feeding_hour.transform->
    -beastly == true:
    ~PC_meat_eaten()
    {shuffle:
    -In the seconds it took Oscar to finish off his morsel, he delighted in the prospects of seeking another supply to soothe his hunger. 
    -He clawed out a lump and shredded it so swiftly, he was left to lick the residue off his fingers.
    -This poor being finished his meal in a blink. He surpressed a fit at the thought of having to share his food. He considered the possibility of taking them back, if he had to.
    }
    -else:
    ~PC_meat_eaten()
    {shuffle:
    -Instead of having sleep for dinner, Oscar decided he could stand to eat the meat. He worthlessly promised that this would be the last time he'd make such a grotesque compromise.
    -The crude smell taunted him to retch but he held together. The lump sailed all the way down his gullet.
    -Oscar took a bite of the undetermined food. Even if its intensity was somewhat reduced from the cold, a lightly rancid flavor flooded his mouth.
    -He edged on opting out when the slimy patty hit him with a fermented aftertaste. It went down well enough but he tried to huff out the taste.
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
    ~PC_meat_eaten()
    ->->
    
    =transform
    Unremittingly, Oscar scraped for a meal from the storage and brought it in for a whiff. He was familiar with it but he wanted to refresh himself.
    *He pushed[...] the chunk of meat against his teeth. His fangs etched canyons into the mass and it filled every corner of his mouth. The taste of cream left out overnight and rancid eggshells flood his nostrils. He craved it.
    
    -The outer dryness competed with the heavy juices that squeezed out from the meat, invigorating his fervor. Swallowed pieces burned away anything else he had inside. His primal needs dared each other to rip apart the strands of his mind.
    
    *He wanted more.
    **He[...] passed out.
    
    -Oscar felt blades forged by famine cut from within his belly. He stood up and analyzed the remains of his dinner strewn across the floor. Oscar tried not to hurl his guts when he cleaned the mess around him.
    ->->
    
    
    =out_of_meat
    ->alive
   /* {
    -PC_meat >= 9:
    ->meat_end
    -else:
    ->alive
    }*/

==day_end
    {
    -c_hunger >= 4:
        ->creature_end
    //-PC_meat >= 9:
    //    ->meat_end
    -meat_left < 1:
        ->alive
    -hunger >= 3 && meat_eaten == false && (!wd_episodes.starve1):
        ->wd_episodes.starve1
    -hunger >= 4 && meat_eaten == true && (!wd_episodes.starve1):
        ->wd_episodes.starve1
    -hunger >= 5 && wd_episodes.starve1 && (!wd_episodes.starve2):
        ->wd_episodes.starve2
    -else:
    //~day_end_check()
    ->wind_down->
    //<-pillow_thoughts
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
    
/*=pillow_thoughts //maybe for these shuffleblocks you direct them elsewhere completely.
{
    -beastly == true:
    {shuffle:
    - Faint chittering comforted him with the assurance of a potential snack.
    - A swarm of aromas tugged at Oscar's urges. The tempting feed in cold storage, the pests in the walls, and the unseen beast below. A bouquet of entities that obediently played their own part in this artificial abattoir.
    - His appetite never stopped wanting. He could hunt for what it wanted, but that wouldn't stop its irrevocable impulses. It couldn't.
    - Oscar closed his eyes and every hair on his body pointed outward to any fluctuation in the air. The ocean of nerves perceived every crawling insect on his knitted shelter. He turned to reset his focus.
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
->DONE
    */
==wd_episodes

    =starve1
    >>>ChangeCampfire(Dusk)
    Oscar had a hard time believing his innards weren't being carved out. His sight didn't match the sensation. Desparation took hold. Every motion pushed the imaginary tool further in, pulling more of him out.
    *He stepped[...] into the living room and a pain exploded from his gut. He was knocked clean off his feet but was confident in a solution. 
    
    -His head strained to pair his quarreling vision together, and he dug his fingers into the embellished terrain. His palms cramped as he followed the floor's etchings to the kitchen. The fridge pulled into view. He slings a hand around the handle.
    
    *Another pang of hunger[...] pulls him down. Bewildered, he held his stomach, breathing the pain away.
    
    -Oscar took a minute before he launched another hold at the handle and dragged it open. His void bowels threatened to drag him into unconsiousness, but a sterile haze poured over him, leaked into his nostrils, and tightened his skin.
    
    *Oscar took a deep breath[...] and pulled himself up. Agony stretched from his abdomen to his chest. One he reached the shelves, focus shifted from the ache to his sight.
    -(globs)
    >>>ChangeCampfire(Bloody)
    The {print_number(meat_left)} obscene globs of flesh waited for him. Instinct ordered him to ravage the prey and he hooked two handfuls. He poured the meat down his throat to soften the anguish in his core.
    He hacked and coughed to clear he way down. The saliva too slow to slide everything down, but he consumed more to force it. Oscar inhaled through his nose while he took a minute to will the bulk through.
    *He collapsed[...] into a meditative sprawl which cleared his mind. He felt the hunger deepen, layers of agitation distending from his organs.
    -He just ate, though. He should be okay for a while, right? He strained to stand up and hobbled carefully back to his bed. He told himself he was healthy to make sure he fell asleep.
    ~starvation(starve1)
    ~c_hunger++
    ->wake_up
    
    =starve2
    >>>PlayMusic(hunger_fear)
    >>>ChangeCampfire(Bright)
    Dogged agony rended outward with gastric cries, piercing all the way up to Oscar's temple. The floor collides with him in his fight to fathom {~the moment|this phenomenon}. His grimacing and wheezing partitioned the pain enough for him hunt the salve to sate his affliction.
    He flitted in and out of consciousness. Every blink shifting him closer to the reliable storage. Fingers pulling hard enough for bone to nearly push right through skin.
    *Pull.
    **Pull...
    ***He pulled[!] and crashed into something. His brow was against the familiar machine.
    
    -(Instinct)
    >>>ChangeCampfire(Bloody)
    Gratitude blazed forth a crusade of fingers in pursuit of his voracious desire. Fingertips drew bloody streams up the mechanical mountainside. Cords of flesh unlatching the gate to summon that precious aura of raw and rancid delight. Oscar was...
    
    *seeing[...] the {~glow|light} that {~glimmered|lit} their {~luster|grain|grease}
    **hearing[...] the {static purr|hum} that {~preserved|conserved} his prize
    ***smelling[...] the {~fetid|foul|malignant} {~miasma|stench|odor} rallying his {~madness|frenzy|ferocity}
    ****touching[...] the carnal {~texture|beauty|craftsmanship} that would {~breed euphoria|transcend his flesh}
    *****The taste[...] eluded him.
    
    - (losing_it)
    >>>PlayMusic(hunger_fear)
    
    Acrid deformities merged in his bowels to rush to their freedom, corroding the path. Oscar convulsed in shock as his mouth erupted into a bile-strewn force. Spraying out every last remnant he consumed in this unholy butcher's testing grounds.
    
    *Weakness[...] interjected a moment of clarity. Veins uncoiled their grasp on his skull.
    {|>>>ResetCampfire()|}
    **What was happening?
    ***Why was he doing this?
    ****He had to stop.
    *****Could he stop?
    
    -It was only a moment.
    
    *Instinct[...] boiled within.
    
    -(gone)
    >>>PlayMusic(hunger_terror)
    >>>ChangeCampfire(Bloody)
    Ravenous greed overthrew reason, demanding the withering human to collect the freshly spewn treasure. His hands cupped the virulent {~puddle|flood|soup} dampening his knees.
    *Excited.[] He drains the {~vomit|puke|soup} from his palms, pouring more onto his lips. Splashing like a child in toxic mud.
    
    -It was just fun. He was so tense, so anxious about everything. He could've been having fun the whole time.
    
    *He was upset[....] he wasted so much time being a killjoy. <>
    -Moping around instead mopping up the pool that reached for him. The thing lowered his head and started to lap up the mess.
    
    *Lucidity[...] was lost on him. He was beyond the throes of famine.
    ~starvation(starve2)
    >>>PlayMusic(hunger_terror)
    >>>ResetCampfire()
    {
    -meat_left <= 1:
    ~PC_meat--
    ->endhub
    -else:
    ~c_hunger++
    ->wake_up
    }
    
//maybe take out the funcion here and just insert it into each night transition.
==day_end_loop
 ~day_end_check()
 ->day_end

==wake_up
    >>>ResetCampfire()
    {
    -hunger >= 2 && (!wu_episodes.ate_rat):
        ->wu_episodes.ate_rat
    -hunger >= 4 && wu_episodes.ate_rat && wd_episodes.starve1 && (!wu_episodes.ate_nails):
        ->wu_episodes.ate_nails
    -hunger >= 5 && wd_episodes.starve1 && wd_episodes.starve2 && (!wu_episodes.ate_fingers):
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
        *[Enamel crushed his...]Eyes flashed open while he struggled for air. He caught it and relaxed, but didn't feel like he slept at all.->->
    -Distant clattering shook Oscar awake and he began to filter possibilities as he headed to the source. Pinpricks flew up his back in his search for an encounter.
        Strips of wilted, red grime painted on the kitchen floor led to an exposed container of meat. It laid untouched.
        *Oscar scooped[...] the sustenance back into the fridge. The unseen needles continued their dancing on the stage of his spine.->->
    -Tendons extended at the risk of tearing from his hand. His shoulder started to ease out of socket...
        *and he fell[...] to his knees. Oscar blinked into consciousness and found his grip clawed around the refrigerator handle. Shivering aches ran through his shoulder as he untucked each finger from the door.->->
    -Oscar's head throbbed him out of sleep.
        *He needed something[...] to eat. He hoped this ordeal would end soon.->->
    }

//TODO finish the stuff below lol (it's done for the game jam for now but the finger episode needs work.)

==wu_episodes

    =ate_rat
    >>>PlayMusic(hunger_fear)
    >>>ChangeCampfire(Bright)
    //{meat_eaten == true:
    //~hunger--
    //}
    *Oscar felt[...] a soft tickle ease him into consciousness. <>
    -He went to the sink to spit out the unknown piece. A fuzzy pressure had gotten trapped between two of his teeth.
    
    *He pinched[...] the bit and started to pull a string until it became taut.
    
    -His nerves went frantic in question of the entity stroking his gums. He readied his nails to fish out the strand. He dug around squeezing and tugging until resistance signaled a catch.
    
    *He clamped[...] his fingertips around it and pried until the gap between his teeth was empty again. He held up a hair that was anchored by a shaggy speck of gore.
    -His composure falters as he flings the remains in the sink. He retched until anxiety rooted in him, but he forced himself to run the faucet. The panic washed away when he filled his mouth and spat out the lingering feel where the scrap had been. He would be fine. He's ok. He dispelled a shaky sigh.
   
    *Oscar thought to himself[...], if he really had eaten a rat, it didn't do much to fight off the ravenous waves inside of him.
    >>>PlayMusic(hunger_fear)
    ->feeding_hour

    =ate_nails
    >>>PlayMusic(hunger_fear)
    >>>ChangeCampfire(Bloody)
    *Chills[...] hammered away on Oscar until he awoke. <>
    -The sensivity came from his hands and an ache rose along with his awareness. Attempting to pull the covers off, he winced from the stabbing in his fingertips. He carefully slid this hands out from under the linens.
    *Mangled cuticles[...] frayed around the flayed skin. An arbitrary selection of fingers were red where nails used to be. The air stung the uncovered nerves.
    
    
    -Oscar hurried to the bathroom to wash off the blood and flinching until his fingers acclimated to the steady flow. In his wait, he felt a poke in the back of his throat.
    *He reached with his tongue[...] but it was too far back.
    **Tilting his head[...] back, he forced his tongue to reach farther but felt a cramp coming.
    ***He took a[...] damaged finger and delved for the fragment. Squirming from the minor bouts of pain. He dragged the shard out.
    -He saw peeled skin stuck to the nail and distress endangered his sanity. A migraine paralyzed his face into a static pain. His breath raced but he resolved to control that first. It was the last thing he had any influence over and he steadied it. Red-faced, he felt reservoirs fill from the corner of his eyes.
    *He shook[...] his head and committed to patch up his injury. He had no explanation for this, but he had to do what he needed. He was already here.
    He finished up.
    
    -Every movement of his fingers translated to tiny aches at the tips.
    >>>PlayMusic(hunger_fear)
    ->feeding_hour

    =ate_fingers
    >>>PlayMusic(hunger_fear)
    >>>ChangeCampfire(Bloody)
    *Streaks lay[...] scattered around Oscar when he wakes up from the floor. <>
    -His overbearing gluttony kept deepening the cracks of his mind. The fresh wound on his hand flooded him with a potent suffering.
    
    *It was too much.[] How was this supposed to be fair? He was just hungry. Not mad. People could survive a while without food, why was he picking himself apart.
    -No logic could be constructed to justify this occurrence. He lay there, defeated from the designs of this wannabe slaughterhouse.
    
    Our starving friend struggled to believe his finger was gone. The gap between his fingers never stopped reminding him of how much pain it was in.
    >>>PlayMusic(hunger_fear)
    ->feeding_hour

TODO endiiiiiiiiiings these are super important
==endhub
    {
    -meat_left > 0:
    ->wake_up
    -c_hunger >= 4:
    ->creature_end
    //-PC_meat >=9:
    //->meat_end
    -else:
    ->alive
    }
/*
==meat_end
You become a creature (Oh no!) Then, you EAT the creature downstairs!! Then you molt and morph into an unrecognizable mess. You lay starving, until you hear someone calling out to feed you.
*/
->epilogue

==creature_end
>>>PlayMusic(hunger_fear)
>>>ChangeCampfire(Alien)
The thing at the bottom of the stairs was calling for him. Demanding that it needed to be fed. It slammed against the door wanting more than to be heard.
    *Oscar went[...] down the steps.
    He saw the flap on the door judder to every violent declaration. <>
    -Deformed viscera seeped through the folds, carelessly dripping bile. It was forcing its way through the hole.
    *Oscar backed[...] up but could not stop staring. His hopes of escape left a while ago.
    -(thing)
    >>>PlayMusic(hunger_terror)
    The vague form of human head clothed in tainted skin started to rupture through. It's tattered flesh split from the nose and struggling to stay on. It lurched further in, its skin peeling back as it strained to teeth at him in a demented grin.
    Abhorrent sniveling trickles out of the creature. It is compelled to make itself heard and meets Oscar's eyes with its own sunken pits. Saying only one word, "meat."
->epilogue

==alive
>>>PlayMusic(hunger_main)
>>>ResetCampfire()
Oscar lay motionless, reminiscing on the emptiness that had eaten away his days here. His mind struggles to stay cohesive.
    *He just[...] lays there. Who knows how much time has passed.
    -He hears a door open but not the one from below. He takes his time getting up, his muscles straining to move at all.
    *He walks[...] over to the door he first woke up from. On the nightstand is an envelope filled with cash.
    -He collapses and whimpers.
->epilogue


==epilogue
>>>PlayMusic(hunger_main)
>>>ResetCampfire()
Enjoy the rest of your time around the campfire
->END