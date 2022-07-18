LIST channeltype = FANDOM, CRYPTIDS, MOVIES
LIST ending = ANIMAL, BEATEN, DROWNED, DROPPED, MISSING, INSANE
VAR channelname = ""
VAR fanname = ""
VAR growledname = ""
VAR nickname = ""
VAR takeout = ""

-> start

=== function set_channel_vars(ref x)
    { x:
        - FANDOM:
            ~ channelname = "FanDoom Scrollers"
            ~ fanname = "fandoomers"
            ~ nickname = "Dr. FanDoom"
            ~ growledname = "FaaaaaaaaanDoooooom..."
        - CRYPTIDS:
            ~ channelname = "CryptidsNotCrypto"
            ~ fanname = "chupacompadres"
            ~ nickname = "Crypty"
            ~ growledname = "Cryyyyyyyyyyptyyyyy..."
        - MOVIES:
            ~ channelname = "Netflix and Chill the Fuck Out"
            ~ fanname = "Netflix-and-chillers"
            ~ nickname = "Chilly"
            ~ growledname = "Chillllll..."
    }


=== description === 
Title: No Such Thing as an Alpha
Author: Ghost Clown

Description: When a YouTuber makes a harmles joke about an "alpha male" streamer, things go worse than she could have imagined...

CW: Stalking, violence, misogyny

Time: 15

-> DONE

=== start ===
>>>PlayMusic(alpha_girl)
Once upon a time, there was a YouTuber. She made videos where she would do her makeup while talking about...

 * [Fandom drama] 
    ~ channeltype = FANDOM
    ->after_choice
 * [Cryptids] 
    ~ channeltype = CRYPTIDS
    ->after_choice
* [TV & movies]
    ~ channeltype = MOVIES
    ->after_choice

= after_choice
{set_channel_vars(channeltype)}

That's right. And she was just starting on a new video...

>>>ShowImageRight(Girl)
>>>ChangeCampfire(Sky)
"Hey everybody! I'm {nickname}, and this is {channelname}!

    { channeltype:
        - FANDOM:
            -> fandom_drama
        - CRYPTIDS:
            -> cryptids
        - MOVIES:
            -> movies
    }


-> END

= fandom_drama
* "I hope you're already for a bonkers-wild thrill ride[..."], because today, we're talking about the Omegaverse community! For those of you who are unfamiliar... boy, are you in for a treat. 

    **A horrible, horrible treat.[.."]
    
    "To summarize a very long story, the Omegaverse is a community-created ficitonal universe where human biology is a little bit... different. Characters in these stories go into heat as though they were canines - those are omegas. Some characters are 'alphas,' who find an omega's heat irresistable, and there are also 'betas' who... are also there, I guess?
    
    "The whole thing is loosely based on the idea of a wolf pack, and unfortunately for everyone, we'll have some more wolfy bits to get through before all of this is over. 
    *** "But while we're talking about wolves...["]
        -> after_video

= cryptids
* "Good evening to all the cryptids and cryptid lovers out there!["] Can you guess which creature of the night we're going to be talkinng about today? I'll give you a hint... it's a full moon out tonight, and I'm feeling just a bit feral...
    ** "Have you guessed?["]
    "That's right! Today we're gonna talk about... AWOOOO! Werewolves! Do we have any Team Jacob people out there? Don't be shy! I can't say I see the appeal myself, but I know some of you love a big, stinky 'alpha' and all monsterfuckers are valid here!
        *** "Although, regarding alphas, I gotta say one thing[."]:

-> after_video


= movies
* "Today we're going to do something a bit different from usual.["]
    "I appreciate this fandom, and I always read through your comments and suggestions. But sometimes, just for funsies, I like to do something that absolutely no one requested. Today is one of those days. And that's why we're about to  talk about Teen Wolf!
    
    "And no, this isn't about Sterek. Y'all already know my hot take on that one."
    
    ** She paused for a moment[.], giving herself space to edit in a funny sound effect or graphic later, then continued with her monologue.
    
        "In fact, that's not even the right Teen Wolf. Instead, I wanted to deep dive into the 1985 Michael J. Fox coming-of-age film, where the magic miracle of wolf puberty solves all of a boy's problems. It's kind of like the exact inverse of Ginger Snaps.
        
        "Come to think of it, that's not a bad idea for a later video, is it? Note to self: Do a video about the gender politics of werewolves. Why do boys turn into 'alphas' and girls become 'monsters'?
        
        *** "Anyway! Before I get into it, there's a fun fact I want to share[."]:

