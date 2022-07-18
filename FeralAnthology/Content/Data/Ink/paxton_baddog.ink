VAR trust = 5
VAR trapped_survive = false
VAR egg_survive = false
VAR foxhunt_survive = false
VAR random_int = 0

-> intro


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
    Cassie knows that humans like to think that they are in control (otherwise they get scared and confused). She finds a nice puddle of moss and drinks when the humans get close.

- There are two campers, one in blue and one in yellow-brown, and they both smell like sweat and beer. The yellow-brown one has hair on its face (not all humans have this) which carries the sweet smell of meat.
    
    Cassie begins to plan. A{greet:n adorable}{sneak: sneaky}{wait: patient}, devious plan. 

+ [Get that meat]

- {greet: Cassie pretends to be a good dog. She sits. She looks friendly. She makes sure the blue human can see what a good dog she is.}{sneak: Cassie takes the clever way, she avoids meat-hair-face and begins to walk ever closer to the blue human until it notices her arrival.}{wait: Cassie acts like she just noticed them. "Who's this? Friends?" She feins a curious sniff at the blue human.}

"Aww! <something something> dog! Isn't she just so cute? <something something> owner?" The blue human was a good choice: it doesn't know Cassie is a bad dog.

The yellow-brown human says it doesn't like Cassie. It jealously guards its meat. "<something something> wild. No collar <something something> leave it alone."

Cassie will have to...

+ get creative.
>>>show_trust()
-> learn_trust

= learn_trust
{The two humans watch Cassie closely.|}{trust == 10: "Just look at her, she's hungry." The face-hair human sighs when the blue human says this, and reveals his stash of bag meat. It takes out a small piece and crouches down.}

* {trust < 10}[Flop ears from side to side]
    ~trust ++
    Cassie tilts her head one way and then another. "Aww, she's <something something> such a cute puppers. <something something>!"
    
    The yellow-brown human with the hair-face isn't as easy to impress. It says nothing.
    -> learn_trust
* {trust < 10}[Lay down]
    ~trust += 2
    Cassie sits low, folding her paws and letting her tongue loll away. The humans look at each other (this is most of human body language) and then back to Cassie. "<something something> trained. Look!"
    -> learn_trust
* {trust < 10}[Circle the humans]
    ~trust ++
    Cassie needs to know every angle before she strikes. Her tail keeps wagging (she can smell the meat) but the yellow-brown human with the hair-face can tell she's plotting.
    
    "See? <something something>." The blue human disagrees with it. "You <something something> alone in the woods."
    -> learn_trust
* {trust < 10}{CHOICE_COUNT() < 3}[Roll on the ground]
    ~trust += 3
    Cassie feins trust by rubbing her back into the fallen leaves. Both humans look at her with faces that say "I like you," and "I will not hurt you." 
    -> learn_trust
* {trust < 10}{CHOICE_COUNT() < 3}[Give a friendly bark]
    ~trust --
    Cassie gives her loudest, friendliest bark. A bark that says "Hello, friend!" The blue human jumps a little in the air (out of newfound friendship) and makes a small noise of friendness.
    -> learn_trust
* {trust < 10}{CHOICE_COUNT() < 3}[Make sad eyes]
    ~trust += 4
    Cassie decides to do the one thing no human can ignore: beg. She hates it. Even though Cassie is only pretending to be a good dog it makes her throat itch. The humans make happy noises. They can't smell her bile rising.
    -> learn_trust
+ {trust >= 10} Take the meat
    >>>PlayMusic(baddog_main2)
    ~trust = 0
    Suckers. Cassie doesn't bother with the tiny bite, instead she lunges for the whole bag of meat and runs!
    
    The face-hair human shouts. Cassie is reminded of all the mean things humans have called her. Mongrel. Animal. Bitch. She embraces them all. Cassie wolfs down the meat and licks her lips, savoring every second of it.

- Cassie loves being a bad dog.

+ [Continue]
    >>>hide_trust()
    ->development

=== development ===
>>>ChangeCampfire(Sky)
Cassie's amazing morning has her feeling satisfied. These woods belong to her. So does all its meat (which she has buried in strategic locations that only sometimes get forgotten).

+ [Continue]

- As Cassie trots around her domain something catches her nose that she has not smelled before.

+ \*Sniff*

- What IS that? She smells stone dust and rotting fruit and those little bugs that don't taste good, but there are other things too: smoke, cow piss, and lightning.

