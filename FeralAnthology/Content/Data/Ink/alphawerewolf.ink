LIST channeltype = FANDOM, ENVIRONMENT, CRYPTIDS, MOVIES
VAR channelname = ""
VAR fanname = ""
VAR enemy = ""

-> start

=== function set_channel_vars(ref x)
    { x:
        - FANDOM:
            ~ channelname = "FanDoom"
            ~ fanname = "fandoomers"
            ~ enemy = ""
        - ENVIRONMENT:
            ~ channelname = "ConservationFrustration"
            ~ fanname = "eco friends"
            ~ enemy = ""
        - CRYPTIDS:
            ~ channelname = "CryptidsNotCrypto"
            ~ fanname = "chupacompadres"
            ~ enemy = ""
        - MOVIES:
TODO
            ~ channelname = "MOVIE CHANNEL"
            ~ fanname = "MOVIE FANS"
            ~ enemy = ""
    }



=== start ===

TW: Misogyny, stalking, violence

* Cool -> true_start

== true_start
Once upon a time, there was a YouTuber. She made videos where she would do her makeup while talking about...

 * [Fandom drama] 
    ~ channeltype = FANDOM
    ->after_choice
 * [Environmental conservation] 
    ~ channeltype = ENVIRONMENT
    ->after_choice
 * [Cryptids] 
    ~ channeltype = CRYPTIDS
    ->after_choice
* [Movies]
    ~ channeltype = MOVIES
    ->after_choice

= after_choice
{set_channel_vars(channeltype)}



"Hey everybody! Welcome back to {channelname}!"

    { channeltype:
        - FANDOM:
            -> fandom_drama
        - ENVIRONMENT:
            -> conservation
        - CRYPTIDS:
            -> cryptids
        - MOVIES:
            -> movies
    }


-> END

= fandom_drama
"Today's video is about the Omegaverse community. For those of you who are unfamiliar... boy, are you in for a treat. A horrible, horrible treat.

"To summarize a very long story, the Omegaverse is a community-created ficitonal universe where human biology is a little bit <i>different</i>. Characters in these stories go into heat as though they were canines - those are omegas. Some characters are 'alphas,' who find an omega's heat irresistable, and there are also 'betas' who... are also there, I guess?

"The whole thing is loosely based on the idea of a wolf pack, and unfortunately for everyone, we'll have some more wolfy bits to get through before all of this is over. But while we're talking about wolves...

-> after_video

= conservation
"Today we're talking about wolves! Wolves have a bad rap in English literature -- blowing down houses, eating grandmas, all that good stuff. And we haven't been so great to them, either. The legality of hunting wolves has been in flux in the US over the past decade -- even now there are still areas where it's legal to trap and kill gray wolves.

"There is absolutely no excuse to be hunting wolves in the modern era. In areas where their population has been protected, they cut down on elk, deer, and moose populations, which greatly improves the health of the local flora. You know what else improves when you reduce those populations? Car accidents.

"Incidentally, here's a random fun wolf fact:


-> after_video

= cryptids
"Good evening to all the cryptids and cryptid lovers out there! Can you guess which creature of the night we're going to be talkinng about today? I'll give you a hint... it's a full moon out tonight.
"That's right! Today we're gonna talk about... <i>awooo!</i> Werewolves! Do we have any Team Jacob people out there? Don't be shy! I can't say I see the appeal myself, but I know some of you love a big, stinky 'alpha' and all monsterfuckers are valid here!
"Although, I gotta say:

-> after_video


= movies
TODO

-> after_video

== after_video
"There's no such thing as an alpha wolf.
"Seriously! Did you know that? The original wolf study where that term was coined was performed under really artificial conditions, and the researcher basically retracted his findings years later. Under normal cirucmstances, wolves  live in loving family packs -- sorry-not-sorry, Mark Territory."

* ["Mark Territory?"] ->whoismark


=whoismark
Mark Territory was an infamous "alpha male" streamer with about ten times as many followers as the YouTuber. It never occurred to her that he might even notice her little joke, let alone care enough to take offense. After some more recording and editing, she uploaded her video, silenced her phone as she always did, and went to bed.

By the time she woke up, her phone was flooded with notifications -- emails, DMs, even a missed call from her best friend. Feeling overwhelmed, she hardly knew where to start...

* [She returned the call.] ->phoneafriend

=phoneafriend

That's right. She called up her best friend.

"Oh honey, I'm so sorry," her friend said before even a hello.

* "For what?"
"...Have you not seen?"
"I've only seen that my phone blew up overnight."
->seeforyourself