-> after_video

== after_video
"There's no such thing as an alpha wolf.
"Seriously! Did you know that? The original wolf study where that term was coined had been performed under really artificial conditions, and the researcher spent the rest of his career trying to retract his findings. Under normal cirucmstances, wolves  live in loving family packs — sorry-not-sorry, Mark Territory."

* [Mark Territory?] 
>>>HideImageRight()
>>>ChangeCampfire(Dusk)
>>>PlayMusic(campfire)
Mark Territory was an infamous "alpha male" streamer with about ten times as many followers as the YouTuber. It never occurred to her that he might even notice her little joke, let alone care enough to take offense. She didn't think anything of it at all.

And so, in the last moments of peaceful oblivion that she would have for some time, she finished recording her video, edited it, and uploaded it. At that point it had been a very long day, so after checking to see that her video had published without issue, she silenced her phone and climbed into bed.

** [Sweet dreams.] -> sweetdreams

=sweetdreams
>>>ResetCampfire()
The next morning, the YouTuber woke up to her sleep app's alarm screeching at her. Drowsily, she grabbed the phone to silence it. It was then that she saw that the screen had been flooded with notifications.


When the YouTuber woke up the next day, she found her phone flooded with notifications. There were emails, DMs, even a missed call from her best friend. Feeling overwhelmed, she hardly knew where to start...

* [She returned the call.] ->phoneafriend

=phoneafriend

She called up her best friend.

"Oh honey, I'm so sorry," her friend said before even a hello.

* "For what?"
"...Have you not seen?"
"I've only seen that my phone blew up overnight."
->seeforyourself

* "So, I haven't actually looked at any of it yet."
"Oh."
"Don't 'oh' me! What happened?"

->seeforyourself

=seeforyourself
"Well... you know the video you made last night?"

"Yeah..."

* Her friend inhaled sharply before answering.

<> "Actually, you should see this for yourself. Go to Mark Territory's channel. I'll stay on the line."

Numbly, the YouTuber opened up her laptop and navigated to Territory's channel. Right there in the featured section was a thumbnail featuring her own face, captured at an unflattering moment. Next to it was Mark Territory's face, frozen in an over-the-top grimace. The video's title read, "No such thing as an alpha!?"

"Oh goddamn it," she muttered to herself.

    ** She watched the video.
    >>>PlayMusic(alpha_guy)
    >>>ChangeCampfire(Lime)
    >>>ShowImageLeft(Guy)
    
    "AWOOOO! I'm Mark Territory, and this is the Alpha Pack — the only pack where every wolf is an alpha."
    
    *** The YouTuber rolled her eyes.
    >>>ShowImageRight(Girl)

    "A lot of you guys have brought to my attention a call-out from this make-up channel, {channelname}. Never heard of it! But let's watch and find out!"
    
    The YouTuber watched as her own video filled the screen. Territory's smug, green-screened face sat in one corner, and a rapidly-scrolling chat window filled the entire right-hand side.
    
    {channeltype == MOVIES: "Movies, huh? I bet this chick loves hentai. You know the type I'm talking about."}
    {channeltype == FANDOM: "What the fuck is she even talking about? She sounds like a squawking bird."}
    {channeltype == CRYPTIDS: "Does anybody actually watch this? It feels like sludge being dripped directly into my brain."}

    Snide comments aside, Mark pretended to snore through most of the opening. But once he hit the part where she made a joke about him...
    
    **** He became significantly more interested.
        
        "Do you see what she's doing here, calling me out like that? She's trying to leverage my clout to boost her own. 
        "Let's pause the video for a second. Chat, how would you rate her based on this image? Be honest, now."
        
        The chat window quickly filled with numbers.
        
        "Looks like we're seeing a lot of 8s. So now we know why anybody would watch this. This girl could be talking about paint drying and she'd still be crawling with simps. But I guarantee you, if I brought it back to the beginning of the video, before the makeup went on, those numbers would be cut in half. This is what females do — disguse themselves as something they aren't.
        "Personally, I think she overdid it. This isn't your normal, everyday makeup. It's attention-seeking makeup. What do I always say? If your woman is wearing too much makeup, she's cheating."

***** [Stop watching]->pausevideo
***** [Keep watching]->keepwatching

