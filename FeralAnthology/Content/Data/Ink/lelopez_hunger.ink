VAR hunger_sanity = 0
VAR beast_hunger = 0
VAR meat = 0

-> story_select

=story_select
Select your poison, moron.
+Hungry Boy
    ->header
+[This Story]
    Not yet available.
    ++oh.
    ->story_select
+[That Story]
    Not yet available.
    ++oh.
    ->story_select
+[These Stories]
    Not yet available.
    ++oh.
    ->story_select
+[Those Stories]
    Not yet available.
    ++oh.
    ->story_select

-> header

=header
Title: Hunger Something Something Meat Scary Timez

Author: Luis Enrique Lopez

Description: A young, penny-starved man takes on a simple job that may cost him more than he has. 

TW: Gore, Body Horror, Animal Cruelty, Solitude
Time: Who knows
    +[Play]
    ->start
    +Back
    ->story_select

=start
"...One story of creation tells of a beast with an insatiable appetite that threatened to eat the gods. It was struck down and it's corpse was left to rest upon the sea of the first age."
    *[Flip to the next page]"Chapter 13: Carcass of Creation"
    
    -Declaring this a good place to stop, Oscar folded the corner of the page to mark it. He winced as a tear formed on the crease and he shook his head, deeming it a problem for later.
    What mattered in this instant was his overdue rent and impending eviction. The jobless Oscar unlocked his phone and opened up a trending gig app.
        
        *He began his search[...] <>
        
    -of any job he could find that would let the landlord know he was making an effort. He filtered for jobs with little to no experience and a payout range too high for the expected skill level.
    
    -(job_opts) {Which one did he check?|What else popped up?|There had to be something that wasn't so specific. <>}
    
    * Some themed TV-show performance.[] Oscar knew nothing about the show, but did have a clue on fans being particular about the details.
    
    * Something requiring insane motor-skills[] Oscar couldn't possibly fake being a juggling Cirque du Soleil acrobat. He went back a page.
    
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
    
    *called the number.[]
    
    *thought of looking for another gig.[] But with no other recourse in mind, he dialed the number from the job posting.
    
    -The phone rings.
"Hello, this is the Fleischer residence. Please leave your name and reason for calling we will get back to you after determining your query."

You wait for a response, and not more than a minute they call back.

"Hello this is Henry Fleischer, are you calling about the job posting?"

"Yeah, I can do it. I just don't have a car."

"Great, here are some additional details (can't tell you location, you must stay in house), we will send someone to pick you up. Thank you."

"Appreciate it. I'll do my best."

*Oscar waits for the ride.

Oscar gets picked up and the car is blacked out and you fall asleep.

->house

=house

Oscar finds himself in a sizable living room. There's an arch that leads to the kitchen that contains a fridge. A door that leads to some stairs heading downwards, where the pet sleeps in a kennel. Another door leads to the bedroom, where Oscar sleeps.

*[Check basement.] There is a kennel and a creature inside of it that only breathes lightly and slowly. It does not respond to Oscar.

*[Check kitchen.] The fridge has a mysterious meat neatly organized in 8-12 trays. No other edible stuff is to be seen.

*[Check bedroom.] This is where you sleep.

-Wow look at all the details. Also, this is day 1.

Oscar reads a note that has specific instructions on feeding the pet.
\-Feed the creature twice a day.
\-Make sure all the meat is gone by the time we get back.
\-It will not eat anything else.
\~Henry & Frieda Fleischers

What does Oscar do?

*Go to kitchen

*Go to bedroom

*Go to basement





    
    
->Next_part

=Next_part
->DONE