* "I haven't looked at any of it yet."
"Oh."
"What happened?"

->seeforyourself

=seeforyourself
"You know the video you made last night?"

"You should see this for yourself. Go to Mark Territory's channel. I'll stay on the line."

Numbly, the YouTuber opened up her laptop and navigated to the channel. Right there in the featured section was a thumbnail featuring her own face. Right next to it was Mark Territory, making an over-the-top grimace. The video's title read, "No such thing as an alpha!?"

"Oh goddamn it," she muttered to herself.

* [She's gotta watch that video.] ->watchmark

=watchmark

She watched the video.

"AWOOOO! I'm Mark Territory, and this is the Alpha Pack -- the only pack where every wolf is an alpha."

The YouTuber rolled her eyes.

"A lot of you guys have brought to my attention a call-out from this make-up channel, {channelname}. Never heard of it! But let's watch and find out!"

The YouTuber watched as her own video filled the screen. Territory's smug, green-screened face sat in one corner, and a rapidly-scrolling chat window filled the entire right-hand side.

Mark pretended to snore through most of the opening.

"Man, this chick is boring!"

But once he was past her little joke about him, he became a lot more interested.

"Do you see what she's doing here? She's trying to leverage my clout to boost her own. Let's pause the video for a second. Chat, how would you rate her based on this image? Be honest, now."

The chat window flooded with numbers.

"Looks like we're seeing a lot of 8s. So now we know why anybody would watch this. This girl could be talking about paint drying and she'd still be crawling with simps. But I guarantee you, if I brought it back to the beginning of the video, before the makeup went on, those numbers would be cut in half. This is what females do -- disguse themselves as something they aren't.
"Personally, I think she overdid it. This isn't your normal, everyday makeup. It's attention-seeking makeup. What do I always say? If your woman is wearing too much makeup, she's cheating."

* [Gross.]->pausevideo

=pausevideo

Disgusted, the YouTuber stopped the video.

"Well, that's about what I expected," she said.

"That isn't all," said her friend. "Skip to the end. Around the 20 minute mark."

With a tired resignation, the YouTuber clicked to the time as instructed.

"-but look, if she really wants to try and prove me wrong, I see she's going to be at VidCon next week. I'm going to be at VidCon next week. You think she has the guts to do a collab? Yeah, I don't think so either."

"Ah," said the girl.

"Yeah," said her friend.

The YouTuber looked at her still-growing DM count. Mystery solved.

"You're not going to do it, are you?"

"No way in hell. I'm not giving that asshole the time of day."

"Good. Hey, I've got to go, but take care of yourself, okay? Let me know if you need to get out of the hou for a while."

"Sure. Thanks."

She set down the phone, took a deep breath, and set about cleaning up her social media. She deleted inflamatory comments, blocked brigaders on every platform, and cried a bit at the sight of her normally relaxed and well-behaved fandom up in arms over whether she should meet him. 

She needed to make a statement, and quickly. She took a long shower, made herself as presentable, and turned on the camera.

"Good morning to all my {fanname} out there. I'm sure by now a lot of you have seen the reaction video by Mark Territory. Let me tell you, being brigaded by his deranged incel minions was the last thing I expected to wake up to today.

* "There has been an influx of trolls in our community[...], and I promise I'll do what I can to amp up moderation to keep our space safe. 
    ->videonext
* "I want to thank you for your support[...]. So many cool people haev reached out to me with similar stories, and it was heartening to know I'm not alone. 
    ->videonext


== videonext
"There's been a lot of talk about whether I'm going to confront Territory at VidCon.

* "His fans have been vocal[...], but I will not be intimidated.
->video2
* "Some of my fans have been vocal[...], wanting to see me "own" him. I appreciate the thought, but there really is no point in trying to debate someone like that.
->video2

==video2
"Let's put this to rest here: if Mark Territory is this insecure over a tame little joke, that's his problem. I have no interest in engaging with him whatsoever."

When she published the video, she was not so optimistic as to think it would be the end of things, but it felt like a step in the right direction. Seeing her base support her decision brought her a great deal of relief, and she stuck around for a few hours, monitoring the comments and aggressively moderating all fronts of communication.
She'd barely signed off when her phone rang. She didn't recognize the number.

* [She answered the phone.]
    "Hello?" she answered.
The only response was an ear-splitting, "Awoooo~!"
The YouTuber hung up. 
->hangup

* [She refused the call.]
The YouTuber refused the call. There was no way it would be anything good.
->hangup

=hangup

No sooner had she set the phone down than it began to ring again. A notification popped up, informing the YouTuber that she had a voice mail.

She put the phone into "Do Not Disturb" mode and flung it aside, flopping backwards onto her bed. She needed to pick her laptop back up and confront this, she knew. But she dreaded what she would see when she opened that screen.

* [She ripped the band-aid]
    There was no point in stalling. The YouTuber took a deep breath, grabbed her laptop, and opened it up.
    ->openthelaptop
* [She psyched herself up first]
    TODO
        ->openthelaptop

=openthelaptop
She had been doxxed.

Her heart felt like lead. There were her real name, phone number, and address, posted for the whole world to see.
Hands shaking, she reported the comments, one after another, like playing whack-a-mole.
She refused a barrage of LinkedIn and Facebook requests.

TODO
* [She contacted Mark Territory] ->emailmt
* [She made another video] ->anothervideo

==emailmt
The YouTuber knew that this was exactly what he wanted. She knew the conversation would be unpleasant. But she also knew that Territory's cronies weren't about to listen to anyone else. Besides, she wasn't about to duck her head and let them harass her without standing up for herself. She composed an email with documented evidence of her doxxing and a polite but firm request for him to speak to his fan base.
It took three more emails, one including a hollow legal threat, before he finally agreed to address his fans.
"Now, it's come to my attention that <i>allegedly</i>, Little Miss 'No Such Thing as an Alpha' has been doxxed. And I thought it might be time for a healthy reminder: She's not worth it.
"Besides, we'll be seeing her at VidCon soon enough."


->continue
==anothervideo
TODO
She made another video.

The YouTuber knew that dealing with Territory directly was only giving him what he wanted, and she refused to give him the satisfaction.

"Hello again. Just a quick update here.

->continue

==continue



Once things were about as resolved as they could be, the YouTuber treated herself to a nice scream into a pillow and a bubble tea, in that order. 

TODO sees a man in the bushes who howls and runs when she calls the cops

After that, the YouTuber stopped going out. She changed her phone number. She spent more and more time in front of the screen, working for hours on end to secure her channel and community.
Before hse knew it, it was time for the con. Something she had looked forward to so intensely before had become a source of dread. But she had worked hard to get to this point, and she was damned if she was going to let her fans down by skipping out. All she could do was go in with her head held high and hope she wouldn't run into him.
Territory found her within an hour of her arrival.
He waltzed right up to her, followed by a cameraman.
"Hey hey, there she is! It's -- what was her name again?"
He turned to the cameraman, who shrugged.
"Whatever. What do you have to say for the Alpha Pack?"
He shoved a microphone into her face.

She said...
* "Alphas still aren't real."
    And before he could reply, she walked away.
    -> after_confrontation
* "Go fuck yourselves."
    And before he could reply, she walked away.
    -> after_confrontation
* Nothing. She simply walked away.
    -> after_confrontation

==after_confrontation
"H-hey!" he yelped. "You do <b>NOT</b> walk off while I'm talking to you!"


Apart from that one incident, she had a good time at the con. She met other creators, greeted fans, and even went to an after-party, drinking with her new friends.
She declined an offer of a ride home -- after all, her hotel was in walking distance.

It was a warm, summer night with a bright, full moon, and for the first time in ages the YouTuber felt whole. She had already forgotten about Mark Territory... until she heard the wolf howl.
TODO some kind of reaction jfc

She quickened her pace, but the ominous sounds continued. She heard another howl, this one closer, and the shuffling footsteps of an animal. Focused as she was on the sound, she made a wrong turn, not realizing until she was already halfway down an alley's dead end.
As she faced nothing but the bare side of a building, a shadow fell over her. She could smell fetid breath, a hint of blood, and an overwhelming scent entirely too similar to that of a filthy dog.
"{channelname}," it growled.
The voice was deep, inhuman, and altogether too close.
"Please," she said. "Don't do this, Mark."
A bestial voice laughed behind her. "Turn around," it said. 
Clenching her fists, she slowly turned.
The wolf was enormous, with matted fur and thick streams of drool dribbling from its muzzle.
"Look at me," the beast ordered. "<i>This</i> is the face of a true alpha. It's the first... and <i>last</i> time you'll ever meet a high-quality male!"
He guffawed.
The YouTuber looked up at him, hands shaking with adrenaline.
"It never had to come to this," she said.
"To what?" the wolf laughed, but it would not be laughing for long.
The YouTuber's entire body was rippling. The true form that lived beneath her human flesh was awakening. She lashed out with her...

TODO 
* Fangs ->finale
* Claws ->finale
* Horns ->finale
* Tentacles ->finale
* Venom ->finale

===finale

TODO she eats him the end

-> END