=pausevideo
>>>HideImageLeft()
>>>HideImageRight()
>>>ResetCampfire()
>>>PlayMusic()

Disgusted, the YouTuber stopped the video.

"Well, that's about what I expected," she said.

"That isn't all," said her friend. "Skip to the end, around the 20 minute mark."

"Can't you just tell me?"

"I can, but I know you and I know you'll eventually watch it anyway. You may as well get it over with while I'm here with you."

* The YouTuber felt a bit called out, but could not argue the point.
>>>PlayMusic(alpha_guy)

->skiptotheend

=keepwatching
Her friend said, "He's just going to rant a while. Skip to the end, around the 20 minute mark."

The YouTuber always had difficulty looking away when she knew people were talking shit about her, but she trusted her friend's judgment on this one.

->skiptotheend

=skiptotheend
>>>ChangeCampfire(Lime)
>>>ShowImageLeft(Guy)


With a tired resignation, she clicked to the time as instructed. Once more, Mark Territory's voice filled the room.

"-but look, if she really wants to try and prove me wrong, I see she's going to be at VidCon next week. I'm going to be at VidCon next week. You think she has the guts to do a collab? Yeah, I don't think so either."

* ["Ah."]
>>>HideImageLeft()
>>>ResetCampfire()
>>>PlayMusic(campfire)

"Ah," said the YouTuber.

"Yeah," said her friend.

The YouTuber looked at her still-growing DM count. Mystery solved.

"You're not going to do it, are you?"

** "No."
    ->nowayjose
** "No way in hell."
    ->nowayjose
** "Over my dead body and preferably also his."
    ->nowayjose


== nowayjose
"Good. Hey, I've got to go, but take care of yourself, okay? Let me know if you need to get out of the house for a while."

"Sure. Thanks."

She set down the phone, took a deep breath, and set about cleaning up her social media. 

-(social_media_cleanup)
* [Go through DMs] 
    First, her DMs. She started with Twitter, and clicked the first notification— 

    "I'M GOING TO KILL YOU"
    
    The YouTuber recoiled. It wasn't her first time receiving a nasty message on the internet, but to see one so early and while already feeling stressed hit her harder than she would have expected.
    
    Once the initial shock wore off, she felt embarrassed for letting it get to her.
    
    "Stupid," she murmured to herself. "You should be used to this by now."
    
    ** She reported and blocked the user[.], then continued on.
    
    The next message was even more repulsive, containing grotesque specifics of what the sender would like to do to her. She felt herself grimace, and couldn't report it quickly enough.
    
    But after a dozen more, it became mechanical. Report and block. Report and block.
    
    It wasn't all bad. Fans, friends, and strangers all reached out to her with symapthy and similar stories. 
    
    
    She didn't have time to read them, but she saved them for later. She had the feeling she was going to need them.


->social_media_cleanup
* [Clean up the comment section] 

    The YouTuber turned off comments for the video that set everything in motion, then set comments on the rest of her channel to be held for review before publishing. It was tempting to turn everything off, but she had worked hard to build a strong community in the comments.
    
    She knew that there would be some hideous comments on other videos, but there were more urgent matters to deal with, so she called this one good for now.
    
->social_media_cleanup


* [Check on Discord]

    The Discord, thankfully, had volunteer mods who did a fantastic job of weeding out ne'er-do-wells, and the YouTuber was deeply relieved to see that they were on top of banning brigaders. However, they did ask her help with one thing — to address the debate going on in general chat.
    
    What she found was a heated argument about whether she should collab with Mark Territory at VidCon and "own" him. Familiar, normally well-behaved posters were up in arms.
    
    ** Somehow, that got to her more than anything. 
    
    She left a quick message thanking everyone for their support and announcing that she would not be doing any such video.
    
    Then she took a short break from her computer, stepping aside to have a good cry.


->social_media_cleanup
* ->responsevideo

===responsevideo
Now that she'd done some damage control, she psyched herself up for what needed to happen next. 

* [She needed to make a statement.] ->makeastatement

=makeastatement
>>>ShowImageRight(Girl)
>>>ChangeCampfire(Sky)
>>>PlayMusic(alpha_girl)

She needed to make a statement, and quickly. She shoveled down a bowl of cereal, took a long shower, made herself presentable, and turned on the camera.

"Good morning to all my {fanname} out there. I'm sure by now a lot of you have seen the reaction video by Mark Territory. Let me tell you, being brigaded by his deranged minions was the last thing I expected to wake up to today.

