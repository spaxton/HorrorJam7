// Character variables. We track just two, using a +/- scale yes, I just copied this over from the intercept story...
VAR feral = 0
VAR afraid = 0

//afraid leads to fumbling
//feral leads to violence/ strength

//forceful plus 1
VAR has_alcohol = false

//avoidant plus 1
VAR has_water = false

// calm
VAR has_tea = false

// doors left unlocked unless mind changed later 
VAR inspectionletter = false

//Ease of escape
VAR lockdoors = false
// if chain, lock and bolt are unlocked

VAR bolt = false

VAR chain = false

VAR doorlock = false


VAR call_sam = false

VAR nocall = false

VAR mentionletter = false

VAR hasknife = false 

VAR open_window = false

VAR reveal_bite = false

VAR sam_visits = false 

VAR phone_unplugged = false 

VAR footprints_discovered = false




-> title

 === function lower(ref x)
 	~ x = x - 1

 === function raise(ref x)
 	~ x = x + 1

=== description ===

Title: Working Title
Author: Gloomy

Description:
TW: Violence, Gore, animal cruelty, stalking, suicidal ideation?
Time:

->DONE

=== title ===
<center><h1> Hollow (placeholder title)


* [Unlock]
-> opening



=== opening ===

//mood:bleak

Wind and snow howl in the night. She rushes not to hurry inside.

The mat on the doorstep appears intact. She stoops to look more closely. It does not appear out of place.

She rises again and faces the door. She relaxes her hand and the keys slip loose from her fingers. She inserts the key and unlocks the door.

She will not allow the door to swing open. Instead, she is careful, turning the doorknob with precision, not letting go until she is sufficiently inside her apartment. -> enterapt

=enterapt

Everything is immaculate and white: blinding nothingness. There is nothing neither pleasant nor unpleasant in the air. She closes the door behind her, latching the chain, turning the bolt and the small one on the doorknob. Air seeps into her and she exhales softly.

She stops.

A thin envelope has breached the apartment. She stares at it too long before picking it up. Her name is handwritten in cheap blue ink, swooping letters. Another letter from the building management.

* Read now
-> read_now

* Read later
-> read_later

= read_now

~ inspectionletter = true

She sighs and opens the letter.

<i> Dear Resident,

It has come to our attention that some tenants have been locking their apartments. As a reminder, this is not permitted. Our maintenance crew will be doing required inspections to ensure everything is in order. Make sure to leave doors unlocked at all times. Thank you for your cooperation.

Sincerely,

Abaddon Management </i>

She holds the letter tightly and looks at the door.

