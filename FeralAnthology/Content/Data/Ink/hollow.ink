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


// I need a fear/rage loop somewhere for the whole story... also need to create a 'batch' or something for all the locks / unlocks...


-> title

 === function lower(ref x)
 	~ x = x - 1

 === function raise(ref x)
 	~ x = x + 1



=== title ===
<center><h1> Hollow </h1></center>

//need variables for water, read now, bite, lock, unlock all bolts, if any part of the door is relocked variable if the door is unlocked she will be able to quickly get out to sprint into the hallway, if not it will be considerably more difficult to escape / list of noises /sound effects 


* Unlock
-> opening

=== opening ===

#mood:bleak

Wind and snow howl in the night. She rushes not to hurry inside.

The mat on the doorstep appears intact. She stoops to look more closely. It does not appear out of place.

She rises again and faces the door. She relaxes her hand and the keys slip loose from her fingers. She inserts the key and unlocks the door.

She will not allow the door to swing open. Instead, she is careful, turning the doorknob with precision, not letting go until she is sufficiently inside her apartment. 

Everything is immaculate and white: blinding nothingness. There is nothing neither pleasant nor unpleasant in the air. She closes the door behind her, latching the chain, turning the bolt and the small one on the doorknob. Air seeps into her and she exhales softly.

She stops.

A thin envelope has breached the apartment. She stares at it too long before picking it up. Her name handwritten in cheap blue ink, swooping letters. Another letter from the building management.

* Read now
-> read_now

* Read later
-> read_later

= read_now

~ inspectionletter = true

She sighs and opens the letter.

<i> Dear Resident,

It has come to our attention that some tenants have been locking their apartments. As a reminder, this is not permitted. Our maintence crew will be doing required inspections to ensure everything is in order. Make sure to leave doors unlocked at all times. Thank you for your cooperation.

Sincerely,

Abaddon Management </i>

She holds the letter tightly and looks at the door.

* Unlock the door
-> unlock
* Don't unlock the door 
-> do_nothing

= read_later

It can wait.

She sets the envelope in a mail holder.

-> continue_inside

= unlock 

For moments she is frozen. 

Anger and disappointment bubbles inside of her. She is grateful to that. Those are better than fear. She thinks they might be stronger.

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

* tea 
-> tea
* water 
-> water
* alcohol 
-> alcohol

//Now fill this shit in with actual tea stuff later.

= tea 

She starts the kettle and looks through the cabinet at the assortment of teas, loose and clearly labeled by hand. Which one?

//look up tea shit for fucks sake

* white
The white tea is good. 
-> open_letter

* black
The black tea is better
-> open_letter

* green
Something something

# tranquility

-> open_letter


= water 

~ has_water = true 

Her stomach is in knots. It may be best to keep things simple. She runs the kitchen sink. Water spills, straight as a rod. She waits the alloted time it takes to get cool before slipping a glass beneath and gathering just enough. What spills over swirls down the drain. Her lip twitches.

She wipes the glass, removing a stray droplet and  returns to the table and the letter.

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

# anger and hallucination

-> open_letter

=== open_letter ===

She examines the envelope. It's deceptively soft. She turns it over in her hands. There are no creases or bends. No errant ink or markings from oily fingers.  It's as if it manifested on the table out of thin air.

She stands, retrieves her letter opener and opens the envelope carefully. #noise:paperripping

There is a single page inside, folded three times, the edges crisp. The paper is thin and nearly translucent. 

She takes a long, slow breath and swallows, unfolding the letter.


* Read Letter
-> read_letter

= read_letter

~ raise(afraid)

Two words, typed. She notices that before she's able to read them.

<i><b> Found you. :) </i></b>


#variables here: if alcohol have a long drink, if doors left unlocked after reading, prompt to relock the door, if letter from management unread, offer to lock door 


* Look out the window #this will point to snow and fresh tracks outside the window
-> look_out_window

* Look at the door 
-> look_at_door