* "There has been an influx of trolls in our community[...], and I promise I'll do what I can to amp up moderation to keep our space safe. 
    ->videonext
* "I want to thank you for your support[...]. So many cool people have reached out to me with similar stories. I'm still processing all of this and haven't had a chance to respond to any of you yet, but I just wanted to say it's incredibly heartening to know I'm not alone. 
    ->videonext


== videonext
"There's been a lot of talk about whether I'm going to confront Territory at VidCon.

* "His fans have been vocal[...], but I will not be intimidated.
->video2
* "Some of my fans have been vocal[...], wanting to see me 'own' him. I appreciate the thought, but there really is no point in trying to debate someone like that.
->video2

==video2
"Let's put this to rest here: if Mark Territory is this insecure over a tame little joke, that's his problem. I have no interest in engaging with him whatsoever."

* That would do for now.
>>>PlaySound(PhoneRing)
When she published the video, the YouTuber was not so optimistic as to think it would be the end of things, but it felt like a step in the right direction. Seeing her base support her decision brought her a great deal of relief, and she stuck around for a few hours, monitoring the comments and aggressively moderating all fronts of communication.
She'd barely signed off when her phone rang. She didn't recognize the number.

** [She answered the phone]
>>>PlaySound(ManHowlPhone)
    "Hello?" she answered.
The only response was an ear-splitting, "Awoooo~!"
The YouTuber hung up. 
->hangup

** [She refused the call]
The YouTuber refused the call. There was no way it would be anything good.
->hangup

=hangup
>>>PlayMusic(campfire)
>>>PlaySound(PhoneRing)
No sooner had she set the phone down than it began to ring again. A notification popped up, informing the YouTuber that she had a voice mail.

She put the phone into "Do Not Disturb" mode and flung it aside, flopping backwards onto her bed. She needed to pick her laptop back up and confront this, she knew. But she dreaded what she would see when she opened that screen.

* [She ripped the band-aid]
    There was no point in stalling. ->openthelaptop
* [She psyched herself up first]
    "Okay, so maybe you got doxxed."
    The YouTuber frowned at her phone. Two more voice mails had rolled in.
    "Probably. Probably you got doxxed. But not looking at it isn't going to change whether it happened or not. It's not Shroedinger's doxxing."
    The sad attempt at a pep talk was not helping. The YouTuber sighed and opened her laptop.
        ->openthelaptop

=openthelaptop
>>>PlayMusic(alpha_fear)
The YouTuber took a deep breath...

* And opened her laptop[.] to see that... yup. She sure had been doxxed.

Her heart felt like lead. Atop a 4chan thread were her real name, phone number, and address, posted for the whole world to see.

** The YouTuber did what she could. 

She changed her phone number and all of her passwords. She froze her credit cards. She contacted the police, her lawyer, and Google. She reported comments and deleted friend requests on all platforms, one after another, like playing whack-a-mole. 

Hours passed. She didn't even notice that she hadn't eaten lunch, but when dinnertime rolled around, her stomach snarled in protest.

She needed to take a break, but before she did, there was one last matter to attend to...

*** [She would contact Mark Territory] ->emailmt
*** [She would make another video] ->anothervideo

==emailmt
>>>HideImageRight()
The YouTuber knew that this was exactly what he wanted. She knew the conversation would be unpleasant. But she also knew that Territory's pathetic cronies weren't about to listen to anyone else. Besides, she wasn't about to duck her head and let them harass her without standing up for herself. She composed an email with documented evidence of her doxxing and a polite but firm request for him to speak to his fan base.
It took three more emails, one including a hollow legal threat, before he finally agreed to address his fans. 
* He had a Short up within minutes.
    >>>PlayMusic(alpha_guy)
    >>>ShowImageLeft(Guy)
    "What's up, Pack? Just thought I'd let you know, it's come to my attention that allegedly, Little Miss 'No Such Thing as an Alpha' has been doxxed. And I thought it might be time for a healthy reminder: She's not worth it.
** "Besides, we'll be seeing her at VidCon soon enough."
    >>>HideImageLeft()

->continue
==anothervideo
>>>ShowImageRight(Girl)
>>>PlayMusic(alpha_girl)
>>>ChangeCampfire(Sky)
She made another video.

The YouTuber knew that dealing with Territory directly was only giving him what he wanted, and she refused to give him the satisfaction.