* [Unlock the door]
-> unlock
* [Don't unlock the door] 
-> do_nothing

= read_later

It can wait.

She sets the envelope in a mail holder.

-> continue_inside

= unlock 

For moments she is frozen. 

Anger and disappointment bubbles inside of her. She is grateful for that. Those are better than fear. She thinks they might be stronger.

She goes through the locks.

//maybe a variable here for all locks and maybe countable for others not removed

-> door_locks

= door_locks

* unlock chain
-> unlock_chain

* unlock bolt
-> unlock_bolt

* unlock door
-> unlock_door

* do nothing
-> do_nothing




= unlock_chain 

~ chain = true
She unlocks the chain.

-> door_locks


= unlock_bolt

~ bolt = true

She unlocks the bolt.

-> door_locks


= unlock_door 

~ doorlock = true

She unlocks the door.

-> door_locks

* change mind
-> change_mind

= change_mind 

//if any of the other lock options were selected trigger a relock section...

She can't bring herself to do it.

She considers herself a disciplined person. Someone who follows through. But this doesn't sit right with her. 

->leave_door_locked 

-> relock_everything

= leave_door_locked 

-> continue_inside

= relock_everything 
~ raise(afraid)

She secures everything once more. She breathes.

-> continue_inside



= do_nothing 

She'll pretend she hasn't seen the letter. It doesn't feel right that she should leave the door unlocked.

She's been a good tenant. A good person. She has always done as she is told but this is different.

If there is an argument she can try to explain. She can hope they will be understanding. She has no reason to believe they will be but she can hope.

-> continue_inside


=== continue_inside ===



The snow is melting off her.

She steps out of her shoes, making sure none of the snow from outside makes its way onto the wood floor. She double-checks before allowing some of the tension to slip away from her.

There is a cream-colored envelope square in the middle of the kitchen table. Any peace she felt vanishes.

She looks at it and gives herself to the palpitations of her heart. It's cold outside, warm in here, though it isn't usually. Her cheeks have darkened.

She must look away. She looks away. First, something to temper the occasion. 



-> beverages

= beverages 

* [tea ]
-> tea
* [water ]
-> water
* [alcohol ]
-> alcohol

//Now fill this shit in with actual tea stuff later.

= tea 

She starts the kettle and looks through the cabinet at the assortment of teas, loose and clearly labeled by hand. Which one?

//look up tea shit for fucks sake

* [white]
The white tea is good. 
-> open_letter

* [black]
The black tea is better
-> open_letter

* [green]
Something something

# tranquility

-> open_letter


= water 

~ has_water = true 

Her stomach is in knots. It may be best to keep things simple. She runs the kitchen sink. Water spills, straight as a rod. She waits the allotted time it takes to get cool before slipping a glass beneath and gathering just enough. What spills over swirls down the drain. Her lip twitches.

She wipes the glass, removing a stray droplet, and returns to the table and the letter.

She sets the glass to the side and looks at it suspiciously. 

Her attention returns to the letter.


->open_letter



= alcohol 

~ has_alcohol = true
~ raise(feral)

Her fingers are trembling. It's the cold, nothing more. 

She scans the room cautiously and retrieves the stepping stool beside the window. She brings it to the kitchen cabinets, climbing the two short steps and reaching high over the refrigerator. 

She pulls out the bottle. It was there one day and curiosity meant she couldn't get rid of it. It felt disrespectful to throw out what had been there before. A life that had lived.

She steps down carefully, bottle in hand. She considers a glass and decides against it. She takes the bottle to the table and sits.

//anger and hallucination

-> open_letter

=== open_letter ===

She examines the envelope. It's deceptively soft. She turns it over in her hands. There are no creases or bends. No errant ink or markings from oily fingers.  It's as if it manifested on the table out of thin air.

She stands, retrieves her letter opener, and opens the envelope carefully. //noise:paperripping

There is a single page inside, folded three times, the edges crisp. The paper is thin and nearly translucent. 

She takes a long, slow breath and swallows, unfolding the letter.


* [Read Letter]
-> read_letter

= read_letter

~ raise(afraid)

Two words, typed. She notices that before she's able to read them:

Found you. :) 


//variables here: if alcohol have a long drink, if doors left unlocked after reading, prompt to relock the door, if letter from management unread, offer to lock door 


* [Look out the window] //this will point to snow and fresh tracks outside the window
-> look_out_window

* [Look at the door] 
-> look_at_door

* [This is fine]
-> its_fine



//this is if alcohol was chosen


She takes a long drink. It burns down settling into her stomach like acid. 

{!has_alcohol = true} //does this go here? fuck.


= look_out_window
//this if doors were locked

She rises from the chair, letter still in hand. She goes to the window. Her bed rests against the wall. She stares at it, searching for a wrinkle that wasn't there before. It was stupid of her. She should have checked the moment she arrived. 

Her chest is tight. The room is spinning. No. No. No. She's past this. She could close her eyes to calm herself but she can't close her eyes. She moves onto the bed slowly and peers out the window.

There's only black and the slow swirl of snow in the street lights several stories below. No one is out. Instinctively she looks down beneath the window to the fire steps. The snow is several inches thick and undisturbed.

She breathes, closes her eyes now, falling back onto the bed.

-> phone

= look_at_door

//if/ or variables needed here

//ifdoorlocked

She's glad she locked the door. She's made a vow to her, whether consciously or not, to never let another in. But people are persuasive. Locks are made of iron and steel. Surely that is stronger than her determination.

She settles on the bed.