It's like nothing Cassie has ever smelled before - and it's RIGHT in the middle of HER woods. The scent isn't hard to pin down. After a while she sees the source.

+ A deer carcass.
>>>PlayMusic()
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
    Every paw forward makes Cassie's fur shudder. Waves of sick heat pulse from the body. Something ripped into the deer. Cassie passes a piece of inside that would have been eaten by crows by now if the smell wasn't so wrong.
    
    Cassie notices there aren't any birds here. No bugs. The carcass is alone. Except for Cassie, who can now see that something was put into the deer's dead body.
    ->examine_body
    
* {TURNS_SINCE(->close) == 0}Smell the outside ins
    Cassie can't even prepare herself for the smell before her hard-earned breakfast pushes up of its own free will. The smell of dried meat vomit mingles with the lightning/dust/wrong eggs smell coming out of the carcass.
    
    Cassie blinks away tears as she looks closer at the hole. It's not a bite, the wound looks like something sucked the deer from a single tooth the size of Cassie's head. Things wriggle inside the deflated meat.
    ->examine_body
    
* {TURNS_SINCE(->close) == 0}Look at the inside outs
    Cassie has made a lot of messes in these woods, but she's never gotten inside strings up a tree before. Cassie watches fresh blood drip off leaves that seem to burn. No bugs are making homes in the carcass, but...
    
    Cassie gets close to the ground to look at a writhing hunk. It glints blood but smells like ash. It's so quiet. How is it moving? 
    ->examine_body
    
* {TURNS_SINCE(->close) == 1}Taste the good meats
    Cassie's stomach has needs of its own, even though her nose violently refuses. The hole in the carcass is right in the middle (so big!) so the legs should be fine...
    
    ++ nibble
        YECHK!!
        
        Cassie's whole body convulses. The taste crawled up through her teeth and behind her eyes, a taste of car oil and maggot blood. She vomits again and is thankful to taste anything else.
    ->examine_body
    
* {TURNS_SINCE(->close) == 1}Push the writhing bits
    Cassie watches a hunk of deer liver squirm away from the carcass. A piece of bone rocks back and forth. Cassie carefully nudges one of the bloody masses that is trying to flee the carnage of its previous host... 
    
    ++ and it screams.
        Cassie covers her ears in her paws but the screech burrows in. All the sudden it's gone, and when she looks up the writhing flesh is withered and still.
    
    ->examine_body
    
* {close}Find what did this
    This is wrong. Cassie has seen a lot of wrong things, she knows the difference between bad and wrong. Cassie is reminded of her owner. A fat, evil human who loved to hear dogs yelp in pain. Wrong.
    
    Cassie couldn't let that go on. It wasn't just her that yelped in the dark. She remembers the taste of neck blood and the yelp humans make in pain. Bad dogs can make wrong things go away. And Cassie is a bad dog.
    
    She sniffs and finds the same inside-out smell carried by the wind. 

    ++ Follow it, wherever it leads
        >>>ChangeCampfire(Sky)
        ->backwards_intro

* {!close}Leave it alone
    Whatever happened to the deer it isn't worth Cassie's hard-earned breakfast to find out more. She picks a direction away from the closest pieces of thrown insides (a chunk of liver) and trots quickly.
    
    Cassie is reminded of the dogs that didn't do good at fighting. They would have their insides hanging out and blood spurting from their necks while Cassie listened and smelled from the dark room. Cassie hates the memory of the dark room.
    
    Before Cassie realizes it she's picked up the inside-out smell again, but this time it's fresher. Harsher. Something is making that smell right now.
    
    ++ Go and see
        -> backwards_intro
    
- (backwards_intro)
>>>ChangeCampfire(Alien)
Cassie hears the gurgling of a hiker whose insides are being sucked out. Cassie is frozen looking at a human on the ground, twitching in pain. Something that is not a dog is digging in the hiker's chest, slurping out blood and bits of bone.

* Watch

- The thing that is not a dog almost looks like a dog if you had never seen a dog before. Its tail is in the front and is doing the slurping. Its head is in the back and is growing new ears as more chunks get slurped. Its legs are only mostly on wrong and it forgot to put on its skin.

>>>PlayMusic(baddog_alien)

Cassie watches the backwards not-a-dog as its veins pump blood and stuff that is not blood. Cassie is very glad she has skin. That's when she sees something else. Something attached to the hiker. Something that cannot get away on its own.

+ A dog

