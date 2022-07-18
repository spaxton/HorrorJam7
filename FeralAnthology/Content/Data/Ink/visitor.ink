// Character variables. We track just two, using a +/- scale yes, I just copied this over from the intercept story...

//not sure if i'll use these variables. might have to trust the readers... 
VAR feral = 0
VAR afraid = 0

//afraid leads to fumbling
//feral leads to violence/ strength

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




-> opening

 === function lower(ref x)
 	~ x = x - 1

 === function raise(ref x)
 	~ x = x + 1

=== description ===

Title: Visitor
Author: Gloomy

Description: A woman comes home to find two envelopes waiting for her.
TW: Graphic Violence, Gore, animal cruelty, stalking, suicidal ideation, body horror, cannibalism.
Time: 20-40 minutes (for all choices)

->DONE

=== title ===
Visitor


* [Unlock]
-> opening



=== opening ===
>>>PlayMusic(visitor_main)

Wind and snow howl in the night. 

There are two blocks she is allowed to walk. Too small. Not enough. On some days, however, they are everything.

Once she goes inside it will be over.

And yet she wishes to be away from the threat of the outside world.

First, her inspections:

The mat on the doorstep seems intact. She stoops to look more closely. It does not appear out of place.

She rises again and faces the door. She relaxes her hand and the keys slip loose from her fingers. She inserts the key and unlocks the door.

She will not allow the door to swing open. Instead, she is careful, turning the doorknob with precision, eyes scanning her surroundings. She sights no danger but does not release the doorknob until she is sufficiently inside her apartment. -> enterapt

=enterapt

Everything is immaculate and white: blinding nothingness. 

* There is nothing neither pleasant nor unpleasant in the air.

-She closes the door behind her, latching the chain, turning the bolt, and the small lock on the doorknob. Air seeps into her and she exhales softly.

>>>PlaySound(Lock)


She stops.

A thin envelope has breached the apartment. She stares at it too long before picking it up. Her name is handwritten in cheap blue ink, swooping letters. Another letter from the building management.

>>>ShowImageLeft(Envelope)

* [Read now]
-> read_now

* [Read later]
-> read_later

= read_now

>>>ShowImageLeft(Envelope)

~ inspectionletter = true

She sighs and opens the letter.

Dear Resident,

It has come to our attention that some tenants have been locking their apartments. As a reminder, this is not permitted. Our maintenance crew will be conducting required inspections to ensure everything is in order. Make sure to leave doors unlocked at all times. Thank you for your cooperation.

Sincerely,

Abaddon Management 

She holds the letter tightly and looks at the door.

* [Unlock the door]
-> unlock
* [Don't unlock the door] 
-> do_nothing

= read_later

>>>HideImageLeft()

It can wait.

She sets the envelope in a mail holder.

-> continue_inside

= unlock 
>>>PlaySound(Lock)
For moments she is frozen. 

Anger and disappointment bubble inside her. She is grateful for that. Better anger than fear. So the world says.

She unlocks everything: the lock on the doorknob, the deadbolt, the chain. 

Every safety measure is stripped. She isn't sure she can do this.

*[Keep door unlocked and continue inside.] ->continue_inside

* [Relock door and continue inside.]
->change_mind

=change_mind
She can't bring herself to do it.

She considers herself a disciplined person. Someone who follows through. But this doesn't sit right with her. She locks the doors again.

-> continue_inside

= do_nothing 
>>>HideImageLeft()

She'll pretend she hasn't seen the letter. It doesn't feel right that she should leave the door unlocked.

She's been a good tenant. A good person. She has always done as she is told but this is different.

If there is an argument she can try to explain. She can hope they will be understanding. She has no reason to believe they will be but she can hope.

-> continue_inside

=== continue_inside ===

She continues inside. 

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

= tea 

She looks through the assortment of teas in the cabinet, loose and clearly labeled by hand. 

There's white tea. Black tea. Green tea. Which one? The leaves make her nostalgic. Tea has always brought her comfort, especially on the bitter cold nights.

She picks one at random but the thought of collecting water makes her feel violently ill. She returns the tea to the cabinet.

She'll just have to muddle through on her own.

* [Open letter] -> open_letter


= water

Her stomach is in knots. It may be best to keep things simple. She runs the kitchen sink. Water spills, straight as a rod. She waits the allotted time it takes to get cool before slipping a glass beneath and gathering just enough. What spills over swirls down the drain. Her lip twitches. She wants to fling the glass away.

This is absurd and unnecessary. 

She wipes the glass, removes a stray droplet, and returns to the table and the letter.

She sets the glass to the side and looks at it suspiciously. 

Her attention returns to the letter.

->open_letter

= alcohol 

~ raise(feral)

Her fingers are trembling. It's the cold, nothing more. 

She scans the room cautiously and retrieves the stepping stool beside the window. She brings it to the kitchen cabinets, climbing the two short steps and reaching high over the refrigerator. 

She pulls out the bottle. It was there one day and curiosity meant she couldn't get rid of it. It felt disrespectful to throw out what had been there before. A life that had lived.

She steps down carefully, bottle in hand. She considers a glass and decides against it. She takes the bottle to the table and sits.

-> open_letter

=== open_letter ===

She examines the envelope. It's deceptively soft. She turns it over in her hands. There are no creases or bends. No errant ink or markings from oily fingers.  It's as if it manifested on the table out of thin air.

She stands, retrieves her letter opener, and opens the envelope carefully. 

There is a single page inside, folded three times, the edges crisp. The paper is thin and nearly translucent. 

She takes a long, slow breath and swallows, unfolding the letter.


* [Read Letter]
-> read_letter

= read_letter

~ raise(afraid)

* Two words, typed. 
>>>PlayMusic(visitor_fear)
-Found you. :) 

* She wants a drink.

>>>PlaySound(Heartbeat)

-Something hard that will burn her insides. But there's nothing. The thought of drinking anything repulses her. 

* [Look out the window] 
-> look_out_window

* [Look at the door] 
-> look_at_door

* [This is fine]
-> its_fine

= look_out_window
>>>PlaySound(Heartbeat)

She rises from the chair, letter still in hand. She goes to the window. Her bed rests against the wall. She stares at it, searching for a wrinkle that wasn't there before. It was stupid of her. She should have checked the moment she arrived. 

Her chest is tight. The room is spinning. No. No. No. She's past this. She could close her eyes to calm herself but she can't close her eyes. She moves onto the bed slowly and peers out the window.

There's only black and the slow swirl of snow in the street lights several stories below. No one is out. Instinctively she looks down beneath the window to the fire steps. The snow is several inches thick and undisturbed.

She breathes, closes her eyes now, falling back onto the bed.

-> phone

= look_at_door