* [She wonders if she's always been such a weak-willed person.]

-> phone

= its_fine

~ raise (afraid)

She's imagining it. It's just the cold and hysteria.  She's blowing it out of proportion. She mentally chants their mantra. She's not afraid. She's not afraid. She's not afraid. She's not afraid. She's not afraid.

-> phone

=== phone ===

She lies there gathering breath, slowing her heart when the rotary phone rings, loud and abrasive. //noise:loudassphone 
She's too alarmed to shout. She opens her eyes and stares at it, willing it to stop. It does. The voicemail picks up. Only seconds pass before the small red bulb on the voicemail blinks.

* [Check voicemail] ->checkvoicemail

=checkvoicemail

She swings her legs over the side of the bed, rubbing her eyes, scratching her arm absently. She plays the message.

"Hey, you. It's Sam. Gah, sorry. I hope you recognize my voice by now. Anyway, I was hoping you'd be in by this time. I've been thinking about you and you know, everything. How's the bite? Call me."

* [Call Sam]
// does this need to be a choice? 
    -> callsam
    
* [Don't call Sam]
    -> dontcall
    
= dontcall
    
    ~ nocall = true
   
   She's in no hurry to talk about 'everything'. Nor is she sure she can hold a conversation right now.
    
    A noise. She glances to the window but only sees the night.
    
-> no_call
    
= callsam
    
~ call_sam = true
      
      
She rubs her eyes feeling her arm throb anew. She resists the urge to look at it.
    
     She doesn't lift her sleeve to look at her arm. She has avoided looking or thinking about it. It's warm and pulsing.
     
     She picks up the phone receiver. Instead of a dialtone she finds crackling static on the other end of the line. //noise:staticsoundheremaybe?
     A moment later she receives the customary dial tone.
     
     She enters Sam's number. She knows it by heart. Her fingers turn the dial, each number whirring back to zero each time. It rings. And rings. A hard thud from the right side of the room. She's ready to hang up when the call is picked up. Sam's voice is on the other end, tentative.
     
     * Sam picks up. ->sampicksup
     
     =sampicksup
     
     
     "Hello?"
     
    She finds herself breathing easier. "Hey." Her heart is pounding. "I got your voicemail."
     
     "Were you screening your calls?" Sam laughs when she doesn't answer. 
     
     "Doesn't everyone?"
     
     "No."
     
     She shifts where she sits on the bed, feeling defensive. Deflated. Eventually she finds her voice. 
     
     * "Why did you call?" 
     -> whydidyoucall
     
     =whydidyoucall
     
     
     
        "Uh, we're friends? Do I need a reason?" She doesn't respond. Sam sighs. "I did ask about the bite. Are you worried?"
        
        "Not really."
        
        "Really?"
        
        "Yeah."
        
        A tsk. "They're rounding them up, you know."
        
   * [Oh. That again.] -> thatagain
   
   =thatagain
        
        She says nothing right away, only feels her throat grow tighter. "I feel bad for them."
        
        "They're not safe. I'm surprised they let it go this far."
        
        She chews on her bottom lip. Her head feels hot.
        
        "It's their fault we're locked up like this," Sam continues.
       
      * [A lot of people believe that.] -> doesntagree
       
       =doesntagree
        
    She rubs her neck but doesn't say she doesn't agree. 
        
        "Are you feeling okay?"
        
        She nods, not realizing right away Sam won't be able to tell. "Yes. I'm..." her lip twitches. "It's fine."
        
        "It's okay to be scared."
        
        Her irritation is growing. These past few days have been steeped in irritation. Her existence has become uncomfortable, an itch she can't scratch, something under her skin she can't reach. 
        
        * [Embarrassed] 
        
        "I'm not always scared. Don't tease me."
        
        "Hey, fear's not always a bad thing. Sometimes when your back is against the wall-- that's when you see what you're really made of."
        
        But sometimes people freeze. She knows that all too well.
        
        
        -> samcontinued
        
        * [Dismissive] 
        
        ~ raise(feral) 
        
        "I have more to worry about than a stupid bite, Sam."
        
        
        There's a long silence. Another thump. She whips her head to the window. She sees nothing. She grips the telephone cord tightly until it digs into her palm.
        
        "That's the first time you've ever snapped at me."
        
        She bites her tongue. She's ashamed but doesn't feel it outside of the fire blazing on her cheeks. 
        
        -> samcontinued
        
        = samcontinued
        
        Sam sighs. "I wish I could do something for you, but they've locked the wards up pretty tight."
        
        It's been months since they've seen one another. She enjoyed their last time together but can't seem to bring it up. It'd be easier to think if not for the pounding headache. Sam hasn't brought it up either so maybe it meant nothing.
        
        * [Brush it off.] ->brushoff
        
        =brushoff
        
        "It's okay," she says. The snow is bad. The cold is biting. The wardens are mean. She could say all those things but her mouth won't cooperate.
        
        An awkward silence follows before Sam speaks again. "There's talk of pyres burning late into the night over there."
        
      * ["Pyres?"] -> pyres
      =pyres
      <>
        
        "I hadn't noticed." 
        
       Sam scoffs. "You don't usually go out."
        
        She bites her tongue. "'Out' is..." she shakes her head. She was like this before things changed and Sam knows it. The observation embarrasses her. "Where did you hear that?"
        
        "Radio chatter. You know."
        
        * [She hates this.] -> hatesthis
        
        =hatesthis
        
        She lowers her voice. "You have to be careful with that. I've told you before. Please get rid of that thing." She's seen the contraption. Some metal box with wires and lightbulbs, always swiftly stowed away when there are inspections.
        
        "How else would we know what's going on?"
        
        "But we don't know. And if we did, what could we do about it?"
        
        "You'd rather we do nothing?" Sam asks. "You can't bury your head in the sand forever."
        
        * [Can't she?] -> yesshecan
        
        =yesshecan
        
        Her arm aches. Her eyes flit to the letter on the table. <i> Found you :) </i> . She exhales unsteadily. It feels as if her soul were rattling around inside of her. 
        
        * "I don't want any trouble. <>
        -> notrouble
        
        
         * "Drop it. <>
        -> dropit
        
        
        = notrouble 
        ~ raise(afraid)
             
        "I'm not... I don't really do... I'm not comfortable with confrontation."
        
        "It's something you get used to."
        
        "I don't <i>want</i> to get used to it."
        
        -> callcontinued
        
        = dropit
   ~ raise(feral)
       
       "I didn't call to listen to you be sanctimonious. I'm not looking to stick my neck out for anyone. I'm not some freedom fighter. I just want to survive."
       
       "If you don't fight with everything you've got they'll keep taking."
       
       * [Sometimes when you fight they go out of their way to take more.] -> takemore
       
       =takemore
       
       "I don't have anything else to give," she says.
       
       "You only have one life."
       
       She's not sure she does, nor is she sure that it matters. "Then I'd like to hang on to it."
     
        
        -> callcontinued
        
        = callcontinued
        
        "Okay," Sam says, sounding tired. She realizes she's pushing someone else away. "I appreciate the call back. Keep up the good fight?"
        
        She almost smiles. "Right. But I wasn't kidding. Get rid of that radio."
        
        "You know I can't do that."
        
        She sighs. 
        
        "Later, then?"
        
     * [Mention Letter]
     -> reveal_letter
     
      * [End Call]
     -> endcall
     
     = reveal_letter
     
     ~ raise(feral)
     ~ mentionletter = true
     
     "Hey. I got a letter."
     
     "A letter?"
     
     She nods. 
     
     "Who from?" Sam asks.
     
    * [Why did she mention the letter. Maybe she can get out of this.] -> whymention
    
    =whymention
     
     She breathes out, hazarding a look to the nightstand where the letter rests. There isn't enough air. "I don't know." But she's pretty sure that's a lie.
     
     "Do you think--"
     
     "I don't know," she says again, certain now that it's a lie.
     
     "What did it say?"
     
     "It doesn't matter."
     
     "What did it say?" Sam insists.
     
  *  "It said..."  ->itsaid
  
  =itsaid
     
     But she can't get any further. Her mouth is locked shut. It isn't the first time she hasn't been able to scream when she's wanted and needed to. "'Found you'." She leaves out the smiley face. 
     
     There's a heavy silence. "I can sneak out of here," Sam says.
     
     "No."
     
     "I can get to you."
     
   "No, Sam."
     
*  [ Sam huffs. ] -> samhuffs

=samhuffs
     
     "It'll be fine," she says, believing it in the moment, believing it, if nothing else, for Sam's sake. "You can't sneak out. The building has security," she nearly chokes on the words, "it's nothing to worry about. I just..."
     
     "Just?"
     
     "I... don't have anyone else to tell so... I'm telling you." She thinks back to a bloody face, a chipped tooth. Her tongue touches the canine, not as sharp as it once was.
     
     "I'm worried," Sam says. She doesn't respond. "Where was the letter?"
     
     "On my kitchen table."
     
     "Someone was in your home."
     
     * [Yes.] ->someoneinyourhome
     
     =someoneinyourhome
     
     Her chest tightens. "Maybe." She fidgets. "Maybe maintenance put it here."
     
     "That's not better."
     
     She can't argue that. "It will be fine," but her voice sounds small and wheezy. Her arm itches as if fire ants were crawling inside of her.
     
     "Go into your kitchen. Grab a sharp knife. Keep it close."
     
     * [The thought of using a knife makes her sick to her stomach.] ->usingaknife
     
     =usingaknife
     
     "What am I supposed to do with a knife?"
     
     "Fight, damn it."
     
     She bites her lip.
     
     "Promise me you'll do it," Sam says.
     
    * [Grudgingly Agree.] -> grudginglyagree
    
    =grudginglyagree
     
     "Fine, fine."
     
     Sam's relief is evident. "Okay." A long breath. "I'll check in with you later."
     
     "No, don't call. It'll scare me to death. The phone is so loud."
     
     "It won't be the first time you've had a late call from me."
     
     She flushes. "Goodnight, Sam."
     
     "Call me for any reason. Any time. And grab that knife."
     
     "Goodnight."
     
     She hangs up the receiver before she's roped into lingering longer. She looks to the kitchen. 
     -> knifechoices
     
     = knifechoices
     
     * [Grab a knife] -> knife
     
     * [Ignore knife]-> no_knife
     
     
     = knife
     
     ~ raise(afraid)
     ~ raise(feral)
     
     ~ hasknife = true
     
     She goes to the knife block in the kitchen. The wooden block is faded, barely held together by the glue she used years ago. She pulls out the butcher knife. It's heavier than she remembers. It hasn't been sharpened or used in some time.
     
     Holding it feels like a bluff. She carries it with her to the bed, looking around the apartment and out the window before slipping it beneath her pillow. 
     
     
     -> postcall
     
     = no_knife
     
     ~ raise(feral)
     ~ lower(afraid)
     
     She considers Sam's advice. She could get a knife. She could be prepared. She could be violent.
     
     She could hold it with trembling hands. She wonders if this is what her life will always be. Always on edge, always looking over her shoulder, unsure of when it will all end.
     
     It has been years and she is tired. 
     
     If she has been found, let them come.
     
     
     -> postcall
     
     = endcall
     
     ~ raise(afraid)
     
     "Yeah. Take care." A moment. "I hope... You've been feeling okay?"
     
     "No complaints. You worried about me?"
     
     She ignores the teasing voice. "I've heard rumors about things."
     
     "Things?"
     
     * [She doesn't want to talk about it.] ->doesntwanttotalk
     = doesntwanttotalk
     
     "You know." She shuffles. "The infections."
     
     "Oh, right. Not to worry. Anyway, I thought you didn't buy into that whole government line."
     
     She rubs her ear absently. "I don't."
     
     "See? Nothing to worry about."
     
     She nods. "Okay. Bye, Sam."
     
     "Until next time."
     
    * [End Call] ->hangup
    =hangup
  
  She hangs up the receiver, worrying it was a mistake not to mention the letter. 
  
  Her focus turns to the window again. 
  
  It fogs and clears, fogs and clears. She scrambles to the window, hands pressed to the cool glass but only sees her own reflection. 
  
  Was it real?
  
  * [Breathe] -> postcall
  
  

=== no_call ===
  
  ~hasknife = false
  
  She slaps her arm gently hoping to alleviate the sting. How's the bite, Sam asked. For three months Sam has asked. Her mind flashes to that night. 
  
  * [ Get lost in thought ] -> flashback 
  
  =flashback
  
  //start of flasbhback, maybe some color changes here?
  
  She walked in the inky black, punctuated only by the hazy glow of flickering street lamps. There was a cry, one she did not recognize.
  
  * [Investigate] ->investigate
  
 = investigate
  
  Screams were not new for her. She worries sometimes that she is too accustomed to them. But this was not a familiar sound. Was it a person? Was it the yowl of a baby...? 
  
  Snow spiraled around her. She found her courage and moved on before the cry came again, stopping her in her tracks.
  
They were not allowed to deviate from the path. But what if a child had been abandoned? What if it had been thrown out? She looked toward the wooded area. Only a fool would go that way. But she went.

* [Head to the wooded area] ->headtothewoodedarea
= headtothewoodedarea
  
  She trudged into the snowy banks, her legs losing feeling straight away. She ventured from the fickle light into the darkness. She had no flashlight to search for tracks. She puffed clouds of hot air into the night.
  
  Is anyone there?
  
  She thought she asked but her lips did not move.
  
  "Hello?" she managed.
  
  There was a crack.
  
* [Something is coming] -> somethingiscoming
=somethingiscoming

Steps padded closer and then she saw it.

Oh. Sweet relief.

A white fox. 

They stared at one another, transfixed. She'd never seen a fox in person. It was bigger than she thought.

The fox snarled. It took one step toward her and then another. 

She froze.

It moved closer, picking up speed until it was at a fast sprint, knocking into her, tossing her onto her back. 

She stared into the void of night, winded, before a sting roused her from her fugue. The pain was surprising. She thought she had numbed to pain but it tested her as jaws clamped more tightly, fangs sinking into her flesh, sharp and bright. Her white coat darkened and the icy cold started to fade. Her eyes fought to focus. Understanding did not come right away.

The fox frothed at the mouth, its teeth, saliva, tinged red.

No, she thought she said, but she couldn't scream.

* [Try to escape] ->trytoescape
=trytoescape

It growled as she tried to pull her arm back.  It was stronger than she thought. She tried to scramble back but her arm only buried in the snow, going numb. 

The fox shook its head furiously and she jostled, made a sound before her gloved fingers curled, smashing into the side of the fox. She waited to be released but the fox didn't react. 

* [Scream] ->scream 
=scream

She screamed, shame washing over her instantly. She was not one to cause disruption. She was always quiet. Even now she can't identify why she screamed. Was it terror? Pain? A cry for help? Bravado? Or was it something less human? Something akin to a growl?

The fox did not respond and leaped at her, paws slamming into her chest, teeth grazing her neck as she fought to keep it away. There was a shout in the distance, footsteps trampling towards her.

A shot fired and the fox yelped and scurried off, leaving a trail of blood in the snow.

The chill of the night was burying into her like knives. She closed her eyes, thinking it might be nice to go to sleep and never wake again.

* [Get up.] ->getup
=getup

No. She would prefer not to. Getting up is hard. Better to stay down.

* [Get up.] -> getup2

=getup2

"Hey! Get up!" 

Light tapping on her face. She opened her eyes. Sam's face was twisted in worry. That startled her more than the terror of moments ago and the agony in her arm.

Sam. Why was Sam there...?

"You're bleeding."

* [Continue to dwell on the memory] -> dwell
* [Shake the thoughts] ->shakethoughts

=dwell

Sam pulled her to a sitting, looking around furtively. Before she knew it, her coat was gone and she was wrapped in Sam's, a charcoal grey color. Sam kneeled in the snow, arms bare.

Sam spoke quietly. "We have to get you inside before anyone sees."

She only nodded, numb.

"We have to clean that."

Another nod. She only remembered then that they were due to meet that night. Sam pulled her to her feet and wrapped an arm around her waist. They'd only taken a few steps when the fox returned.

-> shakethoughts
  
=shakethoughts
 
 She can't think about it anymore. She lifts trembling fingers to her brow, trying to massage the headache away. 
  
  * [Breathe] ->postcall
  
  
=== postcall ===

//still several more options i need to put back in especially since it seems to be unrelated to what i have screwed up with the code

It's hard to breathe. 

Another quick glance to the window reveals nothing. 

* [Leave it] 
-> leavewindowalone

* Open the window to be sure 
-> openwindow


===leavewindowalone=== 

She leaves the window alone. 

She won't let paranoia get to her. 

One thought breeds another until she's spiraling. She can't be like that anymore. How is she always a captive to herself? She sits on the bed and tries to calm herself.

She has discovered old books, swollen with rain and humidity, covers of smiling men and women faded away. "How to be your best self", that kind of thing. 

She never found the advice within to be helpful. It's as if it was made for another world. Another kind of being. 

* There's a knock at the door.

-> knock_at_door1

= knock_at_door1

//if she's read the letter she can ask specifically about maintenance, if not, she only has the weird stalker letter to go off of

She rises from the bed.

"Hello?"

The knock comes again. 




* [Go to door] -> go_to_door1
//these are not ready yet
= go_to_door1

-> the_end

* [Ignore door] -> ignore_door
//these are not ready yet

= ignore_door
-> the_end




===openwindow===

~ open_window = true


She brings her fingers to the window latches. One is looser than she remembers. Her heart is in her throat again. She lifts, expecting resistance but finds none. The window raises and a wave of icy air floods the apartment. 

Her eyes adjust in the darkness. She does a quick scan of the fire escape and the surrounding area. Nothing appears out of place.

* Stick neck out of the window to get a better look -> stick_neck_out

* Close window -> dontlook_closewindow

= dontlook_closewindow

That's enough. She won't chase shadows.

She leaves the window alone. 

She won't let paranoia get to her. 

One thought breeds another until she's spiraling. 

She closes the window and exhales.

Things have felt strange the past couple of days. As if the ground beneath her were shifting. As if something deeper were changing. The letter has her unnerved. She's overreacting. 

At least, that's what she's always been told. It hurt her at the time to hear it but now, more than ever, she wants to believe it.

She sits on the bed, hand absently beneath her pillow, searching. 

She draws them back and flexes her fingers. When did her nails get so long? 

They called her the runt of the litter. 

She's not like us, they said. Leave her.

Her nose twitches.

* [ There's a knock at the door.] -> knock_at_door


= stick_neck_out

~ footprints_discovered = true

She braces herself, settling her hands at the bottom of the window and leaning out. Street lamps pulse a sickly yellow color, seeming to beat in tandem with her heart.

She cranes her neck up. The steps to the fire escape are stacked with several inches of snow. 

It's fine. If she says it over and over again it'll be true. If she has definitive proof before her eyes, it has to be true. 

A tuft of snow splats just in front of her.

Shaky breath. Her own. It's fine...?

A purr. A rumbling, building, deepening, becoming a growl. Her eyes land beneath her window. Deep footprints. 

Movement from above. Metal clangs.

* [Pull away] -> yankback

= yankback

She yanks back the instant before the window wobbles and slams to a shut, just missing her neck. She heaves for air, scrambling off the bed.

* [There's a knock at the door.] ->knock_at_door

= knock_at_door

She looks from the window to the door. There's a squeaking sound, like fingers pressed against the glass.

The knock comes again, this time harder.

She turns to the door.

"Who is it?"

She asks.

She gets no answer.

The knock persists.

* [Ask again] -> ask_again

* [Go to the door] -> go_to_door

= go_to_door
->postdoor

=ask_again

"Who is it?" She asks again. Her voice shakes. Her palms are sweating. The room is hot. 

There's a response but it's muffled. Impossible to hear.

* [Go closer] -> go_closer

= go_closer

She goes closer.

"Hello...?"

There's movement outside the door. She looks down and sees a shadow seeping beneath the door. 

* [ "Sam...?" ] -> sam

= sam

"Hey."

 It's not Sam.
 
 The voice is casual, as if there weren't a door between them, as if they were expected. She tries to place it but can't. She doesn't answer and hopes they will go away.

The doorknob jiggles. 

The air goes out of her. She takes a step back.

"You in there?" 

The doorknob jiggles again.

* [Grab the doorknob] -> grab_doorknob

= grab_doorknob

Instinct kicks in and she lunges forward, taking hold of the doorknob. 

It slips in her sweaty palms and she tightens her grip to prevent it from turning, pressing her shoulder to the door. She can't remember the last time she exerted so much force. Sweat beads on her brow. There's a whine like a desperate gasp. It's her.

The resistance of the door finally gives way and she slams into it breathing hard. She tentatively loosens her hold. The doorknob doesn't turn. 

Are they still there...?

* [Listen at door ] 

-> listenatdoor


= listenatdoor

She presses her ear to the door. There are distorted voices further down the hallway.There's an argument. Knocking. Resistance. Further, past the steel doors, there are footsteps pattering, scurrying. She shouldn't be able to hear that. Are the hallways empty tonight? Are they simply echoing?

"Miss." The voice again. "You're due for inspection."

Her head spins.

* "Inspection...?" ->inspection

= inspection

"You received a letter." 

She swallows. She's thirsty but the thought of water disgusts her. "What letter...?" 

The doorknob turns in her hand once more. She crushes it against her palm and meets resistance.

There's a grunt of frustration, followed by a sigh from the other side of the door.

An eternity passes and then the footsteps move away. She remains where she stands for one minute and then another. 

* [Release the doorknob ] -> release_doorknob


* [Don't release the doorknob ] -> dont_release_doorknob

=release_doorknob

~ raise(feral)

~ reveal_bite = true

She isn't able to let it go right away. Her fingers have gnarled into a claw. It's hard to uncurl them. They feel unnaturally relaxed at her side. 

She stares at her palm, ugly with the mark of the door etched into it. Her brain feels hot. She pulls on the collar of her sweater but doesn't find relief. She pulls it off, discarding it on the floor. It's still too hot.

She lifts her arm, allowing herself to look at the bite for the first time in weeks. The skin is swollen and raised, red lines stretch out from the mangled wound, branching up and down her arm like roots. 

Is there any point in resisting? 

* [Go to Bed] -> go_to_bed

=dont_release_doorknob

~ raise(afraid)

She can't let go of the door. She can't let go of the air in her lungs fighting to get out. She presses her ear more tightly to the door.

There's something whispering.

* [ Focus and listen ] -> focus_listen 

=focus_listen

F<>

-> fl2

=fl2

 o<> 

->fl3

=fl3

    u<>

->fl4
=fl4
         n<>

-> fl5
=fl5
d 


 
-> fl6 

=fl6 
y<>

-> fl7

=fl7 
o<>

->fl8

=fl8 
u<>

->fl9 

=fl9 

:)

* [Listen] -> keeplistening

=keeplistening

Found you. Found you. Found you. Found you. Found you. :) :) fou :) ndyoufoundyoufoundyoufoundyoufouNdYouUsfoundYoU:FouN<>:)oufoundyoufoundyoufoundyoufoundyoufoundyoufoundyoufoundyoufoundyoufoundufoundyoufoundyoufoundyoufoundyouou.Foundyou.Foundyou.FoundyouuUsfoundYoU:FouNd:y)oufoundyoufoundyoufoundyoFound you.Found you.FoundyouFoundou)>:) fou:)ndyoufoundyoufoundyoufoundyoufouNdYouUsfoun