"Hello again, {fanname}. Just a quick update here. Since this morning, the amount of harassment I've been receiving has skyrocketed. I've been in contact with law enforcement, but I'm going to ask all of you for a huge favor. If you spot any bad behavior, please, please report it.

"And just as a reminder: I will absolutely not be debating Mark Territory at VidCon."

->continue

==continue
>>>HideImageRight()
>>>ResetCampfire()
>>>PlayMusic(campfire)

Once things were about as resolved as they could be, the YouTuber treated herself to a nice scream into a pillow and put in an order for some takeout, in that order.

* [What to order?]

** [A burger and fries]
    ~takeout = "burgers"
    ->waitforfood
** [Yakisoba and a bubble tea] 
    ~takeout = "bubble tea"
    ->waitforfood
** [A spicy curry] 
    ~takeout = "curry"
    ->waitforfood
** [Sushi. Lots of sushi]
    ~takeout = "sushi"
    ->waitforfood
** [A gigantic burrito]
    ~takeout = "burritos"
    ->waitforfood
** [Fried chicken]
    ~takeout = "fried chicken"
    ->waitforfood
** [A salad, because calories don't care that you've been doxxed] 
    ~takeout = "salad"
    ->waitforfood


=waitforfood
She ordered {takeout}.

The YouTuber moved to her living room, leaving phone and laptop behind. She didn't want to look at another screen for the rest of the night.  She sat on the couch and picked up a book to read, although most of her attention was outside, as she hungrily looked up every time a car passed her window. She was ravenous at this point, and knew that if there was anything in this world that could cheer her up, it was {takeout}.

It wasn't her tasty dinner's chauffer that caught her eye, however. Instead, she was sure she saw movement in her bushes.

* [She double checked that the doors were locked] 
    >>>PlayMusic(alpha_fear)
    The YouTuber rushed to her front door, double-checking that it was locked. It was, both the deadbolt and the handle. Before she could check the back door, she heard a rustling of movement outside, shortly followed by a knock.
    
    She looked through the peephole and saw the face of an unknown man. He howled, laughed, and knocked again.
    
    "I'm calling the cops!" she bluffed. After all, her phone was still in her bedroom.
    
    The threat didn't seem to deter him. He kept pounding on the door, howling like a lunatic.
    
    ** [Boom.]
        Boom.
        >>>PlaySound(Knock)

        *** ["Awwwoooo."]
            "Awwwooooooooooooooooooooooo."
            >>>PlaySound(ManHowl)
            >>>ChangeCampfire(Dusk)
        
            **** [BOOM.]
                "BOOM."
                >>>PlaySound(Knock)
                ***** ["AAAAAAAAWWOOOOOOOOOOOOOOOOOOOO!"]
                    "AAAAAAAAWWOOOOOOOOOOOOOOOOOOOO!"
                    >>>PlaySound(ManHowl)
                    >>>ChangeCampfire(Night)
        
        ****** The YouTuber's mind was racing. What were her options here?
            She thought that she should probably run for her phone. The last thing she wanted was an alteraction with some deranged man.
            -> foodarrives
            

    

* [She peeked out the window] 
    >>>ChangeCampfire(Dusk)
    >>>PlayMusic(alpha_fear)
    Heart pounding, she moved closer to the window to get a good look.
    
    Right there in plain view was an unfamiliar man, standing in her yard. They made eye contact, and he started howling.
    
    ** [She ran for her phone]
        The YouTuber dashed back to her room, grabbing her phone.
        When she returned the man was still there, howling and making obscne gestures in her yard.
        "I'm calling the cops!" she shouted, making sure he got a good look at her phone. But this didn't seem to deter the man at all. He snapped a picture of her on his phone, then howled more enthusiastically. 
        *** She wondered whether it was even worth calling the police. 
            <> They hadn't been especially interested when she'd called them about the doxxing. Who knows what their response time would be...
        -> foodarrives
    ** [She ran for a knife]
        She dashed into her kitchen and picked up the biggest, scariest-looking knife she had. Then she ran back into the living room and pointed it directly at him.
        *** "Get the fuck off my lawn!" she shouted.
            He pointed a phone at her, undoubtedly taking photos or even recording video. She'd probably look like a crazy person, but she couldn't care less. She wasn't going to let some piece of shit incel scare her in her own home.
    
            -> foodarrives