She's glad she locked the door. She's made a vow to herself, whether consciously or not, to never let another in. But people are persuasive. Locks are made of iron and steel. Surely that is stronger than her determination.

She settles on the bed.

* [She wonders if she's always been such a weak-willed person.]

-> phone

= its_fine

~ raise (afraid)

She's imagining it. It's just the cold and hysteria. She's blowing it out of proportion. She mentally chants their mantra. She's not afraid. She's not afraid. She's not afraid. She's not afraid. She's not afraid.

-> phone

=== phone ===
>>>PlayMusic(visitor_main)
>>>PlaySound(PhoneRing)
>>>ShowImageRight(Telephone)
>>>PlaySound(Heartbeat)

She lies there gathering breath, slowing her heart when the rotary phone rings, loud and abrasive. 

She's too alarmed to shout. She opens her eyes and stares at it, willing it to stop. It does. The voicemail picks up. Only seconds pass before the small red bulb on the voicemail blinks.

* [Check voicemail] 

>>>ShowImageRight(Telephone)

-She swings her legs over the side of the bed, rubbing her eyes, scratching her arm absently. She plays the message.

"Hey, you. It's Sam. Gah, sorry. I hope you recognize my voice by now. Anyway, I was hoping you'd be in by this time. I've been thinking about you and you know, everything. How's the bite? Call me."

* [Call Sam]

    -> callsam
    
* [Don't call Sam]
    -> dontcall

= dontcall
>>>HideImageRight()
    ~ nocall = true
   
   She's in no hurry to talk about 'everything'. Nor is she sure she can hold a conversation right now.
    
    A noise. She glances to the window but only sees the night.
    
-> no_call
    
= callsam

~ call_sam = true
      
She rubs her eyes feeling her arm throb anew. She resists the urge to look at it.
    
     She doesn't lift her sleeve to look at her arm. She has avoided looking or thinking about it. It's warm and pulsing.
     
     She picks up the phone receiver. Instead of a dial tone she finds crackling static on the other end of the line. 
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
        
   * [Oh. That again.] 
   
    -She says nothing right away, only feels her throat grow tighter. "I feel bad for them."
        
        "They're not safe. I'm surprised they let it go this far."
        
        She chews on her bottom lip. Her head feels hot.
        
        "It's their fault we're locked up like this," Sam continues.
       
      * [A lot of people believe that.] 
      
      -She rubs her neck but doesn't say she doesn't agree. 
        
        "Are you feeling okay?"
        
        She nods, not realizing right away Sam won't be able to tell. "Yes. I'm..." her lip twitches. "It's fine."
        
        "It's okay to be scared."
        
        Her irritation is growing. These past few days have been steeped in irritation. Her existence has become uncomfortable, an itch she can't scratch, something under her skin she can't reach. 
        
        * [Embarrassed] 
        
        "I'm not always scared. Don't tease me."
        
        "Hey, fear's not always a bad thing. Sometimes when your back is against the wall-- that's when you see what you're made of."
        
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
        
        * [Brush it off.] 
        
        -"It's okay," she says. The snow is bad. The cold is biting. The wardens are mean. She could say all those things but her mouth won't cooperate.
        
        An awkward silence follows before Sam speaks again. "There's talk of pyres burning late into the night over there."
        
      * ["Pyres?"] 
        
        -"I hadn't noticed." 
        
       Sam scoffs. "You don't usually go out."
        
        She bites her tongue. "'Out' is..." she shakes her head. She was like this before things changed and Sam knows it. The observation embarrasses her. "Where did you hear that?"
        
        "Radio chatter. You know."
        
        * [She hates this.] 
        
        -She lowers her voice. "You have to be careful with that. I've told you before. Please get rid of that thing." She's seen the contraption. Some metal box with wires and lightbulbs, always swiftly stowed away when there are inspections.
        
        "How else would we know what's going on?"
        
        "But we don't know. And if we did, what could we do about it?"
        
        "You'd rather we do nothing?" Sam asks. "You can't bury your head in the sand forever."
        
        * [Can't she?] 
        
        -Her arm aches. Her eyes flit to the letter on the table. 
        
       * Found you :). 
       
       -She exhales unsteadily. It feels as if her soul were rattling around inside of her. 
        
        * "I don't want any trouble. <>
        -> notrouble
        
        
         * ["Drop it."] <>
        -> dropit
        
        
        = notrouble 
        ~ raise(afraid)
             
        "I'm not... I don't really do... I'm not comfortable with confrontation."
        
        "It's something you get used to."
        
        "I don't want to get used to it."
        
        -> callcontinued
        
        = dropit
   ~ raise(feral)
   
       
       "Drop it. I didn't call to listen to you be sanctimonious. I'm not looking to stick my neck out for anyone. I'm not some freedom fighter. I just want to survive."
       
       "If you don't fight with everything you've got they'll keep taking."
       
       * [Sometimes when you fight they go out of their way to take more.] 
       
       -"I don't have anything else to give," she says.
       
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
     
    * [Why did she mention the letter. Maybe she can get out of this.] 
    
     -She breathes out, hazarding a look to the nightstand where the letter rests. There isn't enough air. "I don't know." But she's pretty sure that's a lie.
     
     "Do you think--"
     
     "I don't know," she says again, certain now that it's a lie.
     
     "What did it say?"
     
     "It doesn't matter."
     
     "What did it say?" Sam insists.
     
  *  "It said..."  
     
     -But she can't get any further. 
     
     Her mouth is locked shut. It isn't the first time she hasn't been able to scream when she's wanted and needed to. "'Found you'." She leaves out the smiley face. 
     
     There's a heavy silence. "I can sneak out of here," Sam says.
     
     "No."
     
     "I can get to you."
     
   "No, Sam."
   
   Sam has visited before. As much as she's enjoyed it, Sam is always the one to pay.
     
*  Sam huffs.  

- "It'll be fine," she says, believing it in the moment, believing it, if nothing else, for Sam's sake. "You can't sneak out. The building has security," she nearly chokes on the words, "it's nothing to worry about. I just..."
     
     "Just?"
     
     "I... don't have anyone else to tell so... I'm telling you." She thinks back to a bloody face, a chipped tooth. Her tongue touches the canine, not as sharp as it once was.
     
     "I'm worried," Sam says. She doesn't respond. "Where was the letter?"
     
     "On my kitchen table."
     
     "Someone was in your home."
     
     * [Yes.] 
     
     -Her chest tightens. "Maybe." She fidgets. "Maybe maintenance put it here."
     
     "That's not better."
     
     She can't argue that. "It will be fine," but her voice sounds small and wheezy. Her arm itches as if fire ants were crawling inside of her.
     
     "Go into your kitchen. Grab a sharp knife. Keep it close."
     
     * [The thought of using a knife makes her sick to her stomach.] 
    
    - "What am I supposed to do with a knife?"
     
     "Fight, damn it."
     
     She bites her lip.
     
     "Promise me you'll do it," Sam says.
     
    * [Grudgingly Agree.] 
    - "Fine, fine."
     
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
     
     * [She doesn't want to talk about it.] 
     
     -"You know." She shuffles. "The infections."
     
     "Oh, right. Not to worry. Anyway, I thought you didn't buy into that whole government line."
     
     She rubs her ear absently. "I don't."
     
     "See? Nothing to worry about."
     
     She nods. "Okay. Bye, Sam."
     
     "Until next time."
     
    * [End Call] ->hangup
    =hangup
    
    >>>HideImageRight()
  
  She hangs up the receiver, worrying it was a mistake not to mention the letter. 
  
  Her focus turns to the window again. 
  
  It fogs and clears, fogs and clears. She scrambles to the window, hands pressed to the cool glass but only sees her reflection. 
  
  Was it real?
  
  * [Breathe] -> postcall
  
  === no_call ===
  
  ~hasknife = false
  
  She slaps her arm gently hoping to alleviate the sting. How's the bite, Sam asked. For three months Sam has asked. Her mind flashes to that night. 
  
  * [ Get lost in thought ] 
  >>>ChangeCampfire(Night)
  >>>PlaySound(FoxHowl)
  
-She walked in the inky black, punctuated only by the hazy glow of flickering street lamps. There was a cry, one she did not recognize.
  
  * [Investigate] 
  
 -Screams were not new for her. She worries sometimes that she is too accustomed to them. But this was not a familiar sound. Was it a person? Was it the yowl of a baby...? 
  
  Snow spiraled around her. She found her courage and moved on before the cry came again, stopping her in her tracks.
  
They were not allowed to deviate from the path. But what if a child had been abandoned? What if it had been thrown out? She looked toward the wooded area. Only a fool would go that way. But she went.

* [Head to the wooded area] 
>>>PlayMusic(visitor_fear)

  -She trudged into the snowy banks, her legs losing feeling straight away. 
  
  She ventured from the fickle light into the darkness. She had no flashlight to search for tracks. She puffed clouds of hot air into the night.
  
  Is anyone there?
  
  She thought she asked but her lips did not move.
  
  "Hello?" she managed.
  
  There was a crack.
  
* [Something is coming] 
-Steps padded closer and then she saw it.

Oh. Sweet relief.

A white fox. 

They stared at one another, transfixed. She'd never seen a fox in person. It was bigger than she thought.

* The fox snarled. 
>>>PlaySound(FoxAngry)
-It took one step toward her and then another. 

She froze.

It moved closer, picking up speed until it was at a fast sprint, knocking into her, tossing her onto her back. 

She stared into the void of night, winded, before a sting roused her from her fugue. The pain was surprising. She thought she had numbed to pain but it tested her as jaws clamped more tightly, fangs sinking into her flesh, sharp and bright. Her white coat darkened and the icy cold started to fade. Her eyes fought to focus. 

*Understanding did not come right away.
>>>PlaySound(Heartbeat)

-The fox frothed at the mouth, its teeth, saliva, tinged red.

No, she thought she said, but she couldn't scream.

* [Try to escape] 
>>>ChangeCampfire(Bloody)

-It growled as she tried to pull her arm back.  

It was stronger than she thought. She tried to scramble back but her arm only buried in the snow, going numb. 

The fox shook its head furiously and she jostled, made a sound before her gloved fingers curled, smashing into the side of the fox. She waited to be released but the fox didn't react. 

* [Scream] 
-She screamed, shame washing over her instantly. 

She was not one to cause disruption. She was always quiet. Even now she can't identify why she screamed. Was it terror? Pain? A cry for help? Bravado? Or was it something less human? Something akin to a growl?

The fox did not respond and leaped at her, paws slamming into her chest, teeth grazing her neck as she fought to keep it away. There was a shout in the distance, footsteps trampling towards her.

A shot fired and the fox yelped and scurried off, leaving a trail of blood in the snow.

The chill of the night was burying into her like knives. She closed her eyes, thinking it might be nice to go to sleep and never wake again.

* [Get up.] 

-No. 

She would prefer not to. Getting up is hard. Better to stay down.

* [Get up.] 

-"Hey! Get up!" 

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
>>>ResetCampfire()
>>>PlayMusic(visitor_main)
 
 She can't think about it anymore. She lifts trembling fingers to her brow, trying to massage the headache away. 
  
  * [Breathe] ->postcall
  
=== postcall ===

It's hard to breathe. 

Another quick glance to the window reveals nothing. 

* [Leave it] 
-> leavewindowalone

* [Open the window to be sure] 
-> openwindow


===leavewindowalone=== 

She leaves the window alone. 

She won't let paranoia get to her. 

One thought breeds another until she's spiraling. She can't be like that anymore. How is she always a captive to herself? She sits on the bed and tries to calm herself.

She has discovered old books, swollen with rain and humidity, covers of smiling men and women faded away. "How to be your best self", that kind of thing. 

She never found the advice within to be helpful. It's as if it was made for another world. Another kind of being. 

* There's a knock at the door.

//if she's read the letter she can ask specifically about maintenance, if not, she only has the weird stalker letter to go off of

>>>PlaySound(Knock)
>>>PlaySound(Heartbeat)


-She rises from the bed.

"Hello?"

The knock comes again. 




* [Go to door] -> go_to_door1

* [Ignore door] -> ignore_door
//these are not ready yet



//these are not ready yet
= go_to_door1

"Who is it?" she asks.

There's a whine at the other end of the door, like some animal, but no response.

She releases an unsteady breath.

Has a tenant smuggled some creature into the building? Pets are forbidden but it wouldn't be the first time someone has disobeyed. Who knows how many are housed in this complex. 

"Who's there?" she asks, so quiet she doesn't even hear herself. But she has asked. There is no longer any obligation to this intruder.

She is allowed no privacy. There is nothing she can hide. If a warden wants to come in, if anyone wants to come in, she can't stop them.

She waits a while longer but there is no other sound. Light flickers beneath the door. She rubs her eyes. She's tired. Maybe she only imagined a knock.

There's no point staying up any longer.

* [Go to sleep.] -> go_to_bed


= ignore_door

She won't go. She won't willingly invite someone into her life. Into her home. 

She doesn't move from where she sits on the bed. 

She remains, hands clasped over her knees, staring the door down. She focuses, listening intently but only hears one of the neighbors down the hall speaking in soft, desperate tones. The words are unclear. She doesn't want to listen anymore.

She's tired and no longer has the energy to worry.

* [Go to sleep]


-> go_to_bed

===openwindow===

~ open_window = true


She brings her fingers to the window latches. One is looser than she remembers. Her heart is in her throat again. She lifts, expecting resistance but finds none. The window raises and a wave of icy air floods the apartment. 

Her eyes adjust in the darkness. She does a quick scan of the fire escape and the surrounding area. Nothing appears out of place.

* Stick neck out of the window to get a better look -> stick_neck_out

* Close window 
-That's enough. She won't chase shadows.

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

* [Pull away] 
>>>PlaySound(Heartbeat)

-She yanks back the instant before the window wobbles and slams to a shut, just missing her neck. She heaves for air, scrambling off the bed.

* [There's A knock at the door.] ->knock_at_door

=knock_at_door
* [There's a knock at the door.] 
>>>PlaySound(Knock)

-She looks from the window to the door. There's a squeaking sound, like fingers pressed against the glass.

The knock comes again, this time harder.

She turns to the door.

"Who is it?"

She asks.

She gets no answer.

The knock persists.

* [Ask again] -> ask_again

* [Go to the door] -> go_closer

=ask_again

>>>PlaySound(Heartbeat)

"Who is it?" She asks again. Her voice shakes. Her palms are sweating. The room is hot. 

There's a response but it's muffled. Impossible to hear.

* [Go closer] -> go_closer

= go_closer

She goes closer.

"Hello...?"

There's movement outside the door. She looks down and sees a shadow seeping beneath the door. 

* [ "Sam...?" ] 

-"Hey."

 It's not Sam.
 
 The voice is casual, as if there weren't a door between them, as if they were expected. She tries to place it but can't. She doesn't answer and hopes they will go away.

The doorknob jiggles. 

The air goes out of her. She takes a step back.

"You in there?" 

The doorknob jiggles again.

* [Grab the doorknob] 

-Instinct kicks in and she lunges forward, taking hold of the doorknob. 

It slips in her sweaty palms and she tightens her grip to prevent it from turning, pressing her shoulder to the door. She can't remember the last time she exerted so much force. Sweat beads on her brow. There's a whine like a desperate gasp. It's her.

The resistance of the door finally gives way and she slams into it breathing hard. She tentatively loosens her hold. The doorknob doesn't turn. 

Are they still there...?

* [Listen at door ] 

>>>PlaySound(Knock)


-She presses her ear to the door. 

There are distorted voices further down the hallway. There's an argument. Knocking. Resistance. Further, past the steel doors, there are footsteps are pattering. She shouldn't be able to hear that. Are the hallways empty tonight? Are they simply echoing?

"Miss." The voice again. "You're due for inspection."

Her head spins.

* "Inspection...?" 

-"You received a letter." 

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

* [ Focus and listen ] 
-F
-o
-u
-n
-d
-y
-o
-u
-:)

* [Listen] 

-Found you. 

Found you. Found you. Found you. Found you. :) :) fou :) ndyoufoundyoufoundyoufoundyoufouNdYouUsfoundYoU:FouN<>:)oufoundyoufoundyoufoundyoufoundyoufoundyoufoundyoufoundyoufoundyoufoundufoundyoufoundyoufoundyoufoundyouou.Foundyou.Foundyou.FoundyouuUsfoundYoU:FouNd:y)oufoundyoufoundyoufoundyoFound you.Found you.FoundyouFoundou)>:) fou:)ndyoufoundyoufoundyoufoundyoufouNdYouUsfoun