* This is fine
-> its_fine



#this is if alcohol was chosen


She takes a long drink. It burns down settling into her stomach like acid. 

{!has_alcohol = true} #does this go here? fuck.


= look_out_window
#this if doors were locked

She rises from the chair, letter still in hand. She goes to the window. Her bed rests against the wall. She stares at it, searching for a wrinkle that wasn't there before. It was stupid of her. She should have checked the moment she arrived. 

Her chest is tight. The room is spinning. No. No. No. She's past this. She could close her eyes to calm herself but she can't close her eyes. She moves onto the bed slowly and peers out the window.

There's only black and the slow swirl of snow in the street lights several stories below. No one is out. Instinctively she looks down beneath the window to the firesteps. The snow is several inches thick and undisturbed.

She breathes, closes her eyes now, falls back onto the bed.

-> phone

= look_at_door

#variables needed here




-> phone

= its_fine

~ raise (afraid)

She's imagining it. It's just the cold and hysteria.  She's blowing it out of proportion. She mentally chants their mantra. She's not afraid. She's not afraid. She's not afraid. She's not afraid. She's not afraid.

-> phone

=== phone ===

She lies there gathering breath, slowing her heart when when the rotary phone rings, loud and abrasive. #noise:loudassphone 
She's too alarmed to shout. She opens her eyes and stares at it, willing it to stop. It does. The voicemail picks up. Only seconds pass before the small red bulb on the voicemail blinks.

She swings her legs over the side of the bed, rubbing her eyes, scratching her arm absently. She plays the message.

"Hey, you. It's Sam. Gah, sorry. I hope you recognize my voice by now. Anyway, I was hoping you'd be in by this time. I've been thinking about you and you know, everything. How's the bite? Call me."

* Call Sam
    # does this need to be a choice? 
    -> callsam
    
* Don't call Sam
    -> dontcall
    
= dontcall
    
    ~ nocall = true
   
   She's in no hurry to talk about 'everything'. Nor is she sure she can hold a conversation right now.
    
    A noise. She glances to the window but only sees the night.
    
    -> postcall
    
= callsam
    