- He's a little dog, a good dog, a dog that is sad his owner's insides are getting slopped out. The good little dog is barking. Maybe he doesn't realize that when the not-dog is done turning his owner inside out it will do the same to him.

~trust = 5
>>>show_trust()
->trapped

= trapped
{The backwards not-dog has its front-tail stuck deep into the human's chest, filling it with something foul as it sucks out the insides. The little dog barks, his leash still attached to his owner.|The human flails, somehow still alive as its insides are sucked out. It pulls out a thing Cassie knows is called a 'gun' but the backwards dog doesn't stop. Thunder splits the air and one of the backwards dog's legs flies off. The sucking tail is pulled out of the human's chest and plunged into its throat. The human stops flailing.|The little dog barks his head off. He lunges and bites at muscle and veins where the backwards dog's skin should be. Sickly fluid pours out instead of blood and the little dog recoils in fear and disgust. The backwards dog doesn't take its tail out of the human's throat.|Cassie retreats as the backwards dog takes its tail out of the human's throat. Its wrong-end head is swollen with new flesh. Ears grow bones and veins split to fuel sticky new-birthed limbs. A third pair of legs unfolds as the backwards dog gets longer, and its tail tastes the air for more meat to add to itself.|->devotion}

* Bark fear into the little dog
    ~trust ++
    The little dog doesn't know what to do. He's angry that his owner is being turned inside out. He wants to attack, he wants to find justice, but Cassie knows that isn't going to work.
    
    One loud bark is enough to get the little dog's attention. He is snapped out of his rage for a moment, but only a moment.
    -> trapped
* Pull out the little dog's leash
    ~trust -= 2
    Cassie knows that once the little dog sees he is no longer bound to his owner he will save himself. She runs at the little dog, grabs his leash, and pulls.
    
    The little dog snaps, taking skin and fur from Cassie's side. She drops the leash out of shock, it was never keeping the dog here.
    -> trapped
* {CHOICE_COUNT() < 2} Try to pull the human away
    //TODO: bug: you can do this after the description says the alien lets go of the hiker...
    ~trust += 2
    Cassie bites the hiker's pants and yanks. The body doesn't move, it's firmly anchored by the backwards dog. The little dog bites the other pant leg and both dogs pull... but they can't break the backwards dog's grip.
    -> trapped
* {CHOICE_COUNT() < 2}Intimidate the backwards dog
    ~trust +=2
    Cassie pulls her shoulders back, she flexes and growls a clear threat. "LEAVE or face the consequences." The good little dog whines. He paws the ground anxiously, knowing Cassie to be a serious danger. But the backwards dog doesn't react to her.
    -> trapped
* {CHOICE_COUNT() < 2} Drag the little dog away
    ~trust -= 3
    Cassie's patience runs out, she picks up the leash and pulls. Her weight is more than enough to overpower the little dog, but he fights back. The little dog barks, jumps, claws, anything to get back to his owner.
    
    Cassie holds him away for a minute, but he doesn't stop fighting. She drops the leash and the good little dog runs right back to its owner's side. 
    -> trapped