* [Make it stop] 

-The words drill into her head. 

Whispers becoming screams, shouts, threats. Stop stop stop stop stop stop stop stop-- She clamps her hands over her ears but the words still come, louder.

"Stop it!" she screams, over and over. Only her frantic shout echoing around the apartment responds to her.

* Something scratches at the door. 

>>>PlaySound(Knock)
>>>PlaySound(Heartbeat)


-She stares at the door, bug-eyed. 

A knock comes, followed by another, then pounding, heavier and fiercer until the door rattles against the frame. She steps back, she opens her mouth-- 

The phone rings.

>>>PlaySound(PhoneRing)

The door stills.

* [Pick up phone] -> pick_up_phone
* [ Ignore phone] -> ignore_phone

= ignore_phone

It's as if a demon were sitting on her chest. The pressure is so unbearably tight she worries her heart will stop. She can hear it battering within her despite the shrill alarm of the phone.

It's too much. 

She's plummeting. She's paralyzed. 

The ground has given out from under her. No, it only feels that way. She knows that on some level but that doesn't keep the panic at bay. 

Her voice is hoarse from screaming.

The scratching at the door resumes, more frantic than before.

She turns her back to the door and sits. The floor isn't as cold as she's accustomed to. Did they crank up the heaters? It wouldn't be the first time. But they've never turned the heat up so high before.