~ call_sam = true
      
      
She rubs her eyes feeling her arm throb anew. She resists the urge to look at it.
    
     She doesn't lift her sleeve to look at her arm. She has avoided looking or thinking about it. It's warm and pulsing.
     
     She picks up the phone receiver. Instead of a dial tone she finds crackling static on the other end of the line. #noise:staticsoundheremaybe?
     A moment later she receives the customary dial tone.
     
     She enters Sam's number. She knows it by heart. Her fingers turn the dial, each number whirring back to zero each time. It rings. And rings. A hard thud from the right side of the room. She's ready to hang up when the call is picked up. Sam's voice is on the other end, tentative.
     
     "Hello?"
     
     She finds herself breathing easier. "Hey." Her heart is pounding. "I got your voicemail."
     
     "Were you screening your calls?" Sam laughs when she doesn't answer. 
     
     "Doesn't everyone?"
     
     "No."
     
     She shifts where she sits on the bed, feeling defensive. Deflated. Eventually she finds her voice. "Why did you call?"
     
        "Uh, we're friends? Do I need a reason?" She doesn't respond. Sam sighs. "I did ask about the bite. Are you worried?"
        
        "Not really."
        
        "Really?"
        
        "Yeah."
        
        A tsk. "They're rounding them up, you know."
        
        She says nothing right away, only feels her throat grow tighter. "I feel bad for them."
        
        "They're not safe. I'm surprised they let it go this far."
        
        She chews on her bottom lip. Her head feels hot.
        
        "It's their fault we're locked up like this," Sam continues.
        
        She rubs her neck but doesn't say she doesn't agree. 
        
        "Are you feeling okay?"
        
        She nods, not realizing right away Sam won't be able to tell. "Yes. I'm..." her lip twitches. "It's fine."
        
        "It's okay to be scared."
        
        Her irritation is growing. These past few days have been steeped in irritation. Her existence has become uncomfortable, an itch she can't scratch, something under her skin she can't reach. 
        
        * [Embarrassed] 
        
        "I'm not always scared. Don't tease me."
        
        "Fear's not always a bad thing. Sometimes when your back is against the wall-- that's when you see what you're really made of."
        
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
        
        "It's okay," she says. The snow is bad. The cold is biting. The wardens are mean. She could say all those things but her mouth won't cooperate.
        
        An awkward silence follows before Sam speaks again. "There's talk of pyres burning late into the night over there."
        
        "I hadn't noticed."
        
        "You don't usually go out."
        
        She bites her tongue. "'Out' is..." she shakes her head. She was like this before things changed and Sam knows it. The observation embarrasses her. "Where did you hear that?"
        
        "Radio chatter. You know."
        
        She lowers her voice. "You have to be careful with that. I've told you before. Please get rid of that thing." She's seen the contraption. Some metal box with wires and lighbulbs, always swiftly stowed away when there are inspections.
        
        "How else would we know what's going on?"
        
        "But we <i>don't</i> know. And if we did, what could we do about it?"
        
        "You'd rather we not know?" Sam asks. "You can't bury your head in the sand forever."
        
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
       
       "I don't have anything else to give," she says.
       
       "You only have one life."
       
       She's not sure she does, nor is she sure that it matters. "Then I'd like to hang on to it."
     
        
        -> callcontinued
        
        = callcontinued
        
        "Okay," Sam says, sounding tired. "I appreciate the call back. Keep up the good fight?"
        
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
     
     She breathes out, hazarding a look to the nightstand where the letter rests. There isn't enough air. "I don't know." But she's pretty sure that's a lie.
     
     "Do you think--"
     
     "I don't know," she says again, certain now that it's a lie.
     
     "What did it say?"
     
     "It doesn't matter."
     
     "What did it say?" Sam insists.
     
     Her mouth is locked shut. It isn't the first time she hasn't been able to scream when she's wanted and needed to. "'Found you'." She leaves out the smiley face. 
     
     There's a heavy silence. "I can sneak out of here," Sam says.
     
     "No."
     
     "I can get to you."
     
     <i>"No."</i>
     
     Sam huffs.
     
     "It'll be fine," she says, believing it in the moment, believing it, if nothing else, for Sam's sake. "You can't sneak out. The building has security," she nearly chokes on the words, "it's nothing to worry about. I just..."
     
     "Just?"
     
     "I... don't have anyone else to tell so... I'm telling you." She thinks back to a bloody face, a chipped tooth. Her tongue touches the canine, not as sharp as it once was.
     
     "I'm worried," Sam says. She doesn't respond. "Where was the letter?"
     
     "On my kitchen table."
     
     "Someone was in your home."
     
     Her chest tightens. "Maybe." She fidgets. "Maybe maintenance put it here."
     
     "That's not better."
     
     She can't argue that. "It will be fine," but her voice sounds small and wheezy. Her arm itches as if fire ants were crawling inside of her.
     
     "Go into your kitchen. Grab a sharp knife. Keep it close."
     
     "What am I supposed to do?"
     
     "Fight, damn it."
     
     She bites her lip.
     
     "Promise me you'll do it," Sam says.
     
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
     
     "You know." She shuffles. "The infections."
     
     "Oh, right. Not to worry. Anyway, I thought you didn't buy into that whole government line."
     
     She rubs her ear absently. "I don't."
     
     "See? Nothing to worry about."
     
     She nods. "Okay. Bye, Sam."
     
     "Until next time."
  
  She hangs up the receiver, worrying it was a mistake not to mention the letter. 
  
  Her focus turns to the window again. 
  
  
  -> postcall
  
=== postcall ===
dlkfgjdflgj blah blah blah placeholder


//still several more options i need to put back in especially since it seems to be unrelated to what i have screwed up with the code


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