=foodarrives
    >>>ResetCampfire()
    >>>PlayMusic(campfire)
    Her thoughts were interrupted by the sight of a car parking in front of her house. A large man exited the vehicle, plastic bag in hand. The howling freak took one look at him and sprinted away.
    
    
* [Saved by the {takeout}]
    
    She tipped the driver handsomely.

    After that, the YouTuber stopped going out. She spent more and more time in front of the screen, working for hours on end to secure her channel, community, and personal privacy.
    ** Before she knew it, it was time for the con. 
        Something she had looked forward to so intensely before had become a source of dread. But she had worked hard to get to this point, and she was damned if she was going to let her fans down by skipping out. All she could do was go in with her head held high and hope she wouldn't run into him.
    
        *** Mark Territory found her within an hour of her arrival. ->terryencounter

=== terryencounter
>>>ShowImageRight(Girl)
>>>ShowImageLeft(Guy)
>>>ChangeCampfire(Lime)
>>>PlayMusic(alpha_guy)
>>>PlaySound(ManFootsteps)

* He waltzed right up to her, followed by a cameraman.
    "Hey hey, there she is! It's — what was her name again?"
    He turned to the cameraman, who shrugged.
    "Whatever. What do you have to say for the Alpha Pack?"
    He shoved a microphone into her face.
    
    She said...
    ** "Alphas still aren't real."
        And before he could reply, she turned and walked away.
        -> after_confrontation
    ** "Go fuck yourselves."
        And before he could reply, she turned and walked away.
        -> after_confrontation
    ** Nothing. She simply walked away.
    -> after_confrontation

==after_confrontation
>>>PlayMusic(alpha_girl)
>>>ResetCampfire()
"H-hey!" he shouted after her. "Don't you walk off while I'm talking to you!"

The YouTuber kept walking.

* She wasn't about to let him ruin this for her.
    >>>HideImageLeft()
    >>>ChangeCampfire(Sky)
    For the most part, the YouTuber enjoyed her time at the con. She met other creators, greeted fans, and made new friends.
    And sure, she spent the entire time looking over her shoulder. But that was simply her new normal these days.
    
    
    Afterward, she declined an offer of a ride home. 
    
    ** After all, her hotel was in walking distance.
        >>>ChangeCampfire(Dusk)
        >>>PlaySound(ManHowl)

        It was a warm, summer night with a bright, full moon, and for the first time in a month, the YouTuber felt like maybe things were going to be okay. She had even momentarily forgotten about Mark Territory... until she heard the wolf howl.
        
        This time, it wasn't some random asshole yipping at her. It was the sound of an animal...
        
        *** A big one.
            ->encounter

===encounter
>>>PlayMusic(alpha_fear)
>>>PlaySound(WolfBreath)

The YouTuber quickened her pace, but the ominous sounds continued. She heard another howl, this one closer, and the shuffling footsteps of an animal. Focused as she was on the sound, she made a wrong turn, not realizing until she was already halfway down an alley's dead end.
As she faced nothing but the bare side of a building, a shadow fell over her. She could smell fetid breath, a hint of blood, and an overwhelming scent entirely too similar to that of a filthy dog.
* "{growledname}," it growled.
>>>PlaySound(WolfGrowl1)
The voice was deep, inhuman, and altogether too close.

"Please," she said. "Don't do this, Mark."
A bestial voice laughed behind her. "Turn around," it ordered. 
** Clenching her fists, she slowly turned.
>>>PlayMusic(alpha_terror)
>>>ShowImageLeft(Werewolf)
The wolf was enormous, with matted fur and thick streams of drool dribbling from its muzzle.
"Look at me," the beast ordered. "This is the face of a true alpha. It's the first... and last time you'll ever meet a high-quality male!"
*** The werewolf guffawed[.], an awful sound somewhere between a laugh and a bark.
>>>PlaySound(WolfGrowl2)
The YouTuber looked up at him, hands shaking with adrenaline.
"It never had to come to this," she said.
"To what?" the wolf laughed, but it would not be laughing for long.
**** The YouTuber's skin began to pulse.

{channeltype == FANDOM: ->harpy}
{channeltype == CRYPTIDS: ->kelpie}
{channeltype == MOVIES: ->cosmic_horror}

==harpy
>>>HideImageRight()
>>>ChangeCampfire(Bloody)
Feathers burst from her arms, pushing their way through splitting skin and tearing clothing alike. Her fingers and toes grew and hardened, neatly-polished nails becoming razor-sharp talons.
The harpy beat her wings, and the wolf blinked at her.
"What the hell?"
She didn't answer. Instead...