She's burning from the inside. It would feel better, she thinks, if she could rip her skin away.

* [Rip skin away]
>>>ChangeCampfire(Alien)
-She pulls her sweater off. 


She wears a sleeveless shirt underneath. A habit from long ago.

Her arm is red. The puncture wounds from the fox never quite healed. If she were to rip away her skin it would be best to start there. She brings her fingertips to the bite, pushing her fingers into the inflamed skin. It's spongier than she remembers.

She grimaces, pressing her fingers deeper, pushing past the pain. Blood, dark and foul rises to the surface. Her nose wrinkles. 

Her fingers touch something unexpected.

* [Dig fingers deeper.] 

-She buries her fingers deeper, grimacing at the slick texture, stopping when she reaches something unexpected. She's certain she's touched something similar before but not on any person.

She stops her probing, disgusted. 

The phone doesn't ring. There is no one at the door. The world has gone quiet.

She's bloody and tired. It's difficult to keep her eyes open. Even the terrors that loom can't seem to rouse her.

* [Go to bed.] 
-> go_to_bed


=pick_up_phone
~ phone_unplugged = true

>>>PlaySound(PhoneRing)

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

===go_to_bed===

The bed is cold. It usually makes her feel lonely but tonight it's comforting.

She's cleaned herself. She's tidied everything else. She has unplugged the phone despite it being against Abaddon Management policy. She has turned off the lights. These days it takes little time for her eyes to adjust to the darkness.

Her throat is dry. No matter how she tries she can't get comfortable.

She settles into her pillow, glaring at the ceiling before closing her eyes. 

* [Sleep.] -> sleep

=sleep 

Sleep doesn't come immmediately. Her body fights slumber despite the exhaustion. She's agitated, haunted by restless thoughts of shadows, teeth, and blood. 

She wants only to sleep and never wake.

She needs to keep vigilant. 

There always seems to be a conflict within her. 

But she's never been much of a fighter. Eventually sleep takes her.

* [Thump.] -> encounter

=== encounter === 