+ (run) [Tell him to run {run == 1:again}{run == 2:to safety}{run == 3:one last time}]
    {trust >= 7: -> escape}
    {~Cassie barks warning. "Run" she says, "you are in danger."|Cassie growls, "Go! Leave!"|Cassie stomps the ground, low, "Shoo!"|Cassie whines, laments, mourns the little dog's fate. If only he would leave.} The little dog refuses, he can't abandon his master. {|Not yet.|He's too good of a dog.|}
    -> trapped
    
- (escape)
    ~trapped_survive = true
    >>>hide_trust()
    The little dog looks at his owner, shriveled and pulled apart. Nothing can help, now. Cassie nudges the little dog and he steps back from the writhing blood. Both of them make a slow retreat, like good dogs.
    
    Cassie is careful not to draw the attention of the backwards dog. She follows its scent trail backwards, assuming it will not retrace its steps. The little dog doesn't follow, he follows a different trail, leaving Cassie all alone to find out...
    
+ where the backwards dog came from.
    ->the_source
    
- (devotion)
    >>>hide_trust()
    >>>ChangeCampfire(Bloody)
    The backwards dog points its tail at the little dog, still barking next to his owner's now empty carcass. Cassie backs away as the little dog lunges. His muzzle is pierced by the backwards dog's tail and the rancid sucking begins again.
    
    Cassie knows it will not take long for the little dog's insides to fall out. She runs. Cassie chases the scent that the backwards dog left, it would not retrace its steps searching for meat. She runs...

+ where it came from.
    ->the_source

- (the_source) The backwards dog's scent fades as Cassie follows it wrong. It isn't hard to backtrack: broken branches, puddles of backwards piss, carcasses. Cassie remembers her owner's pack: foul humans who liked to hurt dogs. She remembers them scouring these woods for the dogs she was caged with. It isn't hard to backtrack. To play keep away.

    >>>PlayMusic(baddog_main1)
    >>>ChangeCampfire(Dusk)

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
{|The humans are practically ignoring Cassie. They can't smell the wrongness so they get closer. The big rocks have the same lilac shimmer Cassie saw above the deer corpse.|The humans notice Cassie getting closer. The yellow-brown human picks up one of the foul rocks and hurls it at her. It doesn't notice that the rock is slick with the backwards dog's not-blood.|Cassie sees the big rock breathe. The humans don't notice the rock exhaling fetid fumes. Something is inside.|Cassie has the human's attention when the big rock splits. Ooze pours out and something writhes right beneath their noses.|->idiocy}
{| |>>>ChangeCampfire(Night)| |>>>ChangeCampfire(Lime)|}

* Bark at them
    ~trust ++
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
* {CHOICE_COUNT() < 3} Get between them and the rocks
    ~trust += 2
    Cassie sprints down to the bottom of the ditch. The rancid smell burns her eyes and she knows the rocks are just as backwards as the thing that is not a dog, but she places herself in harm's way anyway.
    
    "What the fuck!?" The humans jump back, but they don't go far. Cassie hopes they understand. <>
    -> egg_trust_check ->
    -> egg
* {CHOICE_COUNT() < 3} Steal their stuff
    ~trust -= 2
    Cassie knows that humans love their stupid shit, like the empty plastic bone toy hanging from the yellow-brown one's butt. She bites it off and runs a short distance. The stupid yellow-brown human yells, but doesn't chase her.
    -> egg_trust_check ->
    -> egg
* {CHOICE_COUNT() < 3} Throw up on the rocks
    ~trust += 2
    Cassie's stomach complains that she doesn't have enough to throw up. She gets close and makes a noisy, wet show of forcing up acid and half digested food onto a wrong rock. Both humans stare blankly.
    -> egg_trust_check ->
    -> egg    

= egg_trust_check
{trust:
    - 1:{~"What is that dog doing?"|"Why does that dog <something>?"|"Where did that dog <something something>?"}
    - 2:{~"This is weird..." Cassie knows those words. Weird is bad.|"What on earth..." confusion is a start.}
    - 3:"<something something> that dog is trying <something something>?" The blue human is paying more attention to Cassie.
    - 4:The blue human starts to step away from the rocks, but the face-hair human stays right in the middle.
    - 5:"Vance{|, really}... <something something> wrong { here|}." The stupid human with its stupid hair-face doesn't believe its human friend.
    - 6:The yellow-brown human finally gets the message and backs away. One of the rocks shudders and cracks, gushing not-blood into the dirt. -> back_away
    - else: The humans {|still }want nothing to do with Cassie.
}
->->
    
- (back_away)
    ~egg_survive = true
    >>>PlayMusic(baddog_alien)
    
    "What the fuck..." the stupid hair-face human actually bends down to look at a pair of wrong-bending limbs that drag a backwards puppy from the sludge.
    
    A wave of foul oil stench pushes Cassie away, and then the ugly pup begins to wail. Another shrill whistle responds and Cassie doesn't wait, she runs. "Where <something something>--"
    
+ "Shut up and run!"
    ->foxhunt
    
- (idiocy)
    >>>PlayMusic(baddog_alien)
    >>>ChangeCampfire(Bloody)
    There's nothing more Cassie can do. Except leave. "Dumb dog, probably <something something something>." The hair-face human leans back on the big rock triumphantly and the putrid soil gives under the weight. The rock crumbles and something that is not a puppy is pushed out.
    
    Cassie sees the not-blood on the human's paw. "What the fuck--" The not-puppy impales its tail-face into the stupid human's leg. The blue human screams. The stupid-face-hair human crumples in pain, then goes still.
    
+ Back up further
    >>>ChangeCampfire(Alien)
    The backwards puppy inflates with blood, gorging itself on bits of stupid. Cassie watches the blue human kick at the backwards puppy, ripping its tail from the leg and squeezing out a shrill scream. Another wrong scream perforates the air in reply.
    
    "Oh god-" the blue human is shocked into stillness, "what was THAT?" Cassie knows. The backwards mother is coming for her child.
    
    ++ Run 
    ->run

-(run)>>>hide_trust()
>>>ChangeCampfire(Night)
    The {egg_survive:two humans run away together|blue human runs away on its own}, following Cassie's lead away from the rise-and-fall whistle of the backwards dog. Cassie is much faster than humans, it would be easy for her to leave {egg_survive:them|it} to the backwards dog and keep going. 
    
    Cassie remembers running through these woods, pursued by mean humans with chains and sticks. But Cassie isn't afraid of these humans. Not now. They are weak, pathetic things running for their lives from something they don't understand.
    
    ++ The hunt is on
    >>>show_trust()
    ->foxhunt

= foxhunt
{The woods are dark and humans can't navigate by smell. Cassie can hear the backwards dog speeding over roots on too many legs.|{egg_survive:A|The} human trips on a fallen branch. It curses and the backwards dog whistles in excitement. It knows its getting close.|Moonlight struggles to push through the clouds and leaves. Cassie can smell the lightning and rot that drips from the backwards dog.|"Oh shit! Oh fuck!" Now the human{egg_survive:s|} can see the backwards dog. Its long tail slithers out the front and points right at its fleshy prey.|->got_caught|"Oh God, Vance!" The blue human loses speed. It doesn't realize that the backwards dog is already back on the move. About to pounce.| ->got_caught}
{|>>>ChangeCampfire(Alien)|>>>PlayMusic(baddog_terror)|}
{trust >= 10: Cassie knows the ravine is up ahead. A sheer drop into a running river.}

- (foxhunt_choices)
~ random()
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
    ~trust ++
    For a moment Cassie falls back, making sure the blue human can see her, then she REALLY runs. Cassie doesn't look back to see if the human{egg_survive:s are| is} trying to keep up. Either {egg_survive:they will or they|it will or it} won't.
    -> foxhunt
* {random_int == 0}Nip at {egg_survive:their|its} heels
    ~trust --
    The human{egg_survive:s are| is} too slow, Cassie slows down too to get close. The blue human smiles. Cassie puts an end to that by biting the air at its feet. The human yelps, but picks up speed.
    -> foxhunt
* {random_int == 0}{egg_survive}Get them to split up
    ~trust -= 3
    Cassie runs between the two humans, then veers sharply. If the face-beard human trips it will get caught, the whistling is close, but instead of splitting up it slows down. It shouts, they both shout, and the backwards dog lunges at the shouts from the underbrush.
    -> foxhunt
* {random_int == 1}Serpentine
    ~trust ++
    Cassie nearly runs over {egg_survive:a|the} human as she changes course wildly. The human{egg_survive:s|} follow her lead, randomly switching direction and forcing the backwards dog to slow down. 
    -> foxhunt
* {random_int == 1}Create a distraction
    ~trust += 2
    Cassie leaves the human{egg_survive:s|}, turning quickly and climbing a series of rocks. She mimics the backwards pup's shrill call. The not-dog slows, reorients towards Cassie, and makes a new noise. Like splintering wood or a field of cicadas. Cassie doesn't wait to find out what it means, she's already running.
    -> foxhunt
* {random_int == 1}Take a hard turn
    ~trust -= 2
    Cassie recognizes where they are. Up ahead are wide open fields. No hiding spots. She jolts to the side. The human{egg_survive:s don't| doesn't} catch on at first, but the backwards dog does. It closes the gap on the corner.
    -> foxhunt

* {random_int == 2}Jump wildly
    ~trust ++
    Cassie darts into a bush, then jukes and leaps in the opposite direction. The blue human watches her, then decides to take advantage of the backwards dog's need to reorient. It runs straight, gaining distance.
    -> foxhunt
* {random_int == 2}Bark encouragement
    ~trust --
    Cassie is loud. Cassie is loud on normal nights when she sees a frog, but when Cassie is running fast and breathing hard and being chased she is LOUD. The backwards dog leaps in her direction and the human{egg_survive:s|} jump{egg_survive: |s }too. {egg_survive:They don't|It doesn't} look encouraged.
    -> foxhunt
* {random_int == 2}Drop a branch
    ~trust += 2
    It takes a minute to line up the angle correctly, but Cassie finds the perfect spot. She's running fast with the backwards dog right behind when she jumps, hits a dead branch, and falls. The backwards dog hits the branch mid-air, tearing its exposed veins on the broken wood. Cassie recovers and bolts away, buying time.
    -> foxhunt
* {trust >= 10}Make for the ravine
    ~trust ++
    Cassie runs to the edge of a sharp cliff overlooking a rocky fall. She looks back for just a moment at the human{egg_survive:s|}, even with {egg_survive:their|its} poor eyesight {egg_survive:they|it} should be able to see Cassie in the moonlight. 
    
    ++ Cassie jumps.
        -> got_away
+ ->foxhunt_choices
    
- (got_away)
    >>>PlayMusic(baddog_alien)
    ~foxhunt_survive = true
    Cassie crashes into the water and bounces off the bottom of the river. She paddles up to the air, aching, and makes her way to shore. One of her legs doesn't work right.
    
    Cassie hears {egg_survive:two splashes as she swims. Both humans|a splash upriver. The blue human} jumped. No splash follows them. Cassie rests on the rocky shore and sees the backwards dog at the edge of the ravine...
    
+ It turns away.
    >>>hide_trust()
    ->conclusion
    
- (got_caught)
    >>>PlayMusic(baddog_alien)
    {egg_survive: ->stupid_caught}
    Just ahead Cassie sees the cliff of the ravine. Cassie remembers hiding in those rocks, outrunning bad humans. If she can get down there the backwards dog won't be able to follow.
    
    Cassie looks back for the blue human, it's following right behind her. That's when she sees wrong facing limbs grab the human's shoulders.
    
+ It's too late
    >>>ChangeCampfire(Bloody)
    The long tail gouges straight through the human's head and into its neck. A muscular heave pulls lungs and veins and so much blood up into the air. The weight of the backwards dog topples what is left of the human and it begins to slurp.
    
- Cassie knows she doesn't have long. She needs to use this opportunity to get away. But she lingers, for just a moment.

+ Only a moment
    >>>hide_trust()
    Then Cassie climbs down the ravine, makes her way to the river, and sits. <>
    ->conclusion

- (stupid_caught)
~ egg_survive = false
The face-hair human gets caught. But the backwards dog doesn't slow down, it breaks the human's spine, pulls out a few insides, and keeps coming for the blue human. It must know her scent was close to its pup.

* It's still coming
    >>>PlayMusic(baddog_terror)
    >>>ChangeCampfire(Alien)
    ->foxhunt

=== conclusion ===
>>>PlayMusic(baddog_main1)
>>>ChangeCampfire(Night)
- Cassie may be a bad dog, but she's not a monster. Not like the backwards dog. Cassie did what she could.

* {foxhunt_survive}The blue human escaped
    Cassie did a good thing keeping the blue human alive. If it were here it would call Cassie a good dog. It would be wrong, good things don't make good dogs, but that's okay. It would be nice to hear anyway.
    
* {!foxhunt_survive}But the blue human got caught anyway
    Cassie feels a little bad that the blue human couldn't outrun the backwards dog. She gave her opportunities, but the human wouldn't keep up. It didn't trust Cassie. Maybe it was right not to trust Cassie.
    
- 

*{egg_survive}Even The stupid human lived
    Which surprises Cassie to think about. Maybe Cassie tried a little too hard to help those stale beer smelling humans. They needed a lot of help. But, now that they got away, Cassie can be done with them.
    
*{!egg_survive}Probably nothing could have saved the stupid human
    That yellow-brown idiot was destined to have a bad end one way or another. Cassie didn't feel that bad about it, but maybe the face-beard human didn't deserve THAT bad of an end.
    
-

* {trapped_survive} A{!egg_survive and !foxhunt_survive:t least|nd} the little dog got away
    He was a good dog, right up to the end. Cassie couldn't understand faith like that, not in something that might turn on you. Cassie hopes the little dog picked a good path.
    
* {!trapped_survive}And a good dog died
    He was too attached to his owner. Cassie didn't want that to happen, and she tried everything she could think of. What kind of trust keeps a dog around for that?

- Cassie isn't a good dog, but she protected her woods the best way she knew how.

* And the backwards dog is still out there
    >>>PlayMusic(baddog_main2)

- The backwards dog isn't alone, either. It has a pup. Maybe more. The idea that they will live in Cassie's woods makes her fur hot. She can't allow it.

Cassie remembers the dead human had a weapon that could hurt the backwards dog. A gun. Slowly, Cassie begins to walk back to where the human died. She is going to kill all the wrong, backwards things in her woods.

+ Because Cassie is a bad dog.

-> END

=== function random() ===
~random_int = RANDOM(0,2)