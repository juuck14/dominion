PRAGMA foreign_keys=1;

INSERT INTO "expansion" VALUES(2,'Dunwich Horror',1);

INSERT INTO "board"(_id, title, expansionid) VALUES(2,'Dunwich',2);

INSERT INTO "neighbourhood" VALUES(10,2,'Backwoods Country');
INSERT INTO "neighbourhood" VALUES(11,2,'Village Commons');
INSERT INTO "neighbourhood" VALUES(12,2,'Blasted Heath');
INSERT INTO "neighbourhood" VALUES(13,2,'Sentinel Hill');

INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(27,10,'Cold Spring Glen','Cold Spring Glen');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(28,10,'Whateley Farm','Whateley Farm');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(29,10,'Wizard''s Hill','Wizard''s Hill');

INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(30,11,'Bishop''s Brook Bridge','Bishop''s Brook Bridge');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(31,11,'Darke''s Carnival','Darke''s Carnival');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(32,11,'Dunwich Village','Dunwich Village');

INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(33,12,'Devil''s Hopyard','Devil''s Hopyard');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(34,12,'Gardners'' Place','Gardners'' Place');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(35,12,'Harney Jones'' Shack','Harney Jones'' Shack');

INSERT INTO "otherworld"(_id, title, sort_title, red, green, blue, yellow, expansionid) VALUES(9,'Another Time','Another Time',1,1,0,0,2);
INSERT INTO "otherworld"(_id, title, sort_title, red, green, blue, yellow, expansionid) VALUES(10,'Lost Carcosa','Lost Carcosa',0,0,1,1,2);

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(109,10,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(109,27,'You come across a human skull with a star-shaped hole in it. Oddly, it seems to have been ruptured from the inside. Shivering, you replace the skull where you found it. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(109,28,'Leaning against a wooden fence near the Whateley farm, you get some tarry black substance on your hand. Examining it gives you some insight into the nature of the Dunwich Horror. Gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(109,29,'A throaty, feminine voice offers you riches untold from underneath the hill. Do you accept its offer? If so, raise the terror level by 1 and gain $8. If not, you are wracked by pain. Lose 2 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(110,10,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(110,27,'Moving quietly through the underbrush, you overhear a young woman talking to herself. She is fretting about some money her uncle owes to a rather unsavory character. If you wish, you may give her $5 to pay the debt. If you do, she introduces herself as <b>Corinna Jones</b> and asks if she can help you in any way. Take her Ally card if it''s available. If it is not, gain 1 Skill as she teaches you something useful in exchange for your help.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(110,28,'You find a wrinkled scroll laying on the woodpile. If you pass a <span class="check">Luck (-1) check</span>, it turns out to be mystical in nature: Draw 1 Spell. If you fail, the scroll contains the rantings of a madman: Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(110,29,'As you watch in horror, a fallen stone that has recently been pushed over slowly stands up by itself, settling back into its original position. Nervously, you move to the street.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(111,10,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(111,27,'As the sun sets beneath the horizon, hundreds of whippoorwills begin to sing in a wild, frenzied chorus that tears at your mind. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(111,28,'As you approach the old Whateley farm, a man runs up to you. "For God''s sake, don''t go in there!" He introduces himself as <b>Earl Sawyer</b>, the Whateleys'' nearest neighbour. You talk, and he reveals a dangerous plan for dealing with the strange goings-on. If you add 1 Dunwich Horror token to the board, he joins you. Take his Ally card if it''s available. If it is not, draw 1 Spell, 1 Unique Item, and 1 Common Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(111,29,'You see an interesting object perched precariously on the edge of a steep incline. You may pass a <span class="check">Luck (-1) check</span> to grab it without falling. Draw 1 Unique Item. If you attempt and fail, draw 1 Injury card.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(112,10,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(112,27,'Tripping as you climb down a steep incline, you roll a bit and smack up against an ancient stone statue. Gain 1 Spell, but lose 2 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(112,28,'Examining one of the haggard cows that shamble around the farm, you realize that something has been draining the creature''s blood on a regular basis. Lose 1 Sanity and move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(112,29,'A professor from Miskatonic University is here making rubbings from the standing stones. He introduces himself as <b>Professor Rice</b> and asks for your help. If you agree to help him, add 1 doom token to the doom track and take his Ally card if available. If it is not available, gain $5 and 2 Unique Items. If you refuse to help him, nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(113,10,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(113,27,'Walking along a narrow path through the woods, you duck to avoid some low-hanging foliage. The leaves brush the back of your neck. Pass a <span class="check">Luck (-1) check</span> or something warm and moist slides down the back of your shirt. Lose 2 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(113,28,'As you approach the house, you hear something large and almost serpentine thrashing about inside. Pass a <span class="check">Lore (-1) check</span> to realize your danger and escape without rousing its ire. If you fail, lose 1 Stamina as something huge and unseen bats you away from the Whateley farm.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(113,29,'As you begin to ascend the hill your sense of balance deserts you. The ground beneath you seems to rock back and forth like the bow of a ship. Falling on your back, you look up to see that the sky is spinning, and enormous shadowy forms are blocking out many of the stars. Stay here next turn and lose 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(114,10,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(114,27,'As you push through some hanging moss, dozens of black and red spiders fall on your head and neck. Make a <span class="check">Will (-2) check</span>. If you fail, you are bitten several times, reducing you to 0 Stamina. If you pass, you remain perfectly still until they crawl off, then you find an odd item beneath the moss. Draw 1 Unique Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(114,28,'Feeling thirsty, you lower a bucket into the old well to draw up a drink. Make a <span class="check">Luck (-1) check</span>. If you pass, the bucket contains several gold coins. Gain $3. If you fail, the bucket is filled with blood and entrails. Lose 1 Sanity and move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(114,29,'You have disturbed something that should have been left alone. Pass a <span class="check">Luck (-1) check</span> or add 1 Dunwich Horror token to the board.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(115,10,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(115,27,'Make a <span class="check">Luck (-2) check</span>. If you pass, you discover a strange stone statue deep within the glen. Its hands are outstretched, waiting for you to place something in them. If you discard a Unique Item worth at least $5, then skip the Mythos Phase this turn. If you fail the <b>Luck check</b>, then nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(115,28,'You notice that the back door of the Whateley home is open. If you go inside, make a <span class="check">Luck (-1) [2] check</span>. If you pass, you learn the secret of the Whateley gold, and you may search the Spell deck for an Alchemical Process card and take it. If you fail, Lavinia Whateley catches you and <i>Curses</i> you.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(115,29,'You have disturbed something that should have been left alone. Pass a <span class="check">Luck (-1) check</span> or add 1 Dunwich Horror token to the board.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(116,10,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(116,27,'Make a <span class="check">Luck (-2) check</span>. If you pass, you discover a strange stone statue deep within the glen. Its hands are outstretched, waiting for you to place something in them. If you discard a Unique Item worth at least $5, then skip the Mythos Phase this turn. If you fail the <b>Luck check</b>, then nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(116,28,'Walking up the path towards the Whateley farm, you come across the carcass of a dog that someone has shot. Rethinking your visit, you turn right back around and leave. Move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(116,29,'A dry, whispering voice makes promises of power to you from underneath the hill. Do you accept its offer? If so, draw 3 Spells, discarding one of them. During the next Mythos Phase, an extra mythos card is drawn and takes effect. If not, you are punished for your audacity. Lose 2 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(117,10,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(117,27,'Moving quietly through the underbrush, you overhear a young woman talking to herself. She is fretting about some money her uncle owes to a rather unsavory character. If you wish, you may give her $5 to pay the debt. If you do, she introduces herself as <b>Corinna Jones</b> and asks if she can help you in any way. Take her Ally card if it''s available. If it is not, gain 1 Skill as she teaches you something useful in exchange for your help.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(117,28,'You are looking around behind the Whateley farm when you discover the foundation of an old building. Carved into the foundation is a list of names that you recognize from your occult researches, and several you''ve never heard of. Gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(117,29,'A dark man chuckles as you approach. He gestures at you and vanishes. A gate and a monster appear!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(118,10,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(118,27,'You wander for several hours, then emerge in a clearing some time after dark. Looking up at the vast, starry sky, you are struck by just how insignificant mankind is within this cold, uncaring universe. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(118,28,'As you approach the old Whateley farm, a man runs up to you. "For God''s sake, don''t go in there!" He introduces himself as <b>Earl Sawyer</b>, the Whateleys'' nearest neighbour. You talk, and he reveals a dangerous plan for dealing with the strange goings-on. If you add 1 Dunwich Horror token to the board, he joins you. Take his Ally card if it''s available. If it is not, draw 1 Spell, 1 Unique Item, and 1 Common Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(118,29,'A dark man chuckles as you approach. He gestures at you and vanishes. A game and a monster appear!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(119,10,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(119,27,'The pool is extremely cold, but clean and pure, allowing you to scrub away some of the grime from your adventures. Gain 1 Sanity and 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(119,28,'If you pass a <span class="check">Luck (-1) check</span>, you discover some of Wizard Whateley''s notes and find a way to interfere with his plans. You may remove 1 Dunwich Horror token from the board.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(119,29,'A professor from Miskatonic University is here making rubbings from the standing stones. He introduces himself as <b>Professor Rice</b> and asks for your help. If you agree to help him, add 1 doom token to the doom track and take his Ally card if available. If it is not available, gain $5 and 2 Unique Items. If you refuse to help him, nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(120,10,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(120,27,'The water splashes upwards as a monster appears.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(120,28,'If you pass a <span class="check">Luck (-1) check</span>, you discover some of Wizard Whateley''s notes and find a way to interfere with his plans. You may remove 1 Dunwich Horror token from the board.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(120,29,'You slowly make your way up the hill, being careful of your footing on the uneven ground. Each time you look up, the pillar of stone at the hill''s summit appears to have shifted slightly, and once you think you catch a glimpse of a dark man. As you reach the summit, you feel a cold ancient sentience studying you. Pass a <span class="check">Luck (-2) check</span> to gain its approval and draw 1 Spell. If you fail, you pass out and must stay here next turn.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(121,10,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(121,27,'You stumble across an ancient stone table. It has several deep grooves carved into its surface and stained dark brown. If you spend 1 monster trophy with a moon dimensional symbol, the ancient beings here are pleased. Any one investigator you choose (even yourself) is <i>Blessed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(121,28,'An oozing monster appears!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(121,29,'A sly, reptilian voice speaks to you in the night, offering you your heart''s desire. Do you accept its offer? If so, remove one elder sign token from the board. If there are no elder sign tokens on the board, place 2 doom tokens on the doom track. Then search the Skill and Ally decks for a card of your choice from each and take them. If you refuse the voice''s offer, it attempts to destroy you utterly. Pass a <span class="check">Will (-1) check</span> or be <b>devoured</b>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(122,10,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(122,27,'After a brisk swim in the murky river, you emerge to find yourself covered in brown, bloated leeches. Shuddering in the cold morning air, you begin the laborious task of pulling the squirming, glistening parasites loose one at a time. Lose 3 points, divided between Sanity and Stamina however you like.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(122,28,'Examining the remnants of a recent magic ritual, you learn something important about the inner workings of magic. Draw 1 Spell and gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(122,29,'A dark man awaits you near the stone table atop the hill. <i>"I like you. Let me help you out."</i> If you refuse, he shakes his head sadly, <i>"Maybe next time, then."</i> If you accept, gain $5 and 5 Clue tokens. The prie for this may be greater than you think, however. <b>Remember that you have made a deal with the Dark Man of Wizard''s Hill.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(123,11,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(123,30,'Make a <span class="check">Luck (-2) check</span>. If you pass, you find someone''s rail pass on the ground near the bridge. Gain 1 <b>Rail Pass</b> card. If you fail, you find $1 instead.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(123,31,'The snake charmer''s mesmerizing dance leaves you in a trance. Stay here next turn.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(123,32,'Make a <span class="check">Luck (-1) check</span>. If you pass, two little girls walk up to you, holding hands. They stare at you for a moment, then speak in unison. "It''s all riding on you. Be careful." A frightened woman comes up and pulls them away. "Martha! Shirley! I told you not to go wandering off like that!" You are <i>Blessed</i>. If you fail the check, nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(124,11,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(124,30,'Before the bridge, on the side of the road, a car has broken down. A woman watches worriedly as a frustrated man tinkers with the engine. Noticing you, she introduces herself as Catherine Carrington. She offers you $5 if you can fix their car. To do so, you must pass a <span class="check">Luck (-1) check</span>. If you try and fail, they thank you anyway, but do not pay you for your services.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(124,31,'<i>"Care to try your luck? You could win a prize. Just knock down the bottles. It''s so easy, even a child could do it!"</i> You may pay $1 to try one of the fairway games. If you do, pass a <span class="check">Luck (-1) check</span> to draw 1 Unique Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(124,32,'You encounter a gentlemanly old man strolling down the street with a limp. He introduces himself as Squire Sawyer Whateley and gives you $2. "I don''t mean to offend, but it looks like you could use it."');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(125,11,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(125,30,'Joey "The Rat" is leaning against the bridge and motions for you to come over. "I''ve got something special for you today." He has an item for sale. Draw the top Unique Item card and pay $1 more than list price if you wish to purchase it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(125,31,'A clockwork fortune-telling machine catches your eye. The wood and bronze gypsy seems to lear at you mockingly. Pay $1 to have your fortune told? If so, roll a die. On a 6, a white card falls into the slot. <i>"Blessings be upon you."</i> You are <i>Blessed</i>. On a 1, a black card falls into the slot, <i>"A curse dogs your steps."</i> You are <i>Cursed</i>. On a 2 through 5, the machine seems to be broken. Nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(125,32,'Marie Bishop, the local schoolmarm, approaches you as you rest on a bench. Chatting with her, you are surprised at the depth of her occult knowledge and her willingness to share it. Gain 1 Clue token.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(126,11,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(126,30,'Sheriff Engle pulls up next to you. "You''re certainly off the beaten path tonight. Need a ride?" If you accept, move to any location or street area in Arkham. If you move to a location, immediately have an encounter there.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(126,31,'<i>"All the answers to life''s mysteries can be found at the center of the Maze of Mirrors! Enter if you dare, my friend. Only $1!"</i> You may pay $1 to make a <span class="check">Lore (-1) check</span>. If you pass, you find a strange inscription at the center of the maze. Draw 1 Spell. If you fail, you wander aimlessly. Stay here next turn.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(126,32,'As you walk through the Dunwich cemetery, you notice a coffin has been unearthed. There is a small crystal window in it that allows you to see the corpse inside. Peering in, your sleeve snags the catch on the coffin and unlatches it. The coffin bursts open and a pungent alcoholic smell makes you stagger as the corpse screams and tries to crawl out of the coffin. After a moment of flailing, it falls over dead, but the shock causes you to lose 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(127,11,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(127,30,'An ugly young man with a goat-like look to him bars your way across the bridge. "If you know what''s good for you, you''ll stay out of Dunwich." As his eyes meet yours, there is a sickening lurch and you fall unconscious. Stay here next turn.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(127,31,'<i>"Popcorn! Candy apples! Cotton candy! Soda pop! Step right up!"</i> You may pay $1 for some refreshments. If you do, gain 1 Sanity and 1 Stamina. If you do not pay $1, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(127,32,'Walking across the Commons, you pick your way through brambles, shrubs, and other underbrush until you come across a large, charred stump. Sitting down on it for a moment, you are paralyzed as a vision of an angry lynch mob and a defiant victim overwhelms your senses. When you recover, you find that hours have passed. Lose 1 Sanity and stay here next turn.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(128,11,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(128,30,'Deputy Dingby strides past you with purpose, heading for Osborn''s. Make a <span class="check">Luck (-1) check</span>. If you fail, he trips over a stone and his gun goes off, nearly shooting an innocent bystander and sending women and men running. Sadly, it seems the Deputy has sprained his ankle. Sighing, you help him back to the Police Station. Move to the Police Station and have an encounter there. If you pass, he manages to avoid the stone, thanks to your warning, and tosses you $1 for your trouble.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(128,31,'<i>"Enjoying yourself?"</i> Turning to look, you see a portly man in a Ringmaster''s outfit. <i>"My name is Darke. I own this carnival, and I have a proposition for you..."</i> Darke thinks you''re perfect for one of his acts. Take a Retainer card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(128,32,'You loiter around Osborn''s General Store for a while, but the locals concentrate on their games of checkers, giving you the silent treatment. No encounter.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(129,11,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(129,30,'An older gentleman, calling himself Joshua Place, offers to teach you the art of dowsing. If you accept, gain 2 Clue tokens and stay here next turn.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(129,31,'If you are currently <i>Blessed</i> and the <b>Darke''s Blessing</b> card is facedown, then a meaty hand grabs your shoulder. <i>"Good evening. My name is Darke. You and I could be of great use to each other."</i> You may discard your Blessing card to turn the <b>Darke''s Blessing</b> card faceup. <i>"Excellent, excellent. I knew that you were the person I was looking for."</i> If you are not <i>Blessed</i>, if the <b>Darke''s Blessing</b> card is faceup, or if you do not want to discard your Blessing card, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(129,32,'You loiter around Osborn''s General Store for a while, but the locals concentrate on their games of checkers, giving you the silent treatment. No encounter.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(130,11,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(130,30,'Pulling up next to you, Sheriff Engle turns on his lights and siren. "I''m sorry, but I''ve had a complaint and I need to take you in." You are <i>arrested</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(130,31,'From down the fairway, you hear a shout, "Hey Rube!" Glancing up, you see a man running towards you in a panic, with several carnies chasing him. Thinking quickly, you stick out your foot and trip him. The carnies are on him in an instant. The leader thanks you and gives you a reward. Gain $2. However, you make the mistake of looking into the man''s face as they take him away, and the absolute look of terror there unnerves you. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(130,32,'One of your Arkham acquaintances walks out of Osborn''s General Store in front of you. "Hello there! Fancy meeting you here. Need a ride?" If you accept, move to any location or street area in Arkham. If you move to a location, immediately have an encounter there.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(131,11,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(131,30,'You rest and dangle your feet in the cool brook. Gain 1 Sanity and 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(131,31,'<i>"Care to ride the carousel? It''s like no other in the world!"</i> You may pay $1 for a ride. If you do, make a <span class="check">Luck (-1) check</span>. If you pass, visions of the happiest moments of your life float serenely past you. Restore your Sanity to its maximum. If you fail, you witness your death &mdash; a tragic and messy affair. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(131,32,'Climbing up a steep hill, you find yourself near an old decrepit building surrounded by tombstones. A fading sign says that this is the old town meeting hall. Deciding to poke around a bit inside, you come across some very interesting papers. Gain 2 Clue tokens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(132,11,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(132,30,'The brook is covered in a thick mist tonight. Peering into it from the bridge, you see a large shape moving through the mist, circling beneath you. Not wanting to find out what it is, you move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(132,31,'<i>"Care to ride the ferris wheel? You can see the entire state from the top!"</i> You may pay $1 to make a <span class="check">Will (-1) check</span>. If you pass, you learn a lot about the layout of Arkham by looking down on it. Search the Common Item deck for a Map of Arkham card and take it, if there is one. If you fail, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(132,32,'Stopping to rub your aching feet, you find a silver dollar stuck to the bottom of your shoes! Gain $1!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(133,11,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(133,30,'Crossing the bridge, you are startled to find it doesn''t lead where it did yesterday. Draw a mythos card and move to the gate location on it, having another encounter there immeditely.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(133,31,'<i>"Come one, come all! View the wonders of the House of Mystery!"</i> You may pay $1 to go inside. If you do, gain 3 Clue tokens and roll 3 dice, losing 1 Sanity for each failure you roll.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(133,32,'Walking through the town, you are unnerved by the number of hostile stares you receive. However, one man comes up to you and whispers something in your ear before running off. Gain 1 Clue token.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(134,11,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(134,30,'The old boards of the bridge creak alarmingly beneath your feet. Pass a <span class="check">Luck (-1) check</span> or plummet into the icy waters of Bishop''s Brook, losing 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(134,31,'<i>"Come see the freaks! Gaze in wonder upon Samson, the strongest man in the world! Look in terror upon Abraham, the fish-man! View the delights of Dulcinea and Aphrodite, the Siamese seductress of the great kings of Spain! Hurry! Hurry! Step right up!"</i> Pay $1 to see the freak show. If you do, gain 2 Clue tokens, but stay here next turn.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(134,32,'An ancient woman makes her way slowly down the street, surrounded by chattering younger women who refer to her as Mother Bishop. Make a <span class="check">Lore (-1) check</span>. If you pass, she sees you, then smiles and walks up to you before touching your forehead. Abruptly, you learn something new. Draw 1 Spell. If you fail the check, she walks past without stopping.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(135,11,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(135,30,'Make a <span class="check">Luck (-2) check</span>. If you pass, you find someone''s rail pass on the ground near the bridge. Gain 1 <b>Rail Pass</b> card. If you fail, you find $1 instead.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(135,31,'<i>"You there! Care to test your strength?"</i> You may pay $1 to take a swing. If you do, make a <span class="check">Fight (-1) check</span>. If you pass, gain $4. If you fail, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(135,32,'You catch Joe Osborn just as he''s locking up his store for the night. Letting out a sigh, he leans against the door for a moment before noticing you. "Oh, whoops. Heh, sorry about that. I''ve had a long day. Say, I feel like getting out of Dunwich for a bit. You know anyplace good around here?" You mention Hibb''s Roadhouse to him and he smiles. "That sounds perfect. Why don''t you come along and give me direction, and I''ll buy the first round?" If you accept, gain 1 Sanity and move to Hibb''s Roadhouse, then have an encounter there.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(136,11,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(136,30,'As you begin to cross the bridge, some drunken college boys in a Model T come roaring down the road at you. Make a <span class="check">Speed (-1) check</span> to race to safety. If you fail, lose 2 Stamina. If you pass, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(136,31,'A small crowd is gathered around a patchwork tent. Inside a brightly dressed clown encourages the suckers to try their luck. You step forward to get a better look at the weird scars beneath his face paint, and suddenly you find yourself with a coin in your hand, trying to land it on one of the arcane symbols painted on a low table within the tent. Make a <span class="check">Luck (-2) check</span>. If you fail, lose 1 Sanity as the coin lands on the yellow sign. If you pass, gain 1 Sanity as it lands on an elder sign.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(136,32,'An angry, deformed man begins to scream and chase you. Preferring not to make a public scene, you move to the street.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(137,12,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(137,33,'Picking your way between the dead plants, you come across an old man gathering some strange fungus. He introduces himself as <b>Zebulon Whateley</b> and asks if you know the Art. If you discard 1 Spell, take his Ally card. If it isn''t available, gain 4 Clue tokens instead.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(137,34,'Wandering through the house, you peer into the attic. Inside, a filthy woman squats on the floor like an animal and growls viciously at you before leaping to attack. Pass a <span class="check">Speed (-1) check</span> to escape or lose 1 Stamina. In either event, lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(137,35,'Old Harney Jones sits on his porch whittling a piece of wood. You sit and chat with him a while, gaining some valuable insights into Dunwich. Gain 1 Clue token.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(138,12,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(138,33,'The atmosphere here is stifling. Make a <span class="check">Fight (-1) check</span> or lose 1 Stamina and 1 Sanity. If you are reduced to 0 Sanity or Stamina, you are <b>devoured</b>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(138,34,'A weathered man comes up to you as you approach the Gardners'' house. Introducing himself as <b>Ammi Pierce</b>, he tells you that it might be wise to steer clear of the house right now, and asks if you have anything that might help the family''s strange affliction. If you discard 1 Unique Item, Ammi joins you in gratitude. Take his Ally card if it''s available. If it is not, remove 1 Dunwich Horror token from the board.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(138,35,'Following some smoke behind the shack, you find Harney Jones working an old still. "Here, have a sample on the house." Search the Common Item deck for a Whiskey card and take it, assuming any are left.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(139,12,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(139,33,'You find the carcass of a deer laying in the clearing. While it doesn''t appear to have any injuries, blood has erupted from its nose and eyes. Deciding that discretion is the better part of valor, you move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(139,34,'You notice an odd piece of metallic ore on the ground. If you touch it, make a <span class="check">Luck (-1) check</span>. If you pass, it smoothly transforms into an odd item. Take the first Unique Item from the deck that isn''t a <b><i>Tome</i></b>. If you fail, it is absorbed into your skin and assaults your mind. Draw 1 Madness card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(139,35,'Finding an old object in the woods near Harney Jones'' shack, you try to return it to him, but he just tells you to keep it. Draw 1 Common Item.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(140,12,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(140,33,'Gibberish and obscenities are carved into the bark of some of the dead trees ringing the hopyard. You recognize occult symbols on the most twisted and deformed specimens. Pass a <span class="check">Luck (-1) check</span> to draw 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(140,34,'Night falls, and you witness the vegetation of the area glowing and squirming of its own accord. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(140,35,'Harney''s shed is overflowing with odds and ends. "Take some of this junk off my hands," he says. Search the Common Item deck for any one non-<b><i>Weapon</i></b> card and take it.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(141,12,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(141,33,'After stumbling over yet another piece of debris in this dry, barren expanse, you begin to notice a pattern in the way that a certain type of jagged black rock is strewn across the field. Pass a <span class="check">Lore (-2) check</span> to gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(141,34,'A bit of dirt has been disturbed here, revealing an oddly shaped skull. Something warns you that touching it could be a bad idea, but it seems to glow with power at the same time. If you decide to touch it, draw 1 Skill and 1 Madness card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(141,35,'You knock on the door of the shack, but it appears that Harney is out. No encounter.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(142,12,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(142,33,'A small black plant grows here, where no other vegetation survives. Something about its smell compels you to eat one of its small red berries. Gain 1 Clue token and lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(142,34,'Approaching the house, you notice three young boys crouching in the bushes by the side of the drive. Questioning them, you get nothing but variations on the rumors you''ve heard in town: One boy insists the place is haunted, while the other two maintain that Mrs. Gardner is a witch. However, just as you''re about to give up in despair, one of them lets slip a detail of great importance to you. Gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(142,35,'You knock on the door of the shack, but it appears that Harney is out. No encounter.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(143,12,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(143,33,'A sickly monster appears. You receive an extra +1 bonus on any <span class="check">Combat checks</span> against it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(143,34,'You are attacked by a hideous bald creature that leaps out of the bushes at you. Make a <span class="check">Luck (-1) check</span>. If you pass, the creature is weak and easily slain. If you fail, its sharp teeth tear into your neck. Lose 2 Stamina. In either event, you lose 1 Sanity as you realize that this abomination was once an ordinary rabbit.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(143,35,'"Here, take a load off and I''ll teach you a neat trick." Harney shows you a magical incantation. Gain 1 Spell.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(144,12,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(144,33,'Picking your way between the dead plants, you come across an old man gathering some strange fungus. He introduces himself as <b>Zebulon Whateley</b> and asks if you know the Art. If you discard 1 Spell, take his Ally card. If it isn''t available, gain 4 Clue tokens instead.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(144,34,'Make a <span class="check">Luck (-1) check</span>. If you fail, something deep within the well seems to call to you. Pass a <span class="check">Will (-1) check</span> or you leap into the well to be devoured. If you pass either check, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(144,35,'"Hmmm, I may have something that''ll help you out." If you pass a <span class="check">Luck (-1) check</span>, draw 1 Unique Item.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(145,12,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(145,33,'Pass a <span class="check">Luck (-1) check</span> or you have been here too long, and strange hungers have been awakened in you. Draw 1 Madness card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(145,34,'A weathered man comes up to you as you approach the Gardners'' house. Introducing himself as <b>Ammi Pierce</b>, he tells you that it might be wise to steer clear of the house right now, and asks if you have anything that might help the family''s strange affliction. If you discard 1 Unique Item, Ammi joins you in gratitude. Take his Ally card if it''s available. If it is not, remove 1 Dunwich Horror token from the board.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(145,35,'You knock on the door of the shack, but it appears that Harney is out. No encounter.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(146,12,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(146,33,'The fumes in the air here make you feel woozy and you have to sit down. Stay here next turn.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(146,34,'A mutated monster appears! You suffer an extra -1 penalty on any <span class="check">Combat checks</span> against it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(146,35,'You come across old Harney Jones resting in the rocking chair on his porch. He is sitting very still, and when you shake his shoulder, he seems to have passed away. After a moment of silence to show your respect, you close up the shack and go to notify his next of kin down the road. In thanks, they give you a gift to remember him by. Draw 1 Common Item. Harney Jones'' Shack is closed for the rest of the game.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(147,12,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(147,33,'Make a <span class="check">Luck (-1) check</span>. If you pass, you discover an underground chamber containing some alien technology. Draw 1 Unique Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(147,34,'A gate and a monster appear!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(147,35,'Harney hands you a jar of ointment. "Here, rub this on those cuts and bruises you got there. It''ll fix you right up." Gain 2 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(148,12,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(148,33,'You hear a panicked cry from inside a nearby cloud of brownish smoke. If you rush to help, you pull someone inside the cloud to safety, but hurt yourself badly doing so. Draw 1 Ally and 1 Injury card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(148,34,'You are filled with an unnatural vigor. Your Stamina is restored to its maximum. In addition, you gain 3 extra Stamina above your maximum that cannot be restored once lost.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(148,35,'Harney hands you a knife and a piece of wood. "Sit a spell and whittle with me. It''s good for the soul." Gain 2 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(149,12,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(149,33,'You hear a panicked cry from inside a nearby cloud of brownish smoke. If you rush to help, you pull someone inside the cloud to safety, but hurt yourself badly doing so. Draw 1 Ally and 1 Injury card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(149,34,'You are filled with an unnatural vigor. Your Stamina is restored to its maximum. In addition, you gain 3 extra Stamina above your maximum that cannot be restored once lost.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(149,35,'Harney offers you a bowl of thick and delicious mountain stew. Gain 1 Sanity and 1 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(150,12,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(150,33,'Make a <span class="check">Luck (-2) check</span>. If you pass, you stumble across a pile of unusual debris. Picking through it, you find an unusual item. Draw 2 Unique Items and keep one.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(150,34,'A bit of dirt has been disturbed here, revealing an oddly shaped skull. Something warns you that touching it could be a bad idea, but it seems to glow with power at the same time. If you decide to touch it, draw 1 Skill and 1 Madness card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(150,35,'Harney Jones looks you over. "How would you like to do a bit of trading?" You may discard 1 Unique Item, Common Item, or Spell, then draw the top 3 cards of that deck and keep one card of your choice, discarding the other two.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(151,7,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(151,19,'A cave-in blocks the path you came in! Your only hope is to find another way out. Stay here next turn.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(151,18,'The shopkeeper motions you over. "I''ve got something real special in stock today. Interested?" You may draw the top 2 Unique Items and purchase one of them for list price, discarding any items you don''t purchase.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(151,20,'"Testifying" Cooter Falwell talks about a group he''s heard about up in Dunwich called The Believers. He warns you to stay away from them, claiming that they dance named around the standing stones on the hills there and traffick with demons. Although most of what he says is nonsense, you manage to find a few useful kernels of truth. Gain 1 Clue token.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(152,7,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(152,19,'You are in a maze of twisty passages, all alike. Pass a <span class="check">Lore (-2) check</span> or become lost. If you fail, lose 1 Stamina and stay here next turn.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(152,18,'The shopkeeper notices one of the items you''re carrying and his face lights up. "Say, I''ve been looking for one of those. You wouldn''t mind parting with it, would ya? I can pay well." You may sell any one of your Common Items for twice its listed price.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(152,20,'You find the half-buried corpse of a strange being. Draw a monster from the cup and take it as a monster trophy, even if it has the <b>Endless</b> ability.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(153,7,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(153,19,'A gate and a monster appear!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(153,18,'A strange cloaked man comes into the store and buys some things, paying with weathered old gold coins. Asking the shopkeeper about them, you learn some things about the weird goings-on in town. Gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(153,20,'You find a man painting a picture of one of the horrible gargoyles lining the walls of the graveyard. Seeing you, he introduces himself as <b>Richard Upton Pickman</b>, a painter visiting from Boston. If you spend monster trophies that have a total of 5 toughness, Pickman takes a liking to you. Take his Ally card. If it is not available, he teaches you an incantation instead. Draw 1 Spell.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(154,7,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(154,19,'You stumble upon a pocket of bad air. Coughing, you struggle to stagger free. Make a <span class="check">Will (-1) check</span>. If you pass, nothing happens. If you fail, lose 3 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(154,18,'You try talking to the elderly locals gathered around the potbellied stove playing checkers, but you gain nothing but stares and a few befuddled grunts for your trouble. Apparently they don''t like outsiders. No encounter.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(154,20,'Walking through the graveyard, you find a crucifix hanging on a headstone. Thinking that it might come n handy, you pick it up. Make a <span class="check">Luck (-1) check</span>. If you fail, you are <i>Cursed</i>. In either case, you may search the Common Item deck for a Cross card and take it.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(155,7,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(155,19,'You are attacked by a shadowy being, but a large man leaps out of the darkness and drives it off. He introduces himself as <b>Tom "Mountain" Murphy</b>. Make a <span class="check">Luck (-2) check</span>, or discard a Whiskey card to pass it automatically. If you pass, he joins your investigation. Take his Ally card if it''s available, otherwise he gives you something to protect yourself with. Search the Common Item deck and take the first <b><i>Weapon</i></b> you find. If you fail, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(155,18,'You notice a small music box for sale for $2. If you buy it, make a <span class="check">Luck (-1) check</span>. If you fail the check, the music box plays lovely, but ordinary music. If you pass, however, the song that the music box plays is magical. Gain 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(155,20,'A gate and a monster appear!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(156,7,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(156,19,'If you have a Lantern, you notice a deep pit in the floor ahead. Looking down into it, you discover an unusual item. Draw 1 Unique Item. If you do not have a Lantern, you must pass a <span class="check">Luck (-2) check</span> or fall into the pit in the darkness. If you fall, draw 1 Injury.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(156,18,'The shopkeeper offers you $2 to watch the shop for the rest of the afternoon. If you accept, gain $2 and stay here next turn.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(156,20,'Make a <span class="check">Luck (-1) check</span>. If you fail, you overlook an open grave in the gathering darkness and fall in. Lose 1 Sanity and 1 Stamina. If you pass, nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(157,7,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(157,19,'You come across an old brass lantern, lying on its side deep within the cave. Miraculously, it is unbroken. You may search the Common Item deck and take a Lantern card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(157,18,'Tired and sore, you warm yourself by the stove for a while and let the chatter of the locals wash over you. Gain 1 Sanity and 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(157,20,'Carefully stepping inside a mausoleum, you are horrified to hear the door slam shut behind you, locking you in with the corpses and coffins. All night you remain trapped, jumping at every soft scratching sound and low moan of the wind. Stay here next turn. In addition, you must pass a <span class="check">Will (-1) check</span> or search the Madness deck for a Necrophobia card and take it.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(158,6,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(158,16,'Make a <span class="check">Luck (-2) check</span>. If you pass, Carl Sanford opens the door as you''re about to knock. "It''s about time you showed up, you fool. Here, take this. You know what to do with it." Carl then hands you a package and closes the door. Draw 1 Unique Item. If you fail the check, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(158,54,'You participate in a warding ritual led by Carl Sanford. You may spend 2 more Clue tokens that it would normally cost you to seal a gate in order to play an elder sign token on any unstable location without an open gate. If you do not spend the Clue tokens or cannot currently seal gates, then nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(158,17,'The strange, rat-like creature known as Brown Jenkin leaps out of the darkness at you! Search the monster cup for a <b>Rat-Thing</b>. If you find one, battle it with a -1 penalty to your <span class="check">Combat checks</span>. If you don''t, Brown Jenkin grabs one of your items and runs. Lose 1 Item of your choice.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(159,6,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(159,16,'"Care to join the Order?" Carl Sanford and several of his henchmen ask. If you accept, pay $3 and take a Silver Twilight Membership. If you decline, pass a <span class="check">Will (-1) check</span> or lose 3 Stamina as the henchmen assist you out the door. Whether you pass or not, move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(159,54,'Carl Sanford has an important task for you. Take the first <i><b>Mission</b></i> card from the Unique Item deck. However, you''ll have the Lodge''s help completing it, so place 1 Clue token on it to begin with (you may skip the first location on the card).');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(159,17,'Stepping into one of the disused upstairs rooms, you suddenly find yourself elsewhere. Enter Another Time and have an encounter there, then immediately return here.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(160,6,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(160,16,'A monster appears, leaping out of the shadows at you!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(160,54,'Carl Sanford places a powerful spell of protection on you. If you are <i>Cursed</i>, discard the Curse card. If you are not <i>Cursed</i>, you may search the mythos deck for any two cards of your choice and return them to the box.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(160,17,'"Excuse me, stranger, but have you ever seen this symbol before?" A man standing near the house holds up an occult symbol. Make a <span class="check">Lore (-1) check</span>. If you pass, the man introduces himself as <b>Thomas F. Malone</b>, a police detective visiting Arkham on a case. He''s impressed with you and offers to join you. Take his Ally card. If it''s not available, he tells you some valuable information instead. Gain 2 Clue tokens. If you fail, nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(161,6,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(161,16,'You hear the quiet sounds of an intruder. If you investigate, you find a woman dressed in black. She attacks you as soon as she sees you. Pass a <span class="check">Fight (-1) check</span> to subdue her long enough to explain your investigation. You find out that her name is <b>Ruby Standish</b> and that she was robbing the Lodge. However, upon hearing your tale, she agrees to join you. Take her Ally card. If it is not available, draw a Unique Item instead.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(161,54,'One of the Lodge brothers pulls you aside after a meeting. "I had a very disturbing dream last night. It told me that something terrible would happen unless I give you this." So saying, he presses $5 into your hands. Gain $5.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(161,17,'A gate and a monster appear!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(162,6,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(162,16,'"Care to join the Order?" Carl Sanford and several of his henchmen ask. If you accept, pay $3 and take a Silver Twilight Membership. If you decline, pass a <span class="check">Will (-1) check</span> or lose 3 Stamina as the henchmen assist you out the door. Whether you pass or not, move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(162,54,'Researching the dimensional gates that have been opening up in town, you find an arcane ritual for redireting them. You may move any one open gate from its current location to any other unstable location without an elder sign token. Any monsters at the gate''s new location are returned to the cup, and any investigators there are drawn through the gate.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(162,17,'Make a <span class="check">Luck (-1) check</span>. If you pass, you find a dusty chest in an old closet. Draw 1 Common Item. If you fail, scratchy voices from the past claw at your mind. Lose 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(163,6,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(163,16,'Crouching underneath one of the Lodge''s windows, you listen carefully. Pass a <span class="check">Sneak (-1) check</span> to overhear something important and gain 2 Clue tokens. If you fail, security is sent to escort you off the premises. Move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(163,54,'One of the Lodge brothers has a valuable opportunity for you. Take the first <i><b>Task</b></i> card from the Common Item deck. However, thanks to your connections in the Lodge, place 1 Clue token on it to begin (you may skip the first location on the card).');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(163,17,'The ancient witch Keziah Mason appears before you. Make a <span class="check">Will (-2) check</span>. If you pass, she teaches you something of value. Draw 1 Spell. If you fail, she casts a terrible spell upon you: You are <i>Cursed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(164,6,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(164,16,'Walking through the garden outside the lodge, you come across a small, ugly statue of some horrific tentacled creature. It semms to awaken an irrational fear in you. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(164,54,'One of the Lodge brothers notices your distress and casts a spell to help you. Restore either your Stamina or Sanity to its maximum. If both are already at your maximum, then you are <i>Blessed</i> instead.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(164,17,'You discover an incredibly vital piece of information in one of the dusty old books in the library. Gain 1 Clue token for every open gate on the board.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(165,5,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(165,15,'A monster appears and attacks as you approach the front door!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(165,13,'Joey "The Rat" waves to you from the side of the house. "I''ve got some information you might be interested in. Only $4." You may pay $4 to gain 2 Clue tokens. "Hey, info like this don''t come cheap, ya know!"');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(165,14,'Kneeling in one of the pews to pray, you come across an unusual book. Take the first <i><b>Tome</b></i> from the Unique Item deck.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(166,5,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(166,15,'One of the society members is heading over to the library to do some research and offers you a ride. If you accept, move to the Library and draw 2 cards, encountering one card of your choice and discarding the other.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(166,13,'Deputy Dingby stops by Ma''s for breakfast. This is, as you might guess, an unmitigated disaster. After Ma shoos him out of her kitchen, everyone pitches in to help her clean up the mess. Stay here next turn.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(166,14,'Make a <span class="check">Luck (-2) check</span>. If you pass, then you stare up at the stained glass windows, see the light shining in through them, and realize that your troubles aren''t as bad as you thought they were. All investigators who are <i>Cursed</i> may discard their Curse cards.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(167,5,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(167,15,'You encounter a friendly old professor from Miskatonic University. If you spend 1 gate trophy, he introduces himself as <b>Professor Armitage</b> and offers to join forces with you. Take his Ally card if it is available. If it is not, gain 1 Unique Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(167,13,'"Jazz" Mulligan, the head janitor from the college, comes by for some of Ma''s famous apple pie. While he''s visiting, he demonstrates how he got his nickname by playing some soulful blues on his harmonica. Gain 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(167,14,'Reading one of the bibles in the pews, you seek spiritual guidance. Letting it fall open to a page, you read, "The Lord helps those who help themselves." Oddly, it makes you feel better. You may spend 2 Clue tokens to discard the current <i><b>Environment</b></i> from play.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(168,5,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(168,15,'Make a <span class="check">Luck (-2) check</span>. If you pass, then while paging through the historical records, you come across a piece of information that makes everything come together for you. If you have fewer than 5 Clue tokens, gain enough Clue tokens to bring your total up to 5. If you fail, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(168,13,'Zebulon Whateley visits from Dunwich to bring Ma a tonic for her cough. In addition, if your <b>Lore</b> is currently 4 or more, he also takes you aside and teaches you a spell. Draw 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(168,14,'Stumbling into the church, you look up in horror to realize that you''ve just interrupted someone''s funeral. Stammering an apology, you move to the street.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(169,5,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(169,15,'You attempt to get some first-hand accounts of Arkham history from some of the older members of the society. Make a <span class="check">Luck (-1) check</span>. If you pass, you''re able to glean several vital facts from their stories. Gain 1 Clue token. Whether you fail or not, stay here next turn.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(169,13,'Oliver Thomas, the owner of the Curiostie Shoppe, stops by with a gift for Ma. "Landsakes, what do I need with more knickknacks? Here, give it to someone who can actually use it!" Draw 1 Unique Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(169,14,'Knowing that you are engaged in God''s work, Father Michael <i>Blesses</i> you.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(170,5,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(170,15,'You find a book with two of its pages stuck together. Pass a <span class="check">Luck (-1) check</span> to pull them apart without damaging them. Between two pages is a magical incantation. Draw 1 Spell. If you fail the check, you tear the pages and ruin the incantation.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(170,13,'Abigail Foreman drops in for tea with Ma. You are invited to sit in as well. If you accept, gain 1 Stamina, 1 Clue token, and stay here next turn as you attend the tea party.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(170,14,'Father Michael talks with you for a little while about your doubts and fears. You come away from the talk feeling a lot better than you did before. Gain 2 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(171,5,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(171,15,'Weary of your travels, you lean back in one of the comfortable chairs for a awhile and rest. Gain 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(171,13,'Sheriff Engle comes by to see his dear old mother and Ma cooks up a huge mess of grub for everybody. Gain 1 Sanity and 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(171,14,'Exhausted and drained, you sit and listen to the choir for a while. Their beautiful singing helps get you back on your feet. Perhaps there''s no meaning to the universe, but then again, perhaps we give it our own meaning. Gain 2 Stamina and 2 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(172,4,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(172,10,'One of the doctors tells you about an experimental treatment that might help you. It''s expensive, however. You may pay $5 to roll a die. On a success, discard one of your Injury cards. On a failure, gain 2 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(172,12,'Old Sadie Sheldon, leader of the Sheldon Gang, is here. "Hmmm. Do you think you have what it takes to join my gang?" If you spend at least 5 toughness worth of monster trophies or 1 gate trophy, she accepts you into the gang. Take a <b>Sheldon Gang Membership</b> card. If you do not spend the trophies, she has her boys throw you out. Move to the street and lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(172,11,'Miriam Beecher offers to trade spells with you. You may discard 1 Spell to draw a new one from the Spell deck.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(173,4,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(173,10,'One of the doctors tells you about an experimental treatment that might help you. It''s expensive, however. You may pay $5 to roll a die. On a success, discard one of your Injury cards. On a failure, gain 2 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(173,12,'A gate and a monster appear!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(173,11,'Miriam Beecher offers to teach you the spell you need. You may pay $5 to search the Spell deck and take any one card you want. If you turn down her offer, nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(174,4,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(174,10,'The ambulance crew is heading home for the night and offers you a lift. Move to any street area or location in Arkham. If you choose to move to a location, immediately have an encounter there.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(174,12,'Old Sadie Sheldon, leader of the Sheldon Gang, is here. "Hmmm. Do you think you have what it takes to join my gang?" If you spend at least 5 toughness worth of monster trophies or 1 gate trophy, she accepts you into the gang. Take a <b>Sheldon Gang Membership</b> card. If you do not spend the trophies, she has her boys throw you out. Move to the street and lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(174,11,'Miriam Beecher looks up as you enter the shop. "It''s about time you arrive. I have a job for you to do." Take the first <i><b>Mission</b></i> from the Unique Item deck.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(175,4,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(175,10,'Nurse Sharon offers to bandage up your wounds. Gain 2 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(175,12,'You come across a cringing dog. Pass a <span class="check">Speed (-2) check</span> to catch and calm him, or discard a Food card to pass it automatically. You see by his collar that he is named <b>Duke</b>. Take his Ally card. If it isn''t available, instead gain $3 as a reward for returning him to his owner.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(175,11,'Miriam Beecher offers to teach you the spell you need. You may pay $5 to search the Spell deck and take any one card you want. If you turn down her offer, nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(176,4,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(176,10,'By quietly listening to the nurses talk, you are able to learn some useful information. Gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(176,12,'Hearing someone approach, you quickly climb a tree. It turns out to be several members of the Sheldon Gang. Nervously, you listen as they start talking directly under the tree you''re in. Pass a <span class="check">Sneak (-2) check</span> to remain unnoticed and gain 2 Clue tokens. If you fail, they notice you and beat the tar out of you. Lose 2 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(176,11,'As you enter the Magick Shoppe, Miriam Beecher doesn''t even look up. "Sorry, we''re closed right now. I''m performing a cleansing of the store. You''ll have to leave." Move to the street.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(177,4,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(177,10,'Dr. Mortimore eyes you with suspicion. "Excuse me, but who are you here to see?" Pass a <span class="check">Will (-1) check</span> to come up with a plausible excuse and remain here. If you fail, the Doctor has security escort you outside. Move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(177,12,'Abruptly, you realize that you don''t remember how to get back out of the woods. Stay here next turn.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(177,11,'Miriam looks into your face, and you feel as though you are being judged. "I see. Your heart is in the right place. Tell me of your travels, and perhaps I can help you in return." Gain 1 Clue token for every gate trophy you have.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(178,4,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(178,10,'Tired, you sit own in a waiting room chair and accidentally doze off. When you awaken, you find out several hours have passed. Stay here next turn.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(178,12,'A member of the Sheldon Gang with a bottle of moonshine in hand stumbles upon you. Make a <span class="check">Luck (-1) check</span>. If you pass, he''s in a good mood and shares his whiskey with you. Gain 1 Sanity. If you fail, he''s in an ugly mood and robs you. Lose $4 and move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(178,11,'Miriam Beecher looks deep into your heart. "Prove to me your courage and I''ll do what I can to aid you." For every monster trophy you have, gain 1 Stamina or 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(179,3,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(179,8,'You discuss the opportunity to sell a monograph with the President of the University. Pass a <span class="check">Lore (-1) check</span> to make the sale and gain $5.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(179,9,'If the <b>Rare Book Collection</b> is facedown and you have the Necronomicon, Abigail Foreman approaches you, eyeing the book. "Wherever did you get that book? We''ve been looking for another copy of it for years. I know it''s quite valuable, but if you''ll donate it to our collection, I''ll give you unrestricted access to the rare books. We have quite a collection!" You may return the Necronomicon to the box to turn the <b>Rare Book Collection</b> card faceup. "Oh, thank you so much! You won''t regret it!" If the <b>Rare Book Collection</b> card is faceup, if you do not have the Necronomicon, or do not want to discard the Necronomicon, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(179,7,'As you enter a darkened laboratory, a monster appears and attacks you!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(180,3,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(180,8,'"Jazz" Mulligan, the college''s head janitor, is here, mopping something up. "You shouldn''t look in that room, now. It''s not a sight for decent folks, and the police are already on the case." Despite his warning, you take a peek and lose 1 Sanity as you see the red mess he''s cleaning up.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(180,9,'If you have a <i><b>Tome</b></i> from the Unique Item deck, Abigail Foreman walks up to you. "I can''t help but notice that book you''re carrying. I have some discretionary funds for acquisitions at my disposal, and if you''re agreeable, I''d like to purchase it for $10." If you agree, discard the <i><b>Tome</b></i> and gain $10. If you do not have a <i><b>Tome</b></i> from the Unique Item deck, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(180,7,'In this room, you discover a powerful weapon. If you dare activate it, roll a die for each monster on the board. On a success, the monster is returned to the cup. On a failure, nothing happens. Afterwards, roll a die for yourself and lose that much Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(181,3,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(181,8,'One of the campus police overhears you talking about the occult and gently escorts you off campus, leaving you in Independence Square. Immediately move to Independence Square and have an encounter there.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(181,9,'If you''re carrying a <i><b>Tome</b></i>, a shady man in the corner of the library motions you over. "It just so happens that I''ve been looking for that book for some time. In exchange for it, I''d be happy to give you some informtion that could prove vital to you." You may discard a <i><b>Tome</b></i> to gain 3 Clue tokens. If you don''t have a <i><b>Tome</b></i>, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(181,7,'The shattered remains of an unusual object lie here. With some preservation and luck, you might be able to reassemble it. Stay here next turn to make a <span class="check">Luck (-1) check</span>. If you pass it, draw 1 Unique Item. If you fail the check or choose not to attempt it, you have no idea how to reassemble the item. Nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(182,3,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(182,8,'Talking with one of the professors, he seems very interested in your intellectual potential and offers to sponsor you for partial scholarship. You may pat $4 to draw 2 Skills, keeping one of them and discarding the other.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(182,9,'Looking through one of the older books, you come across a note in its margin written in a crabbed hand. Make a <span class="check">Lore (-1) check</span>. If you pass, you are able to decipher it. Draw 1 Spell. If you fail, you return the book to the shelf, none the wiser.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(182,7,'You find a muscular, bored-looking man who challenges you to an arm wrestling match. Lose 2 Stamina if you accept. If this does not knock you unconscious, <b>Sir William Brinton</b> laughs and slaps your shoulder, offering to join your investigation. Take his Ally card. If it is not available, gain $5 instead.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(183,3,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(183,8,'Fear has spread through the campus and a mob has gathered at the steps of the Administration Building. Make a <span class="check">Will (-1) check</span> to convince the students that everything is under control. If you succeed, gain $5 from a grateful University president. If you fail, increase the terror level by 1.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(183,9,'Glancing over the shoulder of a dark-haired man to see the book he''s reading, you''re startled to see that it''s written in an ancient language that only a few people, including yourself, can read. Pass a <span class="check">Lore (-2) check</span> to absorb the information before he notices. If you pass, draw 1 Spell. If you fail, he notices you too soon, shuts the book, and takes it with him out of the library.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(183,7,'"Jazz" Mulligan, the head janitor at the college, catches you wandering around in a restricted area of the building and escorts you outside. Move to the street.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(184,3,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(184,8,'Sitting on one of the tables, you find a silver whistle and a small scrap of paper with some unusual writing on it. If you pass a <span class="check">Lore (-1) check</span>, then you may search the Spell deck for a Summon Shantak card and take it. If you fail, you leave the whistle there, not realizing its value.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(184,9,'Make a <span class="check">Luck (-2) check</span>. If you pass, you find an unusual item hidden between the books on the shelf. Draw 1 Unique Item. If you fail, you accidentally knock over a large pile of books and Abigail Foreman primly escorts you from the premises. Move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(184,7,'You are startled to hear a screech of pain from one of the labs, and you rush in just in time to see a large saw blade slice into a monkey''s brain. It seems that a vivisection is in progress. Staggering back outside, you are violently ill. Lose 1 Sanity and 1 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(185,3,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(185,8,'Pass a <span class="check">Will (-1) check</span> to get the Dean to offer you a retainer to write a manuscript for the college. Gain a Retainer card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(185,9,'The college''s head janitor, "Jazz" Mulligan pauses in his sweeping to look you over. "Hey, I found something pretty interesting that they were throwing out of the library. I''ll let you have it for $3." You may pay $3 to draw 1 Unique Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(185,7,'You discover a dusty machine in a lab that hasn''t been used for several years. It appears to still be in working condition. If you wish, you may pull either the white or the black lever on the machine. If you do, all non-spawn, non-flying monsters in Arkham move in the direction of the arrow that is the same color as the lever you pulled. Monsters move normally in this fashion regardless of their actual movement type (i.e., all monsters are considered to be black-bordered for this purpose).');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(186,2,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(186,5,'You bump into Abner Weeks, the local drunk. Leaning on your shoulder, he cries as he tells you how his wife and daughter were taken away by a black, three-eyed creature one night. He then babbles for a while, talking about ways to fight such monsters. Make a <span class="check">Luck (-1) check</span>. If you pass, his babbling is helpful. Gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(186,6,'A hideous monster appears!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(186,4,'In the center of the island, you come across an ancient stone well with bones littering the ground around it. Staring into its black depths, a feeling of such dread overwhelms you that you immediately flee the area. Lose 1 Sanity and move to the street.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(187,2,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(187,5,'Joey "The Rat" is huddled under the roof of one of the warehouses. Seeing you, he waves you over. "Look, I think I''ve gotten in over my head this time. Ever since I got this thing weird stuff''s been going on. I''ll give you $5 to take it off my hands! Please, think of my wife and kids!" If you accept, draw 1 Common Item, gain $5, and become <i>Cursed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(187,6,'The house suddenly fills with terrible wails and screams. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(187,4,'Time and space distort around you. A gate and a monster appear!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(188,2,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(188,5,'One of the warehouse foremen could use someone who''s good with numbers. Make a <span class="check">Lore (+0) check</span>. If you pass, gain $3 for every success you rolled. If you fail, he throws you out hard enough to make you bounce after checking your numbers. Lose 1 Stamina and move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(188,6,'Entering one of the rooms, you see a chess set sitting on a table. In growing horror, you watch as the pieces begin moving by themselves and shattering into splinters as they are captured. Fleeing the house, you move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(188,4,'Walking into a clearing, you feel that you are at the center of a web of enormous magical energy. You may return one gate token in play to the gate token pile, replacing it with a new gate token from the top of the pile. Monsters are return to the cup as though you had closed the gate.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(189,2,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(189,5,'Walking along the river at night, you bump into a man smoking a stoagie and wearing a trenchcoat. "You look like a person with problems. It just so happens that my business is making problems go away." You may pay $6 to automatically defeat any 1 non-spawn monster on the board.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(189,6,'You bump into <b>Eric Colt</b>. He tells you a horrible tale of the Mythos to test your nerve. If you listen, lose 2 Sanity. If this doesn''t drive you insane, take his Ally card if it is available. If it is not available, you may pump him for information instead. Gain 3 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(189,4,'Time and space distort around you. A gate and a monster appear!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(190,2,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(190,5,'Staring out across the placid waters, you look at the stars reflected in their depths and let the soft sounds of the waves comfort you. Gain 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(190,6,'Pausing to wipe your brow, you make your way to the bathroom. Happily, the water still works, so you wash your face. However, after a moment, the cool water turns hot and sticky. Opening your eyes, you find that you are washing your face in blood pouring from the faucet and let out a shriek of terror. Pass a <span class="check">Will (-2) check</span> or draw 1 Madness.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(190,4,'Walking into a clearing, you feel that you are at the center of a web of enormous magical energy. You may return one gate token in play to the gate token pile, replacing it with a new gate token from the top of the pile. Monsters are return to the cup as though you had closed the gate.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(191,2,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(191,5,'Walking along the river at night, you bump into a man smoking a stoagie and wearing a trenchcoat. "You look like a person with problems. It just so happens that my business is making problems go away." You may pay $6 to automatically defeat any 1 non-spawn monster on the board.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(191,6,'Walking down into the basement, you are startled when the light turns itself off just as you start to place your foot on the next step. Pass a <span class="check">Speed (-2) check</span> or you fall down the stairs, badly injuring yourself. Draw 1 Injury.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(191,4,'You come across a man examining some old bones. Pass a <span class="check">Sneak (-1) check</span> to get close enough to see what he''s doing. He finally notices you and is impressed with your skills, introducing himself as <b>John Legrasse</b>. Take his Ally card if it''s available. If it is not, he shares a meal with you. Restore your Sanity and Stamina to their maximum values.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(192,2,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(192,5,'Sitting by the dock, you freeze in silent horror as something slowly rises from the water. You cannot make out what it is, but judging by the number of stars it blots out with its bulk, it is considerably bigger than a whale. After an eternity, it slowly sinks beneath the waves once more. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(192,6,'Looking through the drawers in one of the rooms, you come across a stunningly beautiful crystal. As you pick it up, it shimmers for a moment, then sinks into your hand. You convulse for a moment as new knowledge rushes through your mind, but no harm seems to have been done. Draw 1 Skill.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(192,4,'Falling asleep beneath one of the ancient willows on the island, you dream of another life, one in which you called down strange entities and sacrificed in their name. When you awaken, you have retained some of the memories from that other life. Gain 1 Clue token and 1 Spell.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(193,1,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(193,2,'One of the doctors tells you about an experimental treatment that might help you. It''s expensive, however. You may pay $5 to roll a die. On a success, discard one of your Madness cards. On a failure, gain 2 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(193,1,'Looking down at your bank statement, it appears that the bank has made an error in your favor. When you try to bring it to the teller''s attention, she primly tells you, "We don''t make mistakes here at the First Bank of Arkham." Shrugging, you keep the money. Gain $3.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(193,3,'Make a <span class="check">Will (-1) check</span>. If you pass it, <b>Anna Kaslow</b>, the fortune teller, offers her help in your investigation. Take her Ally card if it is still available. If it is not, gain 2 Clue tokens. If you fail, nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(194,1,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(194,2,'Sneaking into the file room, you begin looking through the patient interviews for information that could be of use to you. If you pass a <span class="check">Lore (-1) [2] check</span>, then roll a die and gain that many Clue tokens. If you fail, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(194,1,'It seems that bank interest rates are especially favorable today. You may take a <b>Bank Loan</b> if you don''t already have one. If you do so, gain $15 instead of the normal $10. However, you still only need to pay back the normal $10.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(194,3,'Anna Kaslow gives you a tarot reading. Look at the top card of the mythos deck. If it isn''t "The Story Continues", then you may choose to discard it to the bottom of the deck. If it is "The Story Continues", return it to the top of the deck.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(195,1,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(195,2,'One of the doctors tells you about an experiment treatment that might help you. It''s expensive, however. You may pay $5 to roll a die. On a success, discard one of your Madness cards. On a failure, gain 2 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(195,1,'"Have you come to empty out your safety deposit box?" One of the tellers hands you a key. "This way, please." Confused, you follow her as she leads you down into the vault, where you retrieve a small box and open it up with the key. Make a <span class="check">Luck (-1) check</span>. If you pass, you find an odd object inside. Gain 1 Unique Item. If you fail, the box contains only a stern warning for you to flee Arkham immediately, never to return. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(195,3,'A gate and a monster appear!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(196,1,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(196,2,'One of the doctors tries hypnotic therapy to allow you to tap into your subconscious. You have strange visions of faraway places and times that allow you to reach a greater understanding of yourself. Gain 1 Sanity and 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(196,1,'You recognize several members of the Sheldon Gang in line. If you have a <b>Sheldon Gang Membership</b>, you keep silent as they run a classic con on the bank teller, and they slip you $4 on the way out of the bank. If you do not have a membership, knowling that they''ve got to be up to no good, you warn the bank guard and he directs them to leave. However, you get punched in the stomach by one of the Sheldon boys on their way out. Lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(196,3,'A gate and a monster appear!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(197,1,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(197,2,'Getting lost as you wander the halls, you wind up in the basement just in time to see two orderlies toss a bodybag into the furnace. Make a <span class="check">Luck (-1) check</span>. If you pass, you manage to quietly flee the asylum. Move to the street. If you fail, you cry out, attracting their attention. Fleeing through the halls, you eventually lose them, but not before hours have passed. Stay here next turn.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(197,1,'The old man behind you in line hands you a folded paper oracle. "Lucky five. Trust me." Folding it back and forth five times, you lift the paper flap to see what it says. Make a <span class="check">Luck (-1) check</span>. If you pass, it says "Fortune favors you." You are <i>Blessed</i>. If you fail, it says, "Too bad." You are <i>Cursed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(197,3,'Luckily, it''s just another quiet day in the Square. No encounter.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(198,1,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(198,2,'You feel a moment''s guilt at wandering into a restricted area, but something''s just not right in this place. Unfortunately, before you can get far, Nurse Heather steps up behind you and injects something into your arm. "Come with me. You shouldn''t be back here." Your head swimming, you easily agree with her. The next thing you know, you''re standing outside the gates with no memory of what happened. Move to the street and gain 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(198,1,'The line stretches on forever. However, you hear the two people in front of you whispering something important. Gain 1 Clue token, but stay here next turn.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(198,3,'As you brush up against Founder''s Rock, a strange lethargy seizes your limbs. Lose 1 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(199,1,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(199,2,'One of the doctors seems especially interested in your dreams. "Dreams are the key to the subconscious, and you clearly have some very deep-seated issues." Amazingly, telling someone else about your nightmares seems to free you of them. Stay here next turn and restore your Sanity to its maximum value.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(199,1,'The old man standing outside the bank looks into your face hopefully. "Spare some change?" If you give him $2 or discard a Whiskey card, he whispers a few words of power in your ears. Draw 1 Spell. If you do not give him $2, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(199,3,'A brass band plays some soft music from the veranda. Tapping your feet along with the catchy tunes, you feel better than you have in a while. Gain 2 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(200,8,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(200,23,'The shopkeeper eyes one of your possessions. "I have need of that object. Will you sell it to me?" You may sell any one of your Unique Items for twice its listed price.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(200,22,'You watch some workers cleaning the presses with rags while the machines are still running, and you wonder if that''s safe. A moment later, your thought proves prophetic as one of them screams, his arm caught in the press. Several workers rush to his aid, while others clear the room. You are moved to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(200,21,'Bill Washington comes up to you and offers to sell you a rail pass. "Just $3, and you can ride the train all you want for a month." If you accept, pay $3 and take a <b>Rail Pass</b> card.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(201,8,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(201,23,'A sale takes place. All players may participate. Turn over the top 2 Common Item cards and the top 2 Unique Item cards. Any player may buy one or more of these cards for their list price. If there is a disagreement over who gets to buy a certain card, you decide. Any items not sold are discarded.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(201,22,'Walking down a narrow hallway, you bump into a young man carrying various chemicals used for the printing presses. He drops one of the jars he''s carrying and it breaks, sending burning fumes up into your face. Lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(201,21,'Bill Washington moves the last of the baggage from the cart onto a truck and offers you a ride. If you accept, move to any location or street area in Arkham. If you move to a location, immediately have an encounter there.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(202,8,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(202,23,'The shopkeeper eyes one of your possessions. "I have need of that object. Will you sell it to me?" You may sell any one of your Unique Items for twice its listed price.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(202,22,'Talking to the editor, Doyle Jeffries, you realize that he could be a good source of either cash or information. You may either buy up to 3 Clue tokens for $2 each, or sell up to 3 Clue tokens for $2 each.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(202,21,'Bill Washington comes up to you and offers to sell you a rail pass. "Just $3, and you can ride the train all you want for a month." If you accept, pay $3 and take a <b>Rail Pass</b> card.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(203,8,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(203,23,'Oliver Thomas, the wizened old owner of the Curiostie Shoppe, offers you a fortune cookie. Thanking him, you open it, only to be overcome by a wave of dizziness as a hazy vision of the future rushes past your eyes. You may search the mythos deck for any one card and return it to the box.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(203,22,'If <b>Coded Messages</b> is facedown, you come across the editor, Doyle Jeffries, in the hall and begin to tell him about the Mythos. "Hang on now. Do you have any proof?" You may spend 1 gate trophy, 1 monster trophy, and 1 Clue token to give him enough proof. If you do, turn <b>Coded Messages</b> faceup. "Okay, I''m convinced. If you need to get a message to your friends, just let me know." If you do not spend the trophies, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(203,21,'"Shine your shoes?" A young shoe-shine boy looks up at you hopefully. If you agree, he talks about all sorts of interesting topics while shining your shoes. Pay $1 to gain 2 Clue tokens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(204,8,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(204,23,'You are looking over an unusual item when Oliver Thomas, the shopkeep walks up behind you. "Oh, you don''t want that," he says, "Of course, if you''ll take it off my hands, you can have it for free." You may search the Unique Item deck for any one card and take it. If you do so, you are <i>Cursed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(204,22,'If you pass a <span class="check">Luck (-1) check</span>, then one of the newspaper delivery men offers you a ride in his truck while he makes his rounds. If you accept, move to any street area or location in Arkham. If you move to a location, immediately have an encounter there. If you fail the check, then nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(204,21,'If you pass a <span class="check">Luck (-2) check</span>, an old man looks carefully around him before pressing a wrapped bundle into your hands. "Here. This is what you need." With that, he walks away without another word. Draw 1 Unique Item.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(205,8,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(205,23,'"Perhaps we can help each other." Oliver Thomas, the shopkeep, searches your face with a speculative look. "If you have some information for me, I could teach you something extremely useful." You may pay 2 Clue tokens to draw 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(205,22,'Editor Doyle Jeffries offers you a Retainer in return for your cool stories, bro. Take a Retainer card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(205,21,'Wearily, you sit down on one of the benches near the rails. It seems as though the weight of the world rests upon your shoulders. If only you could just give up. You''re just about ready to buy a one-way ticket as far from here as you can go when the sound of two giggling children draws your attention. A little boy and girl are playing together under their mother''s watchful gaze. As you watch them play, you''re reminded of why you''re doing all this. Gain either 1 Sanity or 1 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(206,8,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(206,23,'You disturb one of the antiques in the shop and a large cloud of dust rises from it. Coughing, you go outside for some fresh air. Move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(206,22,'Earn $5 for a story.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(206,21,'Make a <span class="check">Luck (-1) check</span>. If you pass, you find a battered old book lying on a ledge near the trains. Reading through it, you find that it contains a letter addressed to you. "Please, take the information contained within this book and use it to combat those things that we both know are lurking just out of sight." The author remains anonymous, but reading further, you find that the book is full of useful information. Draw 1 Spell and gain 1 Clue token. If you fail the check, someone else grabs the book and walks off with it before you can get to it.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(207,9,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(207,24,'"Hey, psst. You look like someone who could use a little information." Looking over at the bartender, you see him holding out his hand. You may pay him up to $6, gaining 1 Clue token for every $2 you pay him.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(207,26,'Deputy Dingby accidentally locks you in a cell. Stay here next turn while he looks for the keys, apologizing all the while.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(207,25,'A young man throws down his apron as he storms out of the kitchen. "That does it, I quit!" Looking up, Velma yells, "What? But where am I going to find a dishwasher on this short notice?" If you want, you may make a <span class="check">Will (-1) check</span> to talk her into giving you the job. If you pass, you gain a Retainer.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(208,9,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(208,24,'"Hey, psst. You look like someone who could use a little information." Looking over at the bartender, you see him holding out his hand. You may pay him up to $6, gaining 1 Clue token for every $2 you pay him.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(208,26,'Sheriff Engle nods to you as you enter the Police Station. "Something I can help you with?" If you spend 3 Clue tokens, you convince him that Arkham is in danger and he issues you a weapon. Tahe the first <i><b>Weapon</b></i> from the Common Item deck.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(208,25,'"Good grief, look at this mess. Hey, you want to make some quick cash? I''ll give you $2 to sweep the diner and take out the trash." If you accept, gain $2 and stay here next turn.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(209,9,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(209,24,'As you sip your drink, suddenly a fight breaks out in the bar! Pass a <span class="check">Luck (-1) check</span> to make it to the door before the cops show up. If you fail, you''re arrested unless you''re the Deputy.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(209,26,'Sheriff Engle blocks the door into the Police Station. "Sorry, I''ve got to lock up for a bit. I''ll be back later." Everyone in the Police Station (but not the Jail Cell) is moved to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(209,25,'Velma comments on how skinny you look and gives you a sandwich on the house. You may search the Common Item deck for a Food card and take it.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(210,9,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(210,24,'"So, what''s your story, friend?" A smiling man inquires about your adventures over a glass of gin. You tell him your story. If you spend 3 Clue tokens, he introduces himself as <b>Ryan Dean</b> and asks to join you. Take his Ally card. If it''s not available, he gives you some useful items instead. Gain 2 Common Items.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(210,26,'Deputy Dingby somehow manages to handcuff the two of you together. Stay here next turn, but you actually gain some valuable information listening to Dingby prattle on until Sheriff Engle returns. Gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(210,25,'Joey "The Rat" is sitting at the counter and motions for you to come over. "You looking for anything in particular?" He has several items for sale. Draw 2 Common Item cards and pay $2 more than list price if you wish to purchase one or both of them. "Sorry, I got kids to feed, ya know."');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(211,9,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(211,24,'A stranger buys you a drink. You may search the Common Item deck for a Whiskey card and take it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(211,26,'Looking at one of the wanted posters, you realize that you''ve already taken care of that particular threat. You may spend 1 monster trophy with a moon dimensional symbol to gain $5.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(211,25,'If <b>Velma''s Gratitude</b> is facedown, a muscular man begins to tear up the joint. If your current Fight is at least 4, you may draw 1 Injury to throw him out. If you do so, turn <b>Velma''s Gratitude</b> faceup. "Thanks so much, hon. You and your friends can eat here for free whenever you like.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(212,9,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(212,24,'One of the bigger men in the bar challenges you to a game of darts. You must pay $1 to play, since bets are placed up front. Then, make a <span class="check">Luck (-2) check</span>. If you pass, you win with a lucky bullseye. Gain $3. If you fail, the big guy claps you on the shoulder and says, "No hard feelings, eh? I''ll buy you a drink." Gain 1 Sanity. If you cannot pay, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(212,26,'Looking at one of the wanted posters, you realize that you''ve already taken care of that particular threat. You may spent 1 monster trophy with a moon dimensional symbol to gain $5.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(212,25,'Today''s special is a turkey dinner with all the trimmings. You may spend $3 to gain 4 point split between your Sanity and Stamina however you like.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(213,9,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(213,24,'A sly, smiling man challenges you to a game of billiards. Incensed by his insulting manner, you accept. You bet either $2 or any item of your choice. Unfortunately, he turns out to be a pool shark and cleans you out. You lose your bet.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(213,26,'One of the prisoners searches your face for any sign of pity. "Please, you gotta get me outta here! Something''s coming to Arkham! Something horrible!" You try to laugh away his concerns, but the abject terror in his voice sends a chill down your spine. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(213,25,'Today''s special is the lumberjack breakfast: a huge pile of eggs, bacon, sausage, and hash browns. If you''d like to try it, pay $2 and gain 2 Stamina and 1 Sanity.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(77,0,0,1,0,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(77,5,'The book is a detailed account of your life. Every place you''ve been and everything you''ve thought is recorded within. Pass a <span class="check">Luck (-1) check</span> or you notice that you are perilously close to the end of the book. Lose 2 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(77,10,'The mists of Carcosa link the city with a risen isle. Move to R''lyeh and have an encounter there, then immediately return here.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(77,13,'A hideous monster appears!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(78,0,0,1,0,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(78,6,'You stand before the gatekeepers Nasht and Kamen-Tha. Pass a <span class="check">Lore (-2) check</span> or return to Arkham, but do not receive an explored token.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(78,10,'The mists settle around you, then depart, leaving you in a dark cavern. Move to the Abyss and have an encounter there, then immediately return here.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(78,13,'Try as you might, you are too tired to go on. Stay here next turn.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(79,0,0,1,0,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(79,2,'If Azathoth is the Ancient One, then make a <span class="check">Luck (+0) [3] check</span>. If you fail, you find yourself at the center of the universe, and one look at the creatures there blasts your mind to jelly. You are <b>devoured</b>. If you pass, nothing happens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(79,10,'Rowing the small boat across the turbulent lake, you are nearly pulled into the water by a grasping tentacle. As it is, you lose an item to its clutches. Lose 1 item of your choice.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(79,13,'What luck! There''s a way home here that you almost overlooked. Return to Arkham.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(80,0,0,1,0,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(80,4,'A horrid monster appears!');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(80,10,'Wandering through the red-lit desert, you come across a great tree, at the root of which is a stone. Looking at the stone, you find that it is inscribed with your full name, the date of your birth, and &mdash; God in Heaven &mdash; the date of your death! Draw 1 Madness card, but gain 3 Clue tokens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(80,13,'Hurry! You must choose the correct crystal soon, or the gate will open and release a terrible creature! Pass a <span class="check">Luck (-2) check</span> or a monster appears!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(81,0,0,1,0,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(81,5,'The book seems to be the key to it all, but the old man asks a steep price for it. You may pay $5 to gain 1 Clue token and return to Arkham.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(81,10,'A strange little man speaks to you for a time, and after he leaves, you find yourself pondering his words. Roll 4 dice, gaining a Clue token for each success you roll, but losing 1 Sanity for each failure.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(81,13,'Muttering a quick prayer, you hope that the grate is weak enough to remove, since it''s the only way forward that you''ve found so far. Pass a <span class="check">Luck (-1) check</span> or stay here next turn.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(82,0,0,1,0,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(82,6,'Cresting the hill, you come across a sight that is intended for you only, and it fills your heart with joy. Either restore your Sanity to its maximum value or discard 1 of your Madness cards.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(82,10,'As the light dims on the shore of Lake Hall, you wander the streets of the forgotten city, alone and lost. Stay here next turn and lose 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(82,13,'Pass a <span class="check">Luck (-1) check</span> to find something of use among the devestation. Draw 1 Common Item.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(83,0,0,1,0,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(83,2,'Alone in the darkness with only your thoughts, you make what peace with yourself you can. Gain 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(83,10,'In the streets where flap the tatters of the King, you hear the maddening songs of the Hyades and are transformed forevermore. Discard 1 Skill, then draw 1 Skill and lose 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(83,13,'It seems that you are not the first to have come here. Gain 1 Clue token and $2.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(84,0,0,1,0,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(84,4,'The heavy, fetid musk of the fungus drives you down towards unconsciousness. You must pass a <span class="check">Will (-2) check</span> or you are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(84,10,'As soon as your eyes fall upon that cursed city, you know its name to be Carcosa. Looking down upon its empty streets, you are enlightened. Gain 1 Clue token.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(84,13,'The journey proves fruitful. Draw 1 Spell.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(85,0,1,0,0,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(85,6,'While lost as sea, you are overjoyed to see the twin lighthouses Thon and Thal, and you know that you have come to the island of Oriab. Gain 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(85,9,'Strolling down a quiet street, you are startled to see your mother, dead these many years. She laughs and flirts with a young man you recognize as your father. Smiling, you watch them talk for awhile before going on your way. Restore your Sanity to its maximum value.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(85,13,'Excellent! There seems to be a narrow passage leading back. Return to Arkham.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(86,0,1,0,0,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(86,7,'Looking at the sleeping guardian, you weight the risks. If you choose to chance it, make a <span class="check">Luck (-2) check</span>. If you pass, draw 1 Spell and 1 Common Item. If you fail, lose 2 Sanity and 2 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(86,9,'Walking down a shaded lane, you are astonished to see an item that you lost years ago. Draw 1 Common Item.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(86,13,'There are two paths for you to choose between. One of them leads home, while the other could lead anywhere. Pass a <span class="check">Luck (-1) check</span> to return to Arkham.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(87,0,1,0,0,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(87,3,'Deciding that you have to take the chance if you''re to return home, you activate the strange device. Roll a die. On a success, gain 2 Clue tokens. On a failure, nothing happens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(87,9,'You recognize this place from your childhood. You used to play here all the time. Gain 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(87,13,'Pass a <span class="check">Luck (-2) check</span> to stumble across a valuable item. Take the first Unique Item with a list price of at least $4 from the Unique Item deck.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(88,0,1,0,0,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(88,5,'Professor Laban Strewsbury shows you some of the secrets of the Great Library. Gain 2 Clue tokens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(88,9,'You find yourself in a beautiful garden. Wandering through its lovely paths, you realize that this is the lost Hanging Gardens of Babylon. Gain 2 Sanity for witnessing one of the lost wonders of the world.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(88,13,'In this place, it''s a stroke of good fortune when nothing terrible happens to you. No encounter.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(89,0,1,0,0,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(89,6,'Stopping awhile in the town of Inganok, you are presented with a small onyx statue said to bring luck. You are <i>Blessed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(89,9,'You find yourself surrounded by clay tablets and scrolls. Search the Unique Item deck and take a <i><b>Tome</b></i> of your choice, then regain 1 Sanity as you realize that you''ve seen the Great Library of Alexandria.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(89,13,'Yes! You think you have a use for this item. Draw 1 Common Item.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(90,0,1,0,0,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(90,7,'You find yourself faced with a difficult decision. The ancient being has offered you power, but warns that it comes with a price. If you accept, draw 2 Spells and 1 Madness card.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(90,9,'If Shub-Niggurath is the Ancient One, then you are thrown back through the ages to a time when primordial ooze is the only life. Pass a <span class="check">Fight (+0) [3] check</span> to escape powerful grasping tentacles or you are devoured. If Shub-Niggurath is not the Ancient One, nothing happens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(90,13,'Placing your hand on the ancient cave painting, you have a vision. Gain 1 Clue token.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(91,0,1,0,0,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(91,3,'You''ve seen the creatures use this machine to learn, but you''re not sure what effect it''ll have on you. If you use it, make a <span class="check">Luck (-2) check</span> and draw 1 Skill. If you fail the check, however, you also draw 1 Madness card.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(91,9,'You are able to rescue a beautiful piece of art from the distant past. Gain $5.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(91,13,'Perhaps there''s something of use in here? Pass a <span class="check">Luck (-1) check</span> to either draw 1 Unique Item or draw 1 Common Item and gain $2. If you fail the check, nothing happens.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(92,0,1,0,0,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(92,5,'An almost-overlooked fragment of text reveals your best course of action. Gain 1 Clue token, plus 1 extra Clue token for each <i><b>Tome</b></i> you have.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(92,9,'Although the future is a frightening and confusing plce, you come across a small statue of yourself, proving that, if nothing else, you made a difference to someone. You may discard 1 Madness card.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(92,13,'The creature waves its hand at you. "Blessings upon you." If you have a <i>Curse</i> card, you may discard it.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(93,1,0,0,0,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(93,8,'If Cthulhu is the Ancient One, then a green, flabby arm reaches out of the shadows towards you. Pass a <span class="check">Speed (+1) [3] check</span> or you are <b>devoured</b>. If Cthulhu is not the Ancient One, nothing happens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(93,9,'You realize that the Hound has seen you as you gazed at it across the ages. If there is a Hound of Tindalos in the monster cup, it appears.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(93,13,'Although you believe that you''ve found a way home, the path looks perilous. You may roll 3 dice, losing 1 Stamina for each failure you roll. If you are not reduced to 0 Stamina, you may return to Arkham.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(94,1,0,0,0,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(94,7,'The poison from the purple spider''s bite courses through your veins. Roll 3 dice. If you roll no successes, draw 1 Injury card. If you roll at least 1 success, nothing happens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(94,9,'Hurtled forward in time, you witness manking''s final moments. Pass a <span class="check">Will (-2) check</span> or draw a Madness card.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(94,13,'The fumes overcome you at last, causing you to sink into a dreamless sleep. Stay here next turn.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(95,1,0,0,0,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(95,6,'While trudging through the rocky terrain, a stone slips out from under your foot. Pass a <span class="check">Luck (-1) check</span> or you tumble to the bottom of the hill. If you are in the second area of the Dreamlands, move to the first area. If you are in the first area, stay here next turn.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(95,9,'Awakening, you find yourself in a Victorian masked ball. The night passes in a blur. Stay here next turn.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(95,13,'The ground shifts under your feet, sending you tumbling head over heels. Lose 1 Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(96,1,0,0,0,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(96,2,'Countless voices chitter and gibber in the caves, driving you to the brink of insanity and causing your arcane lore to become jumbled. Roll a die for each Spell you have, discarding it on a failure.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(96,9,'Thrown back millions of years, you find that you have swapped bodies with an alien being. Make a <span class="check">Luck (-2) check</span> to try to find a way to switch back. If you pass, return to Arkham. If you fail, you are <b>devoured</b>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(96,13,'A hideous monster appears!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(97,1,0,0,0,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(97,8,'The island has begun to sink back beneath the waves. If you do not hurry, the ocean will swallow you as well! Pass a <span class="check">Speed (-2) check</span> or you are reduced to 0 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(97,9,'Finding yourself in a primordial jungle, you are attacked by savage hominids directed by savage hominids directed by a hovering brain covered in black tentacles. Either pass a <span class="check">Speed (-1) [2] check</span> or discard a Dynamite card to escape from them, gaining 2 Clue tokens in the process. If you do not escape, lose 2 Stamina and stay here next turn.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(97,13,'The endless forest refuses to give up its mysteries. No encounter.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(98,1,0,0,0,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(98,7,'If Nyarlathotep is the Ancient One, then an elephantine shantak picks you up in its claws and deposits you before the Crawling Chaos himself. Laughing at the futility of your quest, Nyarlathotep, hurls you away using his powers. You are <i>lost in time and space</i>. If Nyarlathotep is not the Ancient One, nothing happens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(98,9,'Pass a <span class="check">Luck (-2) check</span> to escape back to the present with a precious object. Draw 1 Unique Item. If you fail, you are stranded in the medieval village. Stay here next turn.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(98,13,'Struggling to hold your breath, you cannot seem to find the surface of the mysterious sea. Lose 1 Sanity and 1 Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(99,1,0,0,0,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(99,6,'The ghouls show you a secret tunnel under the graveyard. Return to Arkham, but lose 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(99,9,'Pass a <span class="check">Luck (-2) check</span> to wake up in an unfamiliar place. You find that you have become another person in a distant time. Years pass as you are married, raise a family, grow old, and finally die. However, it seems that you no sooner close your eyes for the final time than you open them again right back where you started, but with the memories of an extra lifetime. Draw 2 Skils, discarding 1 of them.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(99,13,'The sucking mouths drain enough of your blood to leave you dizzy. Lose 1 Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(100,1,0,0,0,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(100,2,'Pass a <span class="check">Luck (-2) check</span> or the shadowy creatures capture you and torture you for days. Draw 1 Injury and 1 Madness card, then discard one of them of your choice. If you pass, you escape with the idol''s jeweled eyes. Gain $5.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(100,9,'In the far-flung future, you are witness to an Earth that lies in ruin, populated only by hideous beetles. You return wiser, but your mind is unhinged by the experience. Gain 3 Clue tokens, but lose 3 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(100,13,'A terrible monster appears!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(101,0,0,0,1,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(101,8,'The mottled green stone that the city is carved from seems to whisper to you of the vastness of space and horror of the things that live therein. Lose 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(101,10,'If Hastur is in Ancient One, then you are in grave danger. The exiled King in Yellow is coming. Pass a <span class="check">Horror (+0) [3] check</span> or you are <b>devoured</b>. If Hastur is not the Ancient One, nothing happens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(101,13,'A monster appears.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(102,0,0,0,1,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(102,3,'Make a <span class="check">Luck (-1) [2] check</span>. If you pass, one of the alien scientists imparts a great secret to you. If you have fewer than 5 Clue tokens, you gain enough to bring your total to 5. If you fail, nothing happens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(102,10,'Looking up at the shrouded sky, you are startled to see two moons. Lose 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(102,13,'Although your journey has been perilous, you''ve found a possible way to get home. Pass a <span class="check">Luck (-1) check</span> to return to Arkham.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(103,0,0,0,1,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(103,4,'The light of the stars is gathered here, on this distant planet. Curious, you bathe yourself in it and find yourself healed and transfigured. Either restore your Stamina to its maximum value or discard 1 of your Injury cards.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(103,10,'You walk around the shores of Lake Hali, seeking to reach the distant and shrouded city that sits there. However, no matter how far you walk, it always remains on the far side of the lake. Stay here next turn.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(103,13,'A monster appears!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(104,0,0,0,1,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(104,6,'Pass a <span class="check">Luck (-1) check</span> to be permitted an audience with King Kuranes. He tells you of many things of importance in the Dreamlands. Gain 2 Clue tokens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(104,10,'Peering up at the towers of the city, the rising moon appears to you to be in front of them rather than behind. Lose 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(104,13,'The only way forward now is a terrifying leap off a cliff. Pass a <span class="check">Will (-2) check</span> or stay here next turn.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(105,0,0,0,1,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(105,8,'Finding a small, rusted mirror lying on the shore, you can sense immense power within it. If you want, you may gaze into the mirror. If you do so, draw 1 Madness card and become <i>Blessed</i>. If you do not gaze into the mirror, nothing happens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(105,10,'Shivering, you feel the light of a baleful star upon you, but upon looking up, you see only darkness where you know the star to be. Either lose 3 Sanity or you are <i>Cursed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(105,13,'It seems as though you''ve run out of options for now, so you must bide your time. Stay here next turn.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(106,0,0,0,1,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(106,3,'In your wanderings through the city, you come across a strangely marked stone of onyx. Pass a <span class="check">Lore (-1) check</span> to read it and draw 1 Spell. If you fail, stay here next turn.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(106,10,'Resting beside the cobbled lane as the shadows grow long in the abandoned streets, you wonder if you''ll live to see this thing through. No encounter.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(106,13,'Looking at the vast distances you still have to cross, you feel as though all is lost. Lose 1 Sanity.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(107,0,0,0,1,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(107,4,'Pass a <span class="check">Luck (-2) check</span> to avoid becoming lost in the icy, dark valleys that predominate here. If you fail, stay here next turn.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(107,10,'Frustrated and alone, you cry out, and your voice echoes through the city streets. Instantly, you realize that you shouldn''t have done that. You are <i>Cursed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(107,13,'Although you try your best, you are unable to hang on any longer. If you are in the second area of this Other World, move to its first area. If you are in its first area, you are <i>lost in time and space</i>.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(108,0,0,0,1,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(108,6,'The inhuman ghosts of Sarnath grope and grasp at your flesh as you run through the city in terror. Pass a <span class="check">Will (-1) check</span> or lose 2 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(108,10,'Hearing the sounds of approaching footsteps and tattered cloth blowing in the wind, you are abruptly terrified. Pass a <span class="check">Will (-2) check</span> or you flee from this place as fast as you can. Return to Arkham, but do not gain an explored token.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(108,13,'It seems that no matter where you go, there are always thieves waiting to prey upon the unwary. Lose $2.');