//if phone unplugged
// if feral
//if fear
//if doors locked
// if footsteps discovered 
//if knife -- feral and fear play roles, if more fear, drops and gets stabbed by, if more feral, stabs
//if management letter
//if sam call 
// find drawing on window
// generally, biting should be involved
// 0 locks, escape into the hall, run into wardens, another battle and maybe gunned down
//3 locks, battle within, takes some knocks

Thump.

Thump. 

Thump.

Something falls. 

Glass breaks.

She shifts in bed, half-asleep. 

A dream...?

Her eyelids are heavy. After a bleary look around the apartment, finding only familiar shadows, she closes her eyes again.

Her chest is heavy. 

* It's hard to breathe. 

>>>PlaySound(Heartbeat)

-Her heart is giving out.

She opens her eyes but can't make sense of what she sees.


* She's gone mad. 

-It's a trick.

A mirror.

No, it's something else.

A person...?

She stares into her own face, eyes black holes, smile stiff and vacant. 

* It's a nightmare. She has to wake up.
>>>PlayMusic(visitor_terror)
>>>PlaySound(Heartbeat)


-It's a lucid dream. She's had those before. She knows how to wake up. She's done it before. Not this time. Everything is too real.

The weight. The terror. The pain in her arm.

There's hoarse, labored breathing. For once, it's not her. She has nearly forgotten how to get air into her lungs. The face draws closer and a pungent, rotting stench emanates from the hot, sticky breath.

It feels as if she will never be clean again.

Rough, calloused hands snake around her neck and squeeze. She attempts to pull them away, not able to give meaning at the moment to the fur that seems to line them or the sharp nails that dig into her neck.

She thought she wanted to sleep forever. She has never truly known herself. 

She curls her fingers, grabbing at the face but her hand only finds cold plastic. 

* A mask.

-Her fingers are slippery against it but she manages to slide it half off.

The entity is shaken, and for a moment, the hold on her throat loosens and she gasps for air. 

The thing lifts shaking hands to its shadowy face but doesn't touch it. The mask is askance on a face that isn't a face at all. Not one that's human. 

If she looks any longer her mind will fracture. 

She jerks back and shoves hard. The figure reels, only an instant but long enough for her to break free and get to her feet.

Her time is running out. There's a decision to be made.

* [Fight] ->fight

* [Run] 

-She's not a fighter. 

There's no way she can win. She's not brave. She runs.



*[The door is locked.] -> 1_locked_end_runs



*[The door is unlocked.] -> 1_unlocked_end_runs

=1_locked_end_runs
>>>PlayMusic(visitor_fear)
She crashed into the door, ripping at the doorknob. It doesn't turn.

It's locked.

It takes not even three seconds to unlock. 

She turns the first lock and is immediately slammed into the door. Her skull blooms with pain. Her nose explodes in a geyser of blood.

She makes a sound that doesn't sound human and works at turning the deadbolt.

She has been working to undo these chains for years. She's reaching for the chain when she's grabbed and flung back.

She flies through the air. The next she's on her back, staring at the apartment ceiling in a daze. 

* [Get up] 
>>>PlayMusic(visitor_terror)
-She has to get up. It's her only chance. But it's no use. She can't move.

The intruder steps closer before dropping on hands and knees. She's sucking in blood through her mouth and nose, it's puddling in her throat, she coughs.

The creature wearing her face stoops over her, cocking its head from side to side, trying to understand. A low growl bubbles in its throat before it strikes.

Teeth sink into her neck. It's terrifying but familiar. The creature thrashes, jostling her like a doll.

The agony transcends anything she's ever known. 

* There is an instant in which she feels ungrateful. Then it's over.

-> DONE

=1_unlocked_end_runs

She runs for the door, grabbing the doorknob with desperation.

It opens.

The hallway is mammoth and cold, steel doors at the end of the corridor. She usually finds it depressing. Tonight she nearly cries with relief. 

There's movement behind her. She sprints down the hall. Neighbors doors open, curious at the commotion but they quickly close them when they see what's on her tail.

She propels herself past the metal door, into the stairway.

An alarm blares. She has to move faster. She sprints, faster than she ever has before and bursts out into the night.

She heaves for air, her breath coming out like small exclamations.

She's without shoes, without a jacket and it's snowing.

* She won't last long in this. 

-The night is pitch black, but it's easier to see than it should be. She is wearing a short-sleeved shirt. Her bite is exposed. If someone sees her she's done for.

The door to the building bursts open. The creature has escaped the wardens. It sets its sights on her.

She turns on her heel and runs.

Her feet are going numb. The cold hurts.

She thinks she runs but she only hobbles.

* The creature tackles her.

-She screams.
>>>PlayMusic(visitor_terror)
Wardens race out of the building, shouting.

The thing gets behind her, locking a frighteningly strong arm around her neck. She's yanked back.

She's infected! She's infected! the wardens are shouting.

She doesn't know who they're talking about. Her? The thing strangling the life out of her? They fire their guns. Heat streaks past her, and plunges into her, a bullet coursing through the both of them.

She screams again. 

She's pulled, her feet carving trails in the snow, leaving spots of steaming blood. She cranes her neck back. The woods, shadowy and looming. She thrashes but the pressure on her neck tightens. She sees again the terrifying reflection of her face. 

"Found you," it says, as if it were not a natural language. "Found you," it repeats.

* She contemplates biting her tongue. 

-She clamps her tongue between her teeth. They feel sharp. She could bite now, end it all.

Hasn't she always wanted an end?

The wardens are chasing but stop at the sharp rise of fox yowls rising in crescendo.

Her eyes water. 

Fine. 

* She'll go back. -> DONE







=fight
//if knife here: 
//if feral or fear feralknifefight or fearfulknifefight or noknifefear or noknifeferal

{
    - afraid >= feral && hasknife == true:
        -> fearfulknifefight
    - feral > afraid && hasknife == true:
        -> feralknifefight
    - afraid >= feral && not hasknife:
        -> noknifefear
    - feral > afraid && not hasknife:
        -> noknifeferal
}

=fearfulknifefight
>>>PlayMusic(visitor_fear)
She scrambles to get her bearings, remembering the knife beneath the pillow. She misses the first few times she searches and when she does grab hold it's to the sharp edge of the blade. She gasps, looking at her bloodied hand.

A mistake. The creature that has infiltrated her home pounces. 

She slams to the floor, a too heavy weight on her, clawing and pulling at her. She screams but its cut short by her head slamming into the floor.

Everything goes black.

* [Wake up] 

-She opens her eyes. The vantage point doesn't make sense to her. She doesn't understand where she is or what has happened. There are footsteps around her.

Her hand hurts. She looks at it. It's still bleeding.

She sees the door.

* [She locked the door.] ->door_is_locked
* [She unlocked the door.] ->door_is_unlocked

=door_is_unlocked

She starts to move to the entrance, dragging herself along the floorboards. She's grateful she swept and thinks something must be wrong with her to think of that now.