* She lashed out with her talons[.], clawing at his face. Her nails dug deep, coming away with clumps of flesh and fur. The wolf howled in agony, raising his claws to his mangled muzzle.
The harpy didn't pass up the opporunity. She leapt onto him, digging all four talons into his back. He yowled and swiped at her, but his uncoordinated attacks only managed to grab a few stray feathers.
The harpy slashed and slashed, and when his blood loss became too great, the wolf collapsed.
** She lowered her head and began to eat.
>>>PlaySound(GoreEaten)
The wolf's flesh was tough and gamey, but she chewed through it all the same. Once the life bled out of him and his body returned to its original human form, it tasted a bit better.
The harpy ate until she was full, then flapped away into the night.
    ~ ending = ANIMAL
    -> returntocon

* She summoned a storm wind[.], raising a clawed hand to the sky. With a flick of her wrist, a gale slammed into the werewolf, sending him flying into a brick wall. He had barely stumbled to his paws when it struck again, shooting him straight into the building on the opposite side of the street.
Blood trickled from his ears. The actual blows might not have incapacitated him, but his eardrums had ruptured from the changes in pressure, and that left him completely at the harpy's mercy.
Unfortunately for him, she was all out of mercy. She leapt onto his back, grabbing him by the scruff of the neck, and began to flap her wings. As they rose into the air, he thrashed and sputtered. Threats turned into pleas turned into incoherent growls and grumbles. But it was too late for any of it. Once the harpy hit a certain height — about seven stories up, the same height as a neighboring building — she dropped him.
The wolf's final howl was cut short with a crack as he hit the pavement. His form began to shrink, transforming back into that of a human.
    ~ ending = DROPPED

** Satisfied that he was dead, the harpy flew away.
    -> returntocon


==cosmic_horror
>>>HideImageRight()
>>>ChangeCampfire(Bloody)
Her skin peeled back to reveal an impossibly deep void. Within that endless abyss, an uncountable number of eyes opened. And an uncomfortable amount of tendrils emerged.
The werewolf stepped back.
"What the fuck?"
The elder goddess did not answer.

* [She reached forth with her tendrils.] 
    The emerging tendrils extended in unison,  snagging the wolf by his wrists, ankles, neck — anywhere they could coil around. He snapped and clawed at them, but his attacks passed right through them — after all, they were only strands of shadow.
    Soon he was completely engulfed in the black, twisting mass. His increasingly terrified howls became lost in the void that surrounded him.
    The tendrils tightened, and then he was simply gone, lost within a world of infinite darkness.
    
    
    ** The goddess zipped up her human suit and made her way back to her hotel.
    ~ ending = MISSING

    -> returntocon
* [She opened his mind.] 
    Every eye within her focused at once, each one of them looking not at the werewolf, but into him. He, in turn, had no choice but to look back. In those eyes, he saw truths of the universe that no man (or werewolf) was ever meant to see. He experienced the entire presence of an uncaring universe in a matter of seconds.
    
    Though nothing physical had changed, the werewolf's eyes glazed over. His gaze went beyond the goddess, seeing nothing and everything, saliva steadily dripping from his slack-jawed muzzle.
    
    The goddess zipped up her human suit and snapped her fingers in front of him. No response.

    ** Satisfied, she made her way back to her hotel.

    ~ ending = INSANE

    -> returntocon



==kelpie
>>>HideImageRight()
>>>ChangeCampfire(Bloody)
Her face elongated, nostrils flaring, until it had taken the shape of a horse's. Her body enlargened, hands and feet hardening into hooves. Her skin became porous, a viscous liquid oozing out and coating her entire, now equine body.
The werewolf stared at the kelpie and turned his head to the side, not unlike a confused dog.
"The hell are you supposed to be?"
She didn't answer.

* [She stomped him with her hooves.] 
    After her transformation, the kelpie was larger than any real horse, and larger still than the wolf before her. She reared up, then slammed down with her hooves.
    The werewolf yelped at the first blow but only wheezed at the second. He tried to bite back, but his fangs barely made it through the goo, let alone the tough hide beneath. The sticky slime left his muzzle stuck to her neck, which only left him more prone for the stomping.
    The kelpie thundered down wth her massive hooves, over and over, working out the stress and pain of the last month with each successive blow. She kept stomping until there was little more of him than a bloody, roughly human-shaped smear on the pavement.
    ** The kelpie galloped away, feeling much better for having worked out some of her stress.

    ~ ending = BEATEN

    -> returntocon