* [Make it stop] -> make_it_stop
=make_it_stop

The words drill into her head. Whispers becoming screams, shouts, threats. Stop stop stop stop stop stop stop stop-- She clamps her hands over her ears but the words still come, louder.

"Stop it!" she screams, over and over. Only her frantic shout echoing around the apartment responds to her.

* Something scratches at the door. -> door_scratch

= door_scratch

She stares at the door, bug-eyed. 

A knock comes, followed by another, then pounding, heavier and fiercer until the door rattles against the frame. She steps back, she opens her mouth-- 

The phone rings.

The door stills.

* [Pick up phone] -> pick_up_phone
* [ Ignore phone] -> ignore_phone

=pick_up_phone
~ phone_unplugged = true

She makes her way to the phone, playing a dangerous game with balance along the way. The room is spinning. The phone continues to ring, deafening.

She arrives at the phone and picks up the receiver, bringing it to her ear. She breathes. The thick plastic material feels heavier than it should. "Sam...?"

"No." The woman on the other end of the line sounds overly annoyed. "This is Tiffani with Abaddon Management."

* [ It doesn't seem like someone named Tiffani should work with Abaddon Management ] -> tiffani

=tiffani

"Hello." Her greeting is blank but she doesn't bother apologizing. She keeps her eyes on the door.

Tiffani takes a long breath. "Resident no. 4513, we have received several reports of disruptions from your apartment."

"Did you send someone?" she asks.

"We would like to remind you that disruptions will not be tolerated."

* [She doesn't remember any disruptions.] -> doesnt_remember

=doesnt_remember

"I've not disrupted anything." 

"This is your fifth warning this week. Further misconduct will be cause for transport."

Transport...? Transport where? She looks to the door, wondering if she's imagining the movement of the doorknob. She starts walking to the entrance, the coiled cord stretching as she moves.

"Resident!"

She blinks. "What?"

"Acknowledge this communication."

* "I understand." -> understand

= understand 

~ raise(feral)

"Good." A moment. "As a reminder, visitors are not permitted."

"Yes."

"I shouldn't have to remind you of your violation three months ago."

"Then don't," she says.

There's a long silence on the other end of the line. "Pardon me?"

She drops the receiver, letting it clang loudly to the floor. It rattles as the cord drags it back closer to the nightstand where it rests. 

* [ Sneak to the door] -> sneak_to_door

= sneak_to_door

She lowers her center of gravity, arms out, balancing as she makes her way to the door, careful not to make a sound. She peers at the locks and door, staring for minutes, ignoring the squawking from the telephone followed by the dial tone.

The door doesn't move. The locks don't move. Even when she glares at them everything is still.

She rights herself. With the threat removed a sweeping exhaustion cascades over her.

* [Go to bed] -> go_to_bed

=go_to_bed










->postdoor
=ignore_phone



-> postdoor






-> listenatdoor


* [Listen at the door] -> listenatdoor





-> postdoor

===postdoor===

<- ambient_shuffle

-> DONE

= ambient_shuffle
//holy crap i need to fill this out
{shuffle:
    - The phone rings, jangled and distorted. She reaches for it but it stops before she can pick it up.
    - Something paws at the door. She's imagined it. But it continues. She goes to the door but doesn't open it.
    - 
    - 
    - 
    - 
    - 
}


-> the_end

=== the_end ===
<h4>Game Over</h4>
Thanks for playing! [blah blah blah] 
Gloomy <i>(she/her)</i>

-> END