She pulls herself to her feet, unsteady and pulls at the door.

It opens.

The hallway is mammoth and cold, steel doors at the end of the corridor. Usually she finds it depressing. Tonight she nearly cries with relief. 

There's movement behind her.

"Help!" she calls out. Her legs are weak, her hand is burning. A glance at it and it doesn't look normal. "There's something in my apartment!"

She's never made friends with any of these people. She never thought she had to. She wasn't like them. Maybe that has doomed her. 

She goes to one of the doors and pounds on it. She shouts, she screams, she begs.

"Go away!" a woman yells.

She hyperventilates, leaving a streak of blood on the door. 

She looks around like a wild animal. When she turns that thing is there on all fours. It's still wearing a mask of her face. Beneath there is something more animal than human.

* The building alarm blares, the old siren signifying there's an attack. 
>>>PlaySound(Heartbeat)


-The heavy door at the end of the hall bursts open. Armored guards filter into the hall, guns at the ready.

Someone must have phoned the wardens then. Maybe the woman who told her to go away. Maybe more.

The thing growls and snaps her teeth at the wardens. It rights itself and charges towards them. Orders are shouted. The guns pop. The thing keeps going. They keep firing. Then it stops, crumpled on the floor in a bloody heap.

She wheezes for breath. She lifts her arms. "It attacked me," she says.

*A quiet exchange of words. They lift their weapons, pointing them at her. 

-She could argue that she's fine. That she's not like that thing. But her arms are exposed. Her bite is evident. She bares her bloodied  teeth and screams. Maybe she should have fought. Maybe she should have fought before it was too late. She hurtles toward them.

They fire.

She keeps going. They're panicked. They hurry to reload and fire again.

The bullets strike like bricks. Parts of her are removed. 

She collapses, drowning in her own blood. She laughs and chokes some more. They've always responded with more force than was necessary. Is this what fear does? Why didn't it do it to her?

*The wardens come closer, guns still pointed at her. 
>>>ChangeCampfire(Sky)

-"This was the other one, wasn't it?" one of them says.

She looks at the the masked creature twitching in the background. Maybe that's a relief.

They press the barrel of the gun to her forehead and she closes her eyes.

*Finally, some peace. ->DONE




=door_is_locked

>>>PlaySound(Lock)


She starts to move to the entrance, dragging herself along the floorboards. She's grateful she swept and thinks something must be wrong with her to think of that now.

Something pulls on her leg but she kicks, albeit weakly. She's on hands and knees, crawling to the door, gripping to the doorknob for dear life. She turns it. 

It's locked. Her eyes wander up. The chain is still there. The bolt. Her hand is practically useless.

There's labored breathing behind her. That thing breathing through the mask.

She turns the first lock. A fistful of her hair is grabbed. Her head is slammed into the door. She didn't think it was possible to see stars but there are stars.

* [Unlock the bolt] ->unlockbolt
=unlockbolt

>>>PlaySound(Lock)


She unlocks the bolt. Her head is throbbing, she's whimpering.

* [Unlock the chain] -> unlockchain 
=unlockchain
>>>PlaySound(Lock)

The only trap that remains is the chain. It's only three feet above her but it feels impossibly far away. She leans against the door, breathing raggedly. The challenge seems insurmountable but she gets it free.

* [Escape apartment] 

-She starts to move to the entrance, dragging herself along the floorboards. She's grateful she swept and thinks something must be wrong with her to think of that now.

Something pulls on her leg but she kicks, albeit weakly. She's on her hands and knees, crawling to the door, gripping to the doorknob for dear life. She turns it.

It opens. She spills out into the hallway.

The open, empty corridor is ugly, lifeless. She's never been so happy to see it. 

* [Stand up] 

-She tries to stand but can't. She slaps her hands on the hallway floor, only stopping when her legs are grabbed and she's dragged back inside.

The door slams shut.

* [Time marches forward.] 

-The window has been smashed open.

Sam is careful when stepping through to the inside. It's awkward landing on the bed but being here is what matters.

A lamp is overturned on the floor, barely lighting the inside of the apartment. It looks as if a bomb was detonated. It's freezing. There's blood everywhere.

It's hard to keep the panic at bay.

Sam walks through the apartment. 

*There's no one here.
>>>ChangeCampfire(Alien)
-The strength goes out of their legs and they sit. Last visit, it was much warmer. Of course, that was the night that everything started to go wrong, even if Sam didn't know it at the time.

There are claw marks on the hardwood floor. 

It got her too, then.

There's a bloody knife. So in the end, she fought after all.

It should be reassuring but Sam already feels the fire burning in their eyes. They bring a hand to their neck. It's been throbbing for weeks now. It was fun at the time. Sam thought they might see this through, but in the end they ran out of time.

There's a knock at the door.

>>>PlaySound(Knock)


* [The End] -> DONE


=feralknifefight
She remembers the knife under the pillow and grabs it. The thing that attacked her is now in front of her. It's as tall. It's dressed like she is.

The broken mask reveals an eye, a color like amber.

Fight, Sam said. But she hesitates. The creature leaps, knocking her to the floor and all the air she'd managed to sneak into her lungs with it. She coughs, astonished she's held on to the knife. Her palms are sweating. The intruder has pinned her down.

She swings the blade but her hold is precarious. The blade barely grazes the attacker's arm. They don't make a sound. It's as if the blade didn't even strike. They clap a hand around her arm, where the bite is and squeeze.

She howls in pain as the thing's fingers bury into the bite. Her vision goes black and then red. She grits her teeth, springing forward. There is no thought, only instinct. She sinks her teeth into the thing's neck and tastes salt and blood.

The thing yelps.

* [Release]
->pull_away