* [She produced more slime.]
    The kelpie didn't need to attack. She simply stood there and oozed.
    
    The wolf snarled and dove for her jugular, but all he got was a mouthful of goo. He opened and closed his jaws, trying to spit it out, but the motion only accellerated its adhesion to the inside of his mouth, and shortly he could no longer open his mouth at all.
    With a furious grunt, he swiped at her, but his claw met a similar fate to his muzzle, captured in the goo and stuck to her side. He tried to pull it away, only succeeding in getting his other claw stuck.
    Now that he was good and stuck, the kelpie began to gallop, dragging the werewolf along with her. Instinct drove her to the nearest body of water deep enough to drown someone — a swimming pool. She dove in with the werewolf in tow, straight to the bottom of the deep end. Even at the bottom of a pool, the large beast was almost large enough for his muzzle to reach the surface — almost.
    He thrashed and burbled, desperately trying to pull away from the kelpie, but eventually his movement ceased. By the time his body floated to the top of the pool, he was no longer a wolf. He was a human... and a corpse.
    
    ** The kelpie exited the pool and galloped away.
    ~ ending = DROWNED

    -> returntocon


=== returntocon
>>>HideImageLeft
>>>ResetCampfire()
>>>ShowImageRight(Girl)
>>>PlayMusic(alpha_girl)

The next day, the YouTuber returned to the con, continuing right where she had left off. 

Early in the day, another creator approached the YouTuber. They had bonded yesterday over their experiences being harrassed by Mark, and there was no shortage of glee in her new friend's eyes as she asked, in a hushed voice, "Did you hear about what happened to Mark Territory?"

* "No... what happened?"

{ending == ANIMAL: "They found him dead. Get this — they think it was a stray wolf."}
{ending == BEATEN: "He was murdered last night. Beaten to death. Some kind of gang activity, they think."}
{ending == DROWNED: "He's dead. He crashed a private pool and drowned in it."}
{ending == DROPPED: "He's dead. Apparantly he jumped off a building in the middle of the night. Can you believe it?"}
{ending == MISSING: "He's gone missing. He missed his own panel this morning, and it turns out he never showed up to his hotel last night."}
{ending == INSANE: "He's in the hospital. Apparently he's conscious but totally non-responsive. They think he had a stroke or something."}

The YouTuber gasped.

** "Good riddance."
    The other creator laughed.
    ->con_tinue
** "Oh wow."
    The YouTuber put on her best surprised face..
    ->con_tinue

** {ending == ANIMAL} "A stray wolf? In the city?"
    "Right? But there was animal blood and wolf hair around the scene."
    "That's some grisly irony right there."
    ->con_tinue
    
** {ending == BEATEN} "Oh, wow. I didn't realize how dangerous it was around here."
    "Seriously! Tonight we are not letting you walk home alone, girl."
    "Okay, okay."
    ->con_tinue

** {ending == DROPPED} "He must have had some serious inner demons."
    "Yeah, I guess. Ugh, I hope nobody asks us about it. I'm going to have a hard time talking seriously about mental illness while pretending like I'm not overjoyed that he's gone. It would be a lot easier if somebody else had killed him..."
    "You never know. Maybe somebody did."
    The other creator laughed.
    ->con_tinue

** {ending == MISSING} "Gosh, I hope he's okay."
    "I don't," said her friend.
    The YouTuber laughed. "Good point."
    ->con_tinue

** {ending == INSANE} "A stroke at his age? What are the odds?"
    "Don't know, don't care. It's basically karma as far as I'm concerned."
    The YouTuber chuckled. Of course, she felt exactly the same way.
    
    ->con_tinue



==con_tinue
"Anyway, fuck that guy. I bet it's a weight off your shoulders, huh?"

* It wasn't, not really.

Ridding the world of Mark Territory had been satisfying, and she certainly held no regrets. but ultimately, not much ahd changed. The YouTuber still found herself looking over her shoulder and tensing up at the sight of unexpected pings or messages.

Mark Territory wasn't the end. He was only the beginning. Annd unfortunately for the YouTuber, she suspected there would be yet more blood in her future...

** But all the same, she smiled at her friend.


"Yeah," she lied. "I feel a lot better now."


-> END