*[Don't release]
-> dont_let_go

=dont_let_go
>>>ChangeCampfire(Bloody)

Blood fills her mouth, sinewy muscle, chunks of skin. It should disgust her but she no longer seems to know that it should or care.

She leans forward, shaking her head, tearing with her teeth. Nothing about this should feel familiar but it does. The target falls back and she follows, pinning it down, tearing at its neck.

The attacker's hold on her bite loosens, but she continues to bite into it's neck for another few moments, until she feels tired. Drowsy.

She pulls back, teeth, mouth, neck, red with blood. 

She stares down at the figure, it gurgles, its one exposed eye staring at her. Why does it wear her face? She fixes the mask over its face, hiding what's beneath. She leaves a bloody handprint on it.

She stands on shaky legs.

She needs to get out of here.

* [Exit apartment] 
>>>PlaySound(PhoneRing)

-She trudges to the door.

The phone rings. After everything that's happened, it shouldn't terrify her the way it does.

It rings, too loud. 

She looks at the thing on the floor, that strange doppelganger. It is as strange as she has always felt.

It twitches on the floor.

The phone rings.

* [Pick up phone] ->answerphone

* [Ignore phone] ->donotanswer

=donotanswer

>>>PlaySound(PhoneRing)

The phone rings too loudly. She goes to it, ripping the cord from the wall.

She looks around the destroyed apartment. If they didn't know, they will now.

She leaves the apartment, walking calmly down the hall but distracted by all the sounds coming from the apartments. She's curious and wants to enter them but something forces her to keep moving. 

*A neighbor opens the door, looks at her.

-She looks back. She lunges toward the neighbor just in time for the door to slam in her face. She has to keep going but jostles the doorknob instead, pounding at the door. She growls, moves away. She pushes past the metal door and arrives at the stairway.

She takes the metal clanking stairs down until she arrives in the lobby of the building. Some of the wardens are engaged in conversation. She takes measured steps, walking with her head low until she hears footsteps pounding behind her. 

* She runs. 

-The alarm blares.

The entrance will be locked soon. She runs faster than she ever has and explodes into the night. It's cold. She doesn't have a jacket. It's snowing.

The blood is still warm on her body and skin and tendrils of smoke twist from her like tails.

Gunshots fire from inside the building. 

She plods along in the snow. Alarms are being raised in other buildings around the block. Floodlights spark to life. She forces herself to move, realizing too late that she's barefoot.

*Either this disease will take her, or the wardens, or the cold. 

-In the distance she sees Sam, huddled by the payphone, head turned up to see the apartment building. 

She resists the impulse to go to them. How could they see her like this...? Better that Sam remembers her as something better. Not this thing she's become or always has been.The blood is still warm on her body and skin and tendrils of smoke twist from her like tails.

Returning to the building would be suicide. Sam could see. Sam has already seen terrible things.

*The only option left is the forest.
>>>ChangeCampfire(Dusk)
-The foxes congregate there. That's what they say, but no one dares to burn it down. She moves into the snowy banks. The frigid air is reducing her arms and legs to pins and needles, robbing them of any feeling. The blood is starting to freeze on her face.

She walks to the edge of the forest. One more look at Sam and then she steps inside. The blood is still warm on her body and skin and tendrils of smoke twist from her like tails.Better Sam be free of her. Better she be free of this world. 

If she's going to die, if she's been found out, it's better she go away. She's lucky she's the one to decide.

->DONE

=answerphone

She moves to the phone. It's surprising that it did not get disconnected in the struggle. 

She picks up the receiver and brings it to her ear.

"Hey," Sam's cheerful voice, but quiet as if trying not to be heard, "how's it going?"

She spots the typewriter, nearly half as heavy as she is, sitting in the corner of the room. She looks back at the thing on the floor. "It's late, Sam."

"You had me worried earlier."

She doesn't answer.

"Don't be angry but I'm not far from you. I managed to sneak out. I want to see you."

No. Her mouth feels gummy. She flexes her jaw. "Go home." She still holds the knife in her hand. Why didn't she use that instead?

Her body is on fire. 

"I think you're trying to hide that bite from me."

She was but it doesn't matter anymore. "Go home and forget me, Sam." A moment. "Thank you for everything. Get rid of that radio."

She ends the call and disconnects the phone.

* [Leave apartment]

-She exits the apartment. All is quiet.

She walks down the hallway, seeing her distorted reflection in the dull gleam of the doorknobs. She looks like a walking nightmare.

One of the neighbors opens their door, looks at her, profound terror washing over them before they slam the door shut and begin screaming for help.

*She ignores them.

-Past the warden who screams, past the metal doors. She can pretend to be normal. She has always pretended to be normal. She will get past this.

She stops, pausing at the end of a hallway to see a giant, bulbed mirror reflecting her, covered in blood. Her arm looks like it's rotting. Pretend to be normal...

* She's not sure she can sell this performance. 

-Behind her there's a commotion. She walks at a normal pace, though normal is relative given how she limps.

"Hey!" A warden says.

*She barrels down the stairs. 

-An alarm blares. She has to move faster. Forget her limp and the pain and that she ought not to run in the hallways. She sprints, faster than she ever has before and bursts out into the night.

The blood is still warm on her body and skin and tendrils of smoke twist from her like tails.

The night is pitch black, but it's easier to see than it should be. She is wearing a short-sleeved shirt. Her bite is bared. Her teeth are bared. Her fingers have curled into claws.

*In the distance she sees Sam on a payphone.

-She looks in that direction. There is an emptiness in her stomach. It's as if nothing can ever fill her.

Sam looks at her and starts trotting in her direction.

She grits her teeth, panicked, excited.

Why did Sam have to come. 

//feel like we need an 'if sam' here but maybe not?

Stay back, she wants to shout. But her feet move towards them. There's mild alarm on Sam's face. Run, Sam. Run.

Sam doesn't run. Even when there are shouts in the night and the floodlights come on, blinding her. 

* There are orders. She knows what orders mean. s

-She tackles Sam into a bank of snow. 

Sam looks up at her, terrified. 

"You have to go," she manages.

Sam shakes their head.

*"I mean it," her words are strange and slurred. "I'm not --" she doesn't know how to finish the sentence.

-Sam shakes their head. 

"What's wrong with you?" she asks. She's angry. Sam has always been reckless.

Sam takes her wrist and pulls her toward the woods. "They won't follow us in there."

She follows, bloodied, hungry, waiting for an opportunity, waiting for escape. The cold is coming over her. She shivers.

*"Sam."

-"Mh?"

"How's your bite?"

Sam smiles, grim. "Where ever you go, I'll follow."

"You don't want to go where I'm going," she says.

"Not sure I have a choice."

Bullets pop in the night. She glances back. There are screams everywhere. 

"I'm cold."

"It won't be long now."

->DONE


=pull_away

She yanks back, disgusted.

The creature huffs. All she can smell is sweat and rust. She tries to see beneath the mask, into the distorted face that peers back at her. There's something familiar there. Something from long ago. She can't bear to look at it. 

She summons what strength she has. She isn't sure whether it's fear or revulsion that makes her move. She has managed to slip away.

* [Escape] ->run2

She needs to get out.

She rushes to the door.

=run2

//iflocked then lockedvariable alternative 
//ifunlocked then unlockedvariable alternative

*[The door is unlocked] 
->unlocked_end
*[The door is locked. ]
-> locked_end 

=unlocked_end

The doorknob turns in her hand. 

She doesn't know when she last experienced such euphoria.

She wants to relish the moment but she can't.

There's a grunt behind her. She runs.

One of the neighbors opens their door, looks at her, profound terror washing over them before they slam the door shut and begin screaming for help.

She ignores them.

The thing is on her heels. She can't let it catch her. Past the warden who screams, past the metal doors.

Behind her there's a commotion. 

* She barrels down the stairs. 

-An alarm blares. She has to move faster. She sprints, faster than she ever has before and bursts out into the night.

The blood on her is still warm, smokes in the night.

It's easier to see than it should be. She is wearing a short-sleeved shirt. Her bite is bared. Her teeth are bared. Her fingers have curled into claws.

In the distance she sees Sam on a payphone.

She looks in that direction. There is an emptiness in her stomach. It's as if nothing can ever fill her.

Sam looks at her and starts trotting in her direction.

She grits her teeth, panicked, excited.

* Why did Sam have to come. 

-Stay back, she wants to shout. But her feet move towards them. There's mild alarm on Sam's face. Run, Sam. Run.

Sam doesn't run. Even when there are shouts in the night and the floodlights come on. There are orders. She knows what orders mean.

She tackles Sam into a bank of snow. 

Sam looks up at her, terrified. 

* "You have to go," she manages. 

-Sam shakes their head.

"I mean it," her words are strange and slurred. "I'm not --" she doesn't know how to finish the sentence.

Sam shakes their head. 

"What's wrong with you?" she asks.

Sam takes her wrist and pulls her toward the woods. "They won't follow us in there."

She follows, bloodied, hungry, waiting for an opportunity, waiting for escape. The cold is coming over her. She shivers.

"Sam."

"Mh?"

* "How's your bite?" she asks. 

-Sam smiles, grim. "Where ever you go, I'll follow."

"You don't want to go where I'm going."

"Not sure I have a choice."

Bullets pop in the night. She glances back. There are screams everywhere. 

"I'm cold."

"It won't be long now."

->DONE



=locked_end

>>>PlaySound(Lock)

The doors are locked.

She growls with frustration, pawing at the door, fighting with the locks. They've never felt this cumbersome before. These things that kept her safe have become a cage.

*The creature behind her is stirring.
-She keeps fumbling.

All that's left is the chain. It keeps getting stuck on the edge of the latch. She yanks on the door and the cheap chain that had always made her feel safer, comes open.

* There's a grunt behind her. 
-She runs.

One of the neighbors opens their door, looks at her, profound terror washing over them before they slam the door shut and begin screaming for help.

She ignores them.

The thing is on her heels. She can't let it catch her. Past the warden who screams, past the metal doors.

Behind her there's a commotion. 

* She barrels down the stairs. 

-An alarm blares. 

She has to move faster. She sprints, faster than she ever has before and bursts out into the night.

The blood on her is still warm, smokes in the night.

It's easier to see than it should be. She is wearing a short-sleeved shirt. Her bite is bared. Her teeth are bared. Her fingers have curled into claws.

*In the distance she sees Sam on a payphone.

-She looks in that direction. There is an emptiness in her stomach. It's as if nothing can ever fill her.

Sam looks at her and starts trotting in her direction.

She grits her teeth, panicked, excited.

* Why did Sam have to come. 

-Stay back, she wants to shout. But her feet move towards them. There's mild alarm on Sam's face. Run, Sam. Run.

Sam doesn't run. Even when there are shouts in the night and the floodlights come on. There are orders. She knows what orders mean.

She tackles Sam into a bank of snow. 

Sam looks up at her, terrified. 

* "You have to go," she manages. 
-Sam shakes their head.

"I mean it," her words are strange and slurred. "I'm not --" she doesn't know how to finish the sentence.

Sam shakes their head. 

"What's wrong with you?" she asks.

Sam takes her wrist and pulls her toward the woods. "They won't follow us in there."

She follows, bloodied, hungry, waiting for an opportunity, waiting for escape. The cold is coming over her. She shivers.

"Sam."

"Mh?"

* "How's your bite?" she asks. 

-Sam smiles, grim. "Where ever you go, I'll follow."

"You don't want to go where I'm going."

"Not sure I have a choice."

Bullets pop in the night. She glances back. There are screams everywhere. 

"I'm cold."

"It won't be long now."

->DONE

=noknifefear

If only she had a weapon. All she has is fear. She races to the kitchen for a knife but she's disoriented. There are voices all around her, too far, too close to be real and only one force, masked in her own face heading towards her. 

She arrives at the kitchen counter, sees the knife block, reaches for it but is grabbed and hurled across the room before she can reach it.

So much pain.

She pushes herself to her hands and knees and scrabbles back along the floor, pressing herself to a corner. Footsteps follow. She crosses her arms over her face. Trying to hide.

The tears come now. It's over. Shouldn't she be relieved?

"Please, no," she says. Over and over again.

The thing, dressed like her, shaped like her, hidden beneath a mask of her face, stoops in front of her. That foul breath again that makes her want to gag.

It speaks, not entirely human, a low growl, some misshapen version of her voice. "Found you."

* [Submit.] ->DONE

=noknifeferal
>>>ChangeCampfire(Bloody)

If only she had a weapon. The fear of before is giving way to something hot and unrecognizable, but something that suits her better, feels better: rage. 

She races to the kitchen for a knife, despite how disoriented she is. There are voices all around her, too far, too close to be real and only one force, masked in her own face heading towards her. 

She arrives at the kitchen counter, sees the knife block, reaches for it but is grabbed and hurled across the room before she can reach it.

She rolls onto her back. It feels as if every bone is broken. Even if they are, it doesn't matter. She jumps to her feet as the intruder approaches. 

With a scream she charges, knocking it to the ground. She slams her fist into its face. It lands onto the hard mask but the pain doesn't stop her. She doesn't know who or what this thing is. She doesn't care. Even if she wanted to stop, she isn't sure that she could.

So she continues her barrage of fists until the mask is splintered and her fists are bloodied scraps.

* There's blood everywhere.

-Her shirt is soaked in it, her face. Whatever face was beneath the mask isn't there anymore. All that's left is that fragmented imitation of herself. 

She leans down, close to the bloody pulp that remains and sniffs at it. It smells familiar. 

She takes a bite of the face and nearly retches. What is she doing.

She has to leave.

But instead she bows her head, takes another chunk of meat into her mouth.

* [Leave] 

>>>ChangeCampfire(Bloody)

-She tries to move away. She has to leave. She can't. The heat is taking a hold of her body. She grabs the shoulders of the doppelganger, pinning it.

It twitches. It's still alive.

She snaps, teeth clamping down on the throat and tearing. She swallows the meat whole, gagging but unable to stop. 

* [There's a knock at the door.]


>>>PlaySound(Knock)

-She lifts her head to the door. 

"Maintenance!" someone calls from the other side.

The word means nothing to her. She returns to eating.

She doesn't hear the sound of the door opening. Their alarmed cries don't bother her. An alarm goes off but she is undeterred.

She is hungry and hot. She will eat.

* [Continue eating.] -> DONE


-> END


