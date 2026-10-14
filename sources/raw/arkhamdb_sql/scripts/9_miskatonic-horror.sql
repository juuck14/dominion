PRAGMA foreign_keys=1;

INSERT INTO "expansion" VALUES(9,'Miskatonic Horror',1);

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(492,20,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(492,55,'A window opens, and a strange, gentle man dressed in archaic clothes smiles at you. If you pass a <span class="check">Will (-2) check</span> or discard an Ancient Tome, he introduces himself as <b>William Bain</b> and offers you his help. Take his Ally card. If it isn''t available, you are <i>Blessed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(492,56,'The path winds back and forth, providing a very pleasant afternoon''s walk. Nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(492,57,'You see the corner of some worn antique trunk poking up out of the ground where the workmen have been digging. Make a <span class="check">Sneak (-2) check</span> to dig it up and reveal the contents. If you pass, gain 1 Common Item. If you fail, move to the Causeway.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(493,20,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(493,55,'William Bain is here, and he takes you to visit the Dreamlands. Move to the Dreamlands and draw 2 cards, encountering one and discarding the other, then return.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(493,56,'A rockslide has made this route unusable. Another path up the hill will have to be found. You are <i>delayed</i> while you find the new path.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(493,57,'"You all right?" One of the workers is concerned that you may have serious injuries. If you currently have 3 Stamina or less, he administers some first aid. Gain 1 Stamina. Otherwise nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(494,20,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(494,55,'Inexplicably, William Bain walks in through a door that leads to a sheer drop-off. Once inside he begins pulling items out of his large coat pockets. Most of it seems like random junk. Make a <span class="check">Luck (+0) check</span>. If you pass, he hands you something useful. Gain 1 Common Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(494,56,'You feel a sudden sharp pain in your ankle and see that you''ve been biten by a snake! Make a <span class="check">Lore (-2) check</span> to treat the wound. If you fail, lose 2 Stamina and move to the Harborside Streets to get help.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(494,57,'A few engineers are testing some of the radio equipment intended for use here. They''re having some difficulty making it work. Make a <span class="check">Lore (-2) check</span> to recognize the problem. If you pass, they want to put you on the payroll as a consultant. Take a Retainer card.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(495,20,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(495,55,'As you approach the house, you see an object falling down the side of the hill. Make a <span class="check">Speed (-1) check</span> to catch it before it disappears down the slope. If you pass, gain 1 Unique Item. If you fail, lose 1 Stamina scrambling across the rocks.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(495,56,'A woman is up on the hill with binoculars bird watching. She claims there''s been some strange bird behaviors lately. Make a <span class="check">Lore (+0) check</span> to nderstand what she''s explaining. If you pass, gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(495,57,'A truck has stalled, blocking the narrow path leading away from the construction site. You are <i>delayed</i> while it gets moved.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(496,20,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(496,55,'After seeing some of the objects you have brought with you, William Bain is interested in perhaps trading with you. You may either discard 1 Common Item to gain 1 Unique Item or discard 1 Unique Item to gain 1 Common Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(496,56,'You suspect you may be carrying too many things to make this climb! If you have 4 or more items you must either discard one, or lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(496,57,'Mixed in with the other trash from the site, you spot an oddly-shaped object wrapped in canvas. Make a <span class="check">Sneak (-2) check</span> to retrieve it without drawing attention to yourself. If you pass, search the Common Item deck and take the first <i><b>Weapon</b></i> you find. Clearly someone was trying to hide the evidence of a criminal activity. If you fail, you decide not to risk being caught and leave it alone.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(497,20,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(497,55,'William Bain isn''t here right now but a Nightgaunt is! You must immediately move to the open gate of your choice and enter it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(497,56,'You think you could reach the Wireless Station by scrambling up a steep incline. If you wish to give it a try, make a <span class="check">Fight (-1) check</span>. If you pass, move to the Wireless Station. If you fail, lose 1 Stamina and move to the Harborside Streets.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(497,57,'You see an older man gazing out at the city of Kingsport, reminiscing about the changes the town has seen. If you currently have 3 or more Clue tokens, much of what he says makes terrible sense and gives you insight into the inner workings of the town. You may choose any Rift progress token to either discard (if the associated Rift is closed) or turn face down (if its associated Rift is open).');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(498,20,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(498,55,'You can''t begin to fathom how old William Bain really is. He tells you the history of Kingsport as if he had witnessed the whole thing firsthand. Gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(498,56,'A couple Kingsport children got stuck on a rock outcropping while looking for a rumored treasure. Make a <span class="check">Luck (-2) check</span>. If you pass, the rumors are true. Gain a Unique Item. Regardless of whether you pass or not, you are <i>delayed</i> rescuing the children.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(498,57,'A workman''s wife is expecting a baby! Cigars are being passed around to celebrate and, without even knowing who you are, you are welcomed into the festivities. Gain 1 Sanity and 1 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(499,20,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(499,55,'A window opens, and a strange, gentle man dressed in archaic clothes smiles at you. If you pass a <span class="check">Will (-2) check</span> or discard an Ancient Tome, he introduces himself as <b>William Bain</b> and offers you his help. Take his Ally card. If it isn''t available, you are <i>Blessed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(499,56,'The sun is rapidly setting and the terrain is too dangerous to try to climb in the dark. Pass a <span class="check">Speed (-2) check</span> or lose 1 Sanity and 1 Stamina and move to the Harborside Streets.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(499,57,'One of the foremen asks if you''re one of the engineers. Make a <span class="check">Lore (-2) check</span> to pass yourself off as a technical specialist. If you fail, move to the Causeway and have an encounter there.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(500,20,9,7);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(500,55,'You are stunned to discover a mysterious man in exotic-looking robes. He claims to have been waiting for you. If you are <i>Cursed</i> or have any <i><b>Mask</b></i>, he tells you that he is called <b>The Messenger</b> and is meant to aid you. Take his Ally card, or if it is not available, gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(500,56,'You feel a sudden sharp pain in your ankle and see that you''ve been biten by a snake! Make a <span class="check">Lore (-2) check</span> to treat the wound. If you fail, lose 2 Stamina and move to the Harborside Streets to get help.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(500,57,'Equipment and materials have been stolen from the site, and the workers are constantly watching for strangers. Make a <span class="check">Sneak (-1) check</span>. If you fail, you''re spotted and suspected of being the thief. Take the Wanted card if it is available.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(501,20,9,7);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(501,55,'When you finally reach the house, William Bain is inside making a thick stew and happily invites you to join him for a meal. Make a <span class="check">Luck (-2) check</span>. If you fail, the stew is merely invigorating. Gain 1 Stamina. If you pass, its unique ingredients have a strange effect on you. Gain 1 Stamina and you may take the Psychic card if it is available.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(501,56,'A man is running up the hill, trying to escape vicious creatures that are attacking him. You may attempt to defend him if you wish. If you do, lose 3 Stamina. Even if you are knocked unconscious, the man, <b>David Packard</b>, owes you his life and intends to pay his debt. Take his Ally card, or if it is not available, he gives you something "for protection". You may search the Common Item deck for Dynamite and take it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(501,57,'It''s a tough climb and you need a rest. You are <i>delayed</i> but gain 1 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(502,20,9,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(502,55,'William Bain is here, and he takes you to visit the Dreamlands. Move to the Dreamlands and draw 2 cards, encountering one and discarding the other, then return.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(502,56,'You see a sudden green flash of light somewhere ahead of you on the path. Racing to get there, you find a smoldering, scorched book. If you wish, you may try to gain what knowledge you can from it before it is reduced to ashes. If you do, lose 1 Stamina as it burns your hands and then, if you are still conscious, gain 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(502,57,'One of the speakers that is not currently attached to any radio equipment begins broadcasting a voice that speaks directly to you. Lose 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(503,20,9,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(503,55,'The thick mist has covered the top of the hill. You can''t seem to find the house. You are <i>delayed</i> while you search.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(503,56,'You slowly clamber up the stone formation known as the Face of Neptune. Pass a <span class="check">Fight (-2) check</span> or lose 2 Stamina and move to the Harborside Streets.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(503,57,'The majority of the workers didn''t show up today. The ones who did are wandering around in a daze. Take 1 Common Item, as no one is watching the equipment, but lose 1 Sanity from the strange behavior of the people.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(504,20,9,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(504,55,'If you have 3 or more Clue tokens, you know that William Bain was once a member of a powerful cult. He tells you that it was a long time ago and it is all behind him, but offers to teach you what he remembers from those days. Gain 1 Spell. If you have 2 or fewer Clue tokens, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(504,56,'Pulling yourself up the cliff, you come face-to-face with a snake. Pass a <span class="check">Will (-2) check</span> or lose 2 Sanity, 1 Stamina, and move to the Harborside Streets.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(504,57,'A thick mist comes rolling down the hill and envelops the entire construction site. Make a <span class="check">Luck (+0) check</span>. If you fail, you take a spill down the hillside. Lose 1 Stamina and move to the Causeway.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(505,20,9,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(505,55,'Something about your presence is disturbing William Bain and he may ask you to leave, one way or another. If you have 1 or more Corruption cards, you are <i>lost in time and space</i>. If you do not have any Corruption cards, but you currently have 3 or less Sanity, move to the Wireless Station and have an encounter there. Otherwise, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(505,56,'A small collection of symbols was carved into the rock some untold number of years ago. Make a <span class="check">Lore (-2) check</span> to interpret them. If you pass, you understand their occult significance and gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(505,57,'When the workers showed up this morning, the beams were bent and twisted completely out of shape. You can''t imagine what it was that was strong enough to do such a thing. Lose 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(506,20,9,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(506,55,'William Bain is here, and he takes you to visit the Dreamlands. Move to the Dreamlands and draw 2 cards, encountering one and discarding the other, then return.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(506,56,'In a lonely spot on the cliffside, you are suddenly gripped by a strange, terrifying vertigo. Pass a <span class="check">Luck (-2) check</span> or lose 2 Sanity and move to the Harborside Streets.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(506,57,'The path up to the Wireless Station is being carefully watched. You are politely but unambiguously told to stay away. Move to the Causeway.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(507,20,9,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(507,55,'William Bain tells you that Nodens has sent one of his Nightgaunts to help you, but the journey will be dangerous. If you wish to accept the help, make a <span class="check">Will (-2) check</span>. If you pass, move to the second area of any Other World you choose. If you fail, the Nightgaunt has left you <i>lost in time and space</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(507,56,'A group of chanting voices echoes across the hillside. Make a <span class="check">Lore (-1) check</span> to discern what they''re saying. If you pass, gain 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(507,57,'You get a chance to try out some of the radio equipment. You hear a strange mechanical voice reciting numbers. Make a <span class="check">Lore (-2) check</span> to decode any kind of meaning from what you hear. Gain 1 Clue token for each success.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(508,20,9,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(508,55,'You find Willim Bain''s company helps to calm your thoughts and heal your mind. You may either discard 1 Madness card if you have one or restore your Sanity to its maximum.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(508,56,'One of the Wireless Station workers is driving up in a truck. If you wish, you may make a <span class="check">Speed (-1) check</span> to grab the back. If you pass, move to the Wireless Station and immediately have an encounter there. If you fail, lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(508,57,'Without warning, lightning begins to strike the beams of the station. Make a <span class="check">Luck (+1) check</span>. If you fail, you are touching one of the beams at the wrong moment. Take an Injury card as the lightning courses through you.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(509,20,9,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(509,55,'Hearing the stories of what''s going on in Dunwich, William Bain seems unconcerned and tells you that it''s not as bad as you make it sound. You may discard 2 Clue tokens to remove 1 Dunwich Horror token from the board.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(509,56,'As you are climbinb, a rock falls towards you. Pass a <span class="check">Speed (-2) check</span> or lose 2 Stamina and move to the Harborside Streets.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(509,57,'If Coded Messages is facedown, you may pay the radio operators who are working on the site to help you out. You may spend $5 to relay information for you. If you do, turn Coded Messages faceup. If you do not spend the money, nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(510,20,9,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(510,55,'The peculiar William Bain regretfully tells you there is little he can offer you. Make a <span class="check">Will (-1) check</span>. If you pass, you notice the small stack of gold coins next to his books. While William is not certain what help those will be, he happily gives them to you. Gain $5. If you fail, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(510,56,'You see a trunk on a rock below that has apparently fallen and split open. If you wish you may try to climb down and retrieve it. Make a <span class="check">Fight (-1) check</span> to reach it safely. If you fail, lose 2 Stamina. Then, whether you passed or not, if you are still conscious, gain 1 Unique Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(510,57,'A truck is rolling down the hill out of control! Make a <span class="check">Speed (+0) check</span> to avoid being hit. If you fail, lose 2 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(511,20,9,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(511,55,'William Bain is here, and he takes you to visit the Dreamlands. Move to the Dreamlands and draw 2 cards, encountering one and discarding the other, then return.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(511,56,'The sun is rapidly setting and the terrain is too dangerous to try to climb in the dark. Pass a <span class="check">Speed (-2) check</span> or lose 1 Sanity and 1 Stamina and move to the Harborside Streets.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(511,57,'The workers are all elsewhere having lunch. You spot something in the back of one of the trucks that looks useful. You may make a <span class="check">Sneak (-1) check</span> to steal the item if you wish. If you pass, draw 2 Common Items, choose one to keep and discard the other. If you fail, you are <i>arrested</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(512,17,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(512,45,'Earnestly, you try to convince Gladys Pickman to allow you to look through her home for old books. Make a <span class="check">Will (-1) check</span>. If you fail, nothing happens. If you pass, you may then pass a <span class="check">Luck (-1) check</span> to take the first <i><b>Tome</b></i> from the Unique Item deck.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(512,46,'You see a door marked "Private", leading down to a small storage room. You may make a <span class="check">Sneak (-1) check</span> to go through undetected. If you pass, you discover a number of historical documents and photos concerning the old church that used to be here. Gain 1 Clue token. If you fail, you are escorted out. Move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(512,47,'A wealth of experience can be gained by talking with these old-timers. You may stay here next turn to make a <span class="check">Lore (-2) check</span>. If you pass, gain 1 Skill.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(513,17,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(513,45,'You come across a man in a tweed suit staring somewhat forlornly at one of the houses. Sighing, he says, "That woman just doesn''t understand how much I need that journal for my research." Looking up, he notices you. "Maybe you could help me out?" If you pass a <span class="check">Sneak (-2) check</span> or discard <b>Old Journal</b>, <b>Professor Morgan</b> thanks you. Take his Ally card, or if it''s not available, take the first <i><b>Weapon</b></i> from the Common Item deck.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(513,46,'A panicked man with sores all over him bumps into you as he rushes in the door. Make a <span class="check">Speed (-1) check</span> to quickly wash your hands and face before you become infected. If you fail, lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(513,47,'They may be retired, but these old sailors are happy to make a little money from the occasional return to the water. You may pay $2 to move to any aquatic location.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(514,17,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(514,45,'Sitting down to chat with Gladys Pickman, you discover that the legs of your chair are uneven. She apologizes and offers you a small book to put under the chair leg. Make a <span class="check">Luck (-2) check</span>. If you pass, the book is very interesting to you. Gain 1 Spell. If you fail, the book is unremarkable, but it does prevent the chair from wobbling.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(514,46,'"You seem like you''ve got a level head. Care to help me with an experiment?" If you pass a <span class="check">Lore (-2) check</span> or discard Research Materials, <b>Dr. Herbert West</b> offers to join you in thanks for your assistance. Take his Ally card, or if it''s not available, gain 3 monster trophies from the monster cup at random, ignoring <b>Endless</b>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(514,47,'One of the sailors speaks to you as if you were a shipmate from years ago. He mentions strange sea creatures. Gain 1 Clue token.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(515,17,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(515,45,'Gladys Pickman is delighted to show you a photo album of her friends and family in Kingsport. Make a <span class="check">Lore (-1) check</span> to recognize the occult symbols direscretely displayed on some of the gentlemen''s jackets. If you pass, gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(515,46,'A strange sound echoes through the halls. It may be praying or chanting. No one else seems to hear it. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(515,47,'An old woman leans up against the fence, gasping for air. "Don''t mind me, young''un. These lungs are just old and worn out." Still, something deep inside tells you that you can help her out, if you''re willing to make a sacrifice. If you discard 1 Skill, she smiles and says, "I don''t know what you did, but I''m in your debt." <b>Granny Orne</b> joins you. Take her Ally card, or if it''s not available, draw the top five Unique Items and keep one.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(516,17,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(516,45,'Gladys is selling off a few items she found around the house. A lot of people are here buying things. Make a <span class="check">Luck (-2) check</span>. If you pass, draw a Unique Item. You may purchase it for $1 more than the list price. If you fail, draw a Common Item. You may purchase it for the list price. Any items not purchased are discarded.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(516,46,'An elderly patient asks you to sit and chat with her for awhile. If you stay and listen to her, you are <i>delayed</i> as she talks nostalgically about her childhood and her family. You are then <i>Blessed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(516,47,'The home was formerly a mansion in the early days of Kingsport. One of the caretakers points out graffiti scratched into the basement''s stonework from the 18th century. Make a <span class="check">Lore (-1) check</span>. If you pass, the city''s history becomes clearer to you. Gain 1 Clue token.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(517,17,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(517,45,'You come across a man in a tweed suit staring somewhat forlornly at one of the houses. Sighing, he says, "That woman just doesn''t understand how much I need that journal for my research." Looking up, he notices you. "Maybe you could help me out?" If you pass a <span class="check">Sneak (-2) check</span> or discard <b>Old Journal</b>, <b>Professor Morgan</b> thanks you. Take his Ally card, or if it''s not available, take the first <i><b>Weapon</b></i> from the Common Item deck.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(517,46,'You overhear a doctor confessing that he has no idea what''s causing the strange symptoms his patient is suffering. Make a <span class="check">Lore (-2) check</span> to recognize the problem. If you pass, the doctor asks permission to call on you for future help. Take a Retainer card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(517,47,'You''re promised the tale of a lifetime, but it turns out to be a long story about nothing. You are <i>delayed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(518,17,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(518,45,'You spot a prowler trying to break in through a kitchen window. Make a <span class="check">Fight (-1) check</span> to scare him off. If you fail, lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(518,46,'Examining the graves, you are startled to see so many list the same date as the day of death. Lose 1 Sanity, and then if you are still sane, gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(518,47,'An old woman leans up against the fence, gasping for air. "Don''t mind me, young''un. These lungs are just old and worn out." Still, something deep inside tells you that you can help her out, if you''re willing to make a sacrifice. If you discard 1 Skill, she smiles and says, "I don''t know what you did, but I''m in your debt." <b>Granny Orne</b> joins you. Take her Ally card, or if it''s not available, draw the top five Unique Items and keep one.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(519,17,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(519,45,'You find that Gladys Pickman loves to hear stories of the unusual, even if she doesn''t particularly believe them. You may discard 2 Clue tokens to provide interesting stories for her. If you do, she shows you an odd book she found in her house. Search the Unique Item deck and take the first <i><b>Tome</b></i> you find.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(519,46,'You hear a scream from the other side of the reception area. Right before your eyes, a perfectly healthy orderly begins to age and shrivel, ultimately turning to sand and being swept out of the room by a gust of wind. Make a <span class="check">Will (+0) check</span>. If you fail, lose 2 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(519,47,'The mariners are comparing coins from different countries. You recognize the runes carved on one of the coins as being from a very early culture. Gain 1 Clue token.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(520,17,9,7);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(520,45,'As innocent as the house looks, you cannot help but think that a malevolent force once dwelt here that is reaching out to you even now. Make a <span class="check">Will (+0) check</span>. If you fail, take the Tainted card if it is available.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(520,46,'A priest has been called in to counsel a particularly hopeless case. If you are <i>Cursed</i> or either your Stamina or Sanity is 2 or lower, he introduces himself as <b>Father Iwanicki</b> and says, "I would like to offer my help, to make sure that no more suffer the same fate as this poor soul." Take his Ally card, or if it is not available, you may search the Unique Item deck for the Holy Water card and take it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(520,47,'Danny Houghton is eager to hear your story and believes your tales. It''s good to talk to someone. Gain 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(521,17,9,7);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(521,45,'Earnestly, you try to convince Gladys Pickman to allow you to look through her home for old books. Make a <span class="check">Will (-1) check</span>. If you fail, nothing happens. If you pass, you may then pass a <span class="check">Luck (-1) check</span> to take the first <i><b>Tome</b></i> from the Unique Item deck.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(521,46,'Despite your protests, the doctors are certain that you should not be allowed to leave the hospital. You are <i>delayed</i>, but may then gain 2 Stamina, 2 Sanity, or 1 of each.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(521,47,'"What is this? You reckon it''s valuable?" One of the mariners received a package from a shipmate who still travels to exotic locations. Make a <span class="check">Lore (+1) check</span> to identify the object. If you pass, you may draw 1 Unique Item. You may purchase this item for $1 less than the list price (to a minimum of $1). If you do not purchase the item, it is discarded.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(522,17,9,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(522,45,'Examining the outside of the house, you notice peculiar little symbols hidden in various pieces of the exterior woodwork. Make a <span class="check">Lore (-1) check</span> to recognize them. If you pass, gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(522,46,'In the hall, you can hear patients reciting lines from "The King in Yellow" back and forth to each other, seemingly unaware that they''re saying anything at all. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(522,47,'A mysterious stranger visits one of the tenants in the middle of the night. In the morning, he finds he can no longer speak. You can see the fear in his eyes as he draws you a map of the places he''s been. Make a <span class="check">Lore (-1) check</span>. If you pass, gain 2 Clue tokens. If you fail, you don''t understand, but the man''s panic causes you to lose 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(523,17,9,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(523,45,'Gladys Pickman wants to make up a new batch of cookies and asks for your help looking through her old recipe boxes. Make a <span class="check">Luck (-2) check</span>. If you pass, you stumble upon something not in her handwriting. Gain 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(523,46,'One of the doctors is struggling to wrestle an object from the grip of an unmoving man on a gurney. "I''m sorry. We''re a little short on staff right now. Could you help me?" If you help, make a <span class="check">Fight (-2) check</span> to pry the item free. If you pass, gain 1 Unique Item. If you fail, gain 1 Common Item and lose 1 Sanity as the man''s hand comes loose from his arm.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(523,47,'You hear one of the sailors talking to a caretaker about having seen "The King in Yellow" in its original French. He explains how some of the passages were altered in translation. Gain 1 Clue token.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(524,17,9,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(524,45,'This location seems to have particular occult significane. Make a <span class="check">Lore (-1) check</span>. If you pass and have a "One of the Thousand" Cult Membership, gain 3 Clue tokens. If you pass but do not have a "One of the Thousand" Cult Membership, gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(524,46,'During the night, a number of the graves in the cemetery were disturbed. You notice an object was unearthed as a result. Make a <span class="check">Luck (-2) check</span>. If you pass, gain a Unique Item. If you fail, gain a Common Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(524,47,'In the attic is a large chest that no one can recall where it came come. There''s no key, but you try to break it open. Make a <span class="check">Fight (-2) check</span>. If you pass, gain 1 Unique Item.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(525,17,9,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(525,45,'Earnestly, you try to convince Gladys Pickman to allow you to look through her home for old books. Make a <span class="check">Will (-1) check</span>. If you fail, nothing happens. If you pass, you may then pass a <span class="check">Luck (-1) check</span> to take the first <i><b>Tome</b></i> from the Unique Item deck.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(525,46,'In the middle of the night, you hear a strange noise coming from the graveyard. You''ve stumbled upon the Cult of the Black Goat! You may join then if you wish. To do so, you must discard at least 2 toughness worth of monster trophies, lose 3 Stamina, or an Ally. Take a "One of the Thousand" Cult Membership card. If you cannot or choose not to join, pass a <span class="check">Speed (-2) check</span> or lose 2 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(525,47,'One of the old salts says he can predict a change in the weather because his knee hurts. Make a <span class="check">Luck (-2) check</span>. If you pass, you may discard the Environment Mythos Card currently in play.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(526,17,9,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(526,45,'You are startled to discover a door you never noticed before leading down to the cellar. Move to the first area of the Underworld, have an encounter there, and then return here immediately.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(526,46,'You have a horrifying vision of yourself on an operating table, horribly wounded. Make a <span class="check">Will (+1) check</span> to convince yourself it''s only an illusion. If you pass, lose 1 Sanity. If you fail, the pain feels very real to you. Lose 1 Sanity and 2 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(526,47,'Danny Houghton pulls you aside and tells you to never put to sea without knowing a little something worth knowing. He teaches you a complex riddle that, at first, makes no sense. Make a <span class="check">Lore (-1) check</span> to figure it out. If you pass, gain 1 Spell.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(527,17,9,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(527,45,'Make a <span class="check">Luck (+0) check</span>. If you pass, you''ve accidentally gone to the 7th house on the right, where you meet a nice newlywed couple. Gain 1 Sanity while you chat with them pleasantly. If you fail, you''ve accidentally gone to the 8th house on the left, where you find no one but a guard dog who bites you. Lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(527,46,'One of the staff doctors was fired for very erratic research methods, and Dr. Matthew Harris would like your help in reviewing the records of this work. Make a <span class="check">Lore (-2) check</span> to make sense of it. If you pass, draw 2 Spells, choose one to keep and discard the other.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(527,47,'The staff asks you to consider making a donation to the retirement home. If you spend $2, their gratitude warms your heart and you gain 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(528,17,9,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(528,45,'The walls are vibrating ever so slightly as the barrier between worlds grows ever thinner. Add 1 Dunwich Horror token to the board. Then draw 1 Spell for each Dunwich Horror token on the board. (No more than 3 Dunwich Horror tokens may be on the board.) Choose one of the Spells to keep and discard the rest.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(528,46,'You become very suspicious when you see a masked figure passing through the halls. Following him, you end up somewhere very strange. Move to the first area of Lost Carcosa, have an encounter there, and then return here immediately.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(528,47,'An attendant sees you admiring the sailing memorabilia. He tells you there''s a lot more in crates stored downstairs. Make a <span class="check">Luck (-2) check</span>. If you pass, draw 3 Common Items, choose one to keep, and then discard the rest. If you fail, you are <i>delayed</i> while you search fruitlessly.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(529,17,9,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(529,45,'Earnestly, you try to convince Gladys Pickman to allow you to look through her home for old books. Make a <span class="check">Will (-1) check</span>. If you fail, nothing happens. If you pass, you may then pass a <span class="check">Luck (-1) check</span> to take the first <i><b>Tome</b></i> from the Unique Item deck.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(529,46,'The staff asks you to take a box of unclaimed lost-and-found items to the new church for the benefit of the poor. As a reward, you''re encouraged to claim something from the box for yourself. Draw 3 Common Items, choose one to keep, and discard the others.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(529,47,'The old boys have lured you into a game of high-stakes cards. Make a <span class="check">Luck (-1) check</span>. If you pass, you not only keep your money, you gain 1 Unique Item in the process. If you fail, discard all of your money to a maximum of $5.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(530,17,9,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(530,45,'Gladys Pickman is concerned that you''re not looking well and makes you some hearty soup. Gain either 1 Stamina or 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(530,46,'Your doctors give you a pill to help you relax. Move to the first area of the Dreamlands, have an encounter there, and then immediately return.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(530,47,'One of the sailors looks at you curiously. "You got family in Innsmouth?" Draw an Innsmouth Look card.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(531,17,9,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(531,45,'Someone has broken into the house and ransacked everything. Make a <span class="check">Luck (+1) check</span> to see if they found everything important. If you fail, add 1 doom token to the doom track.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(531,46,'"This was pulled out of the water yesterday. You might want to see it." The doctors show you the body of a Deep One. The sight and odor are incredibly repugnant. Lose 1 Stamina. Then, if you are still conscious, make a <span class="check">Lore (-1) check</span> and gain 1 Clue token for each success.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(531,47,'In the middle of the night, one of the retired sailors gets up and begins walking toward the water. Make a <span class="check">Fight (+0) check</span> to stop him and get him back to bed. If you fail, lose 1 Sanity as the man disappears beneath the waves.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(532,18,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(532,48,'An old man with piercing eyes opens the door before you can knock. Meeting your gaze calmly, he says, "It''s clear that you need my help, but do you deserve it?" If you spend 1 Stamina and 1 Sanity, <b>The Terrible Old Man</b> joins you. Take his Ally card, or gain 2 Spells if it''s not available.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(532,49,'Basil Elton invites you to tell him your story. If you wish to do so, you are <i>delayed</i>, but Basil offers a great deal of insight. Gain 1 Sanity and 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(532,50,'It''s a raid! Make a <span class="check">Speed (+0) check</span> to get out before the police round you up. If you fail, you are <i>arrested</i> for being in an establishment selling liquor.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(533,18,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(533,48,'As you walk past a decrepit old house, an ancient, but still vigorous man throws open the door and walks purposefully up to you. "Take this. Wear it." He roughly presses a small fetish bag into your hands. Take this card. Instead of losing 1 Stamina, you may put a Clue token on this card. Return this card to the box if it ever has 3 Clue tokens on it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(533,49,'Basil points out a location where, as stories tell, a ship carrying stolen gold sank. Make a <span class="check">Luck (-2) check</span>. If you pass, you find the legendary wreck! Gain $3.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(533,50,'It''s a slow night and the bartender, Jonas Rigg, strikes up a conversation with you. The stories he hears have been getting stranger and stranger lately. If the terror level is currently 4 or lower, gain 1 Clue token. If it is currently 5 or higher, gain 2 Clue tokens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(534,18,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(534,48,'Once you are standing on the front step, you feel yourself start to sway as if you were at sea. A cool breeze brings the scent of the ocean and you feel refreshed. Gain 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(534,49,'Noticing an older gentleman slip on the trail up ahead, you move to catch him. If you pass a <span class="check">Speed (-1) check</span>, he introduces himself as Basil Elton, and &mdash; seeing something in your eyes &mdash; offers his services. If his Ally card is available, take it, then close the North Point Lighthouse for the rest of the game and move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(534,50,'Jonas Rigg hands you a tavern puzzle and offers you a free drink if you can solve it. Make a <span class="check">Lore (-1) check</span> to get the metal ring free from the rest of the iron sculpture. If you pass, gain 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(535,18,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(535,48,'You were told the old man who dwells within lives alone, but you can distinctly hear him talking loudly to someone. Make a <span class="check">Sneak (-1) check</span>. If you pass, you overhear him sharing arcane secrets. Gain 1 Spell. If you fail you must move to the streets to avoid being caught.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(535,49,'Basil keeps a trunk of odd items that have washed up on shore over the years. Make a <span class="check">Lore (-2) check</span>. If you pass, you recognize something. Gain 1 Unique Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(535,50,'A pale, ordinary man stares out the window at the peak of the Kingsport Head as if longing for something. Pass a <span class="check">Fight (-2) check</span> or discard Lucky Cigarette Case to spark his interest in you and his surroundings. If so, he introduces himself as <b>Thomas Olney</b>. Take his Ally card, or if it''s not available, remove 1 doom token from the Ancient One''s doom track.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(536,18,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(536,48,'You hear the sounds of a violent struggle from within the house, including the cries of men in agony. Abruptly, there is silence. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(536,49,'The lighthouse is in need of fixing before the sun sets. Make a <span class="check">Speed (-1) check</span> to help Basil Elton get it working again in time. If you pass, you feel happy to have helped. Gain 1 Sanity. If you fail, you are <i>delayed</i> while you continue working into the night to get the light repaired. Then, whether you passed or not, Basil gratefully pays you $1 for your efforts.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(536,50,'Jonas Rigg, the bartender, looks you over as you enter the dim, smoky tavern. "I''m guessing you want to buy something besides drinks." You may buy up to 3 Clue tokens for $2 each.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(537,18,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(537,48,'Outside the door of this house you see light reflecting off something small that''s half-buried in the dirt. Make a <span class="check">Luck (-1) check</span>. If you pass, you find an old Spanish doubloon. Gain $3. If you fail, it''s just a bit of broken glass.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(537,49,'Watching the waves wash in and out, you drift off to sleep. Move to the first area of the Dreamlands, have an encounter there, and then return here immediately.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(537,50,'Tonight, the old Yankee fishermen who frequent the tavern are trading long, rambling tales of the sea. You listen for awhile, but although the tales are entertaining, they are uninformative. Nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(538,18,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(538,48,'An old man with piercing eyes opens the door before you can knock. Meeting your gaze calmly, he says, "It''s clear that you need my help, but do you deserve it?" If you spend 1 Stamina and 1 Sanity, <b>The Terrible Old Man</b> joins you. Take his Ally card, or gain 2 Spells if it''s not available.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(538,49,'A few fishermen have stopped by to chat with Basil Elton. They''re willing to give you a ride on their boat if you''d like. You may move to any aquatic location and have an encounter there.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(538,50,'Jonas Rigg suspects you may not be in your right mind. Roll a die for each point of Sanity you currently have. If you roll at least 1 success, the bartender apologizes and offers you some free soup. Gain 1 Stamina. If you don''t roll any successes, move to the streets and discard one <i><b>Weapon</b></i> if you are able.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(539,18,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(539,48,'A woman walking down Water St. notices your interest in the house and warns you to stay away from it. She tells you what stories she''s heard as you walk along with her. Move to the streets and gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(539,49,'Basil Elton is able to explain much about the creatures you have encountered. Gain 2 Clue tokens for each monster trophy you have. If you have no monster trophies, gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(539,50,'A pale, ordinary man stares out the window at the peak of the Kingsport Head as if longing for something. Pass a <span class="check">Fight (-2) check</span> or discard Lucky Cigarette Case to spark his interest in you and his surroundings. If so, he introduces himself as <b>Thomas Olney</b>. Take his Ally card, or if it''s not available, remove 1 doom token from the Ancient One''s doom track.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(540,18,9,7);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(540,48,'The old man who lives here glares out at you from behind a curtain. Make a <span class="check">Will (-1) check</span>. If you fail, you feel he has placed some supernatural hex upon you. Take the Tainted card if it is available.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(540,49,'A well-dressed Egyptian man is visiting Basil Elton. If you have any Exhibit Items or your Will is 2 or lower, he takes an interest in your story as well. He introduces himself as <b>Dr. Ali Khafour</b>. Take his Ally card, or if it is not available, listen to him discuss journeys into the underworld as described in assorted cultures. Gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(540,50,'Tonight, the old Yankee fishermen who frequent the tavern are trading long, rambling tales of the sea. You listen for awhile, but although the tales are entertaining, they are uninformative. Nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(541,18,9,7);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(541,48,'A young student is walking away after receiving no response to her knocking. Make a <span class="check">Speed (-1) check</span> to stop her before she disappears. If you pass, you introduce yourself to <b>Sarah Danforth</b>, an archaeology student from Miskatonic. She''s been investigating gold coins that come from this house. Take her Ally card. If it is not available, gain 1 Clue token instead as she chats about the museum exhibit in Arkham.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(541,49,'Basil Elton calls you to the top of the lighthouse, quickly pointing to the water. Make a <span class="check">Luck (-1) check</span>. If you pass, you see the strange ship he''s pointing to. You may take the Visions card if it is available.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(541,50,'Jonas Rigg is curious about the exhibit of Egyptian antiquities. If you chose to tell him what you know, he picks up your tab at the end of the night. You are restored to your maximum Sanity, but are <i>delayed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(542,18,9,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(542,48,'As you walk past a decrepit old house, an ancient, but still vigorous man throws open the door and walks purposefully up to you. "Take this. Wear it." He roughly presses a small fetish bag into your hands. Take this card. Instead of losing 1 Stamina, you may put a Clue token on this card. Return this card to the box if it ever has 3 Clue tokens on it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(542,49,'The more you can tell Basil Elton about the plot of "The King in Yellow", the more he can explain what''s actually happening. If the Act I card is currently in play, gain 2 Clue tokens. If the Act II card is currently in play, gain 3 Clue tokens instead.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(542,50,'In perfect unison, the loud and boisterous crowd suddenly falls silent, turns to you and all ask, "Have you seen the yellow sign?" Lose 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(543,18,9,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(543,48,'You hear a rumor from a passerby that someone else was sneaking around here last night, but hasn''t been seen since. Draw the top card from the Ally deck and return it to the box.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(543,49,'In despair, someone has thrown himself into the water. Make a <span class="check">Fight (-1) check</span>. If you pass, you manage to pull him out of the water without harm to yourself. If you fail, lose 1 Stamina wrestling the man back to shore.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(543,50,'Jonas Rigg, the bartender, looks you over as you enter the dim, smoky tavern. "I''m guessing you want to buy something besides drinks." You may buy up to 3 Clue tokens for $2 each.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(544,18,9,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(544,48,'The old man refuses to open the door for you. When you plead with him, you hear him muttering something. Make a <span class="check">Luck (+0) check</span>. If you pass, you''ve learned a charm from him. Gain 1 Spell. If you fail, he''s <i>Cursed</i> you.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(544,49,'The light illuminates strange shapes in the sky! Lose 1 Sanity for each monster in the Sky. Then, if you have not gone insane, choose 1 monster token in the Sky to return to the monster cup.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(544,50,'Tonight, the old Yankee fishermen who frequent the tavern are trading long, rambling tales of the sea. You listen for awhile, but although the tales are entertaining, they are uninformative. Nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(545,18,9,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(545,48,'You don''t understand why, but the door is warm to the touch. You may choose to gain up to 3 Stamina. (You may not exceed your maximum Stamina.) Then, for each point of Stamina you gained, draw a Corruption card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(545,49,'Standing outside at the top of the lighthouse, the railing suddenly breaks. Make a <span class="check">Speed (+0) check</span> to catch yourself. If you fail, lose 2 Stamina from the fall.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(545,50,'During the night, someone has broken all the windows and smashed all the furniture. Until repairs can be made, the tavern can''t accommodate any patrons. Move to the streets.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(546,18,9,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(546,48,'As you walk past a decrepit old house, an ancient, but still vigorous man throws open the door and walks purposefully up to you. "Take this. Wear it." He roughly presses a small fetish bag into your hands. Take this card. Instead of losing 1 Stamina, you may put a Clue token on this card. Return this card to the box if it ever has 3 Clue tokens on it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(546,49,'A few fishermen stop by and offer to sell some of their catch. If you''re willing to buy any, Basil Elton is willing to cook it. You may spend $1 to gain 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(546,50,'An old man with a concertina sings an ancient ballad about creatures coming in the night. Listening carefully to its lyrics, the song''s story is both terrifying and revealing. Lose 1 Sanity and gain 1 Clue token.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(547,18,9,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(547,48,'As you approach the house through the thick mist from the ocean, you discover a landscape unlike anything you expected. Move to the first area of R''lyeh, have an encounter there, and then return here immediately.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(547,49,'Talking to Basil Elton about his past, he tries to teach you certain powerful rituals he witnessed during his travels. Make a <span class="check">Lore (-2) check</span>. For each success, draw 1 Spell. Choose one of the Spells to keep and discard the rest.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(547,50,'Jonas Rigg, the bartender, looks you over as you enter the dim, smoky tavern. "I''m guessing you want to buy something besides drinks." You may buy up to 3 Clue tokens for $2 each.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(548,18,9,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(548,48,'You hear a multitude of whispered voices calling out to you from inside the house. Make a <span class="check">Lore (-1) check</span> to try to make sense of what they are saying. If you pass, gain 1 Spell. If you fail, it''s nothing more than a nightmarish cacophony. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(548,49,'The view from the top of the lighthouse is breathtaking. You find it truly inspiring. Gain 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(548,50,'Tonight, the old Yankee fishermen who frequent the tavern are trading long, rambling tales of the sea. You listen for awhile, but although the tales are entertaining, they are uninformative. Nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(549,18,9,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(549,48,'Outside the house, you feel yourself slipping away, as if your very soul were being pulled out of your body. Make a <span class="check">Will (+1) check</span> to resist. If you fail, the experience leaves you permanently affected. Draw 1 Madness card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(549,49,'There are mysterious forces watching over the keeper of this lighthouse. Make a <span class="check">Luck (-2) check</span>. If you pass, these forces are pleased with the kindness you have shown him and you are <i>Blessed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(549,50,'A few members of the Sheldon Gang are gathered in the corner. One of them notices you watching and confronts you. If you spend at least 5 toughness worth of monster trophies or 1 gate trophy, they accept you into the gang. Take a Sheldon Gang Membership card. If you do not spend the trophies, they throw you out. Move to the street and lose 1 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(550,18,9,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(550,48,'As you walk past a decrepit old house, an ancient, but still vigorous man throws open the door and walks purposefully up to you. "Take this. Wear it." He roughly presses a small fetish bag into your hands. Take this card. Instead of losing 1 Stamina, you may put a Clue token on this card. Return this card to the box if it ever has 3 Clue tokens on it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(550,49,'For a moment, the lighthouse illuminates some horrible creature in the water. When the light rotates around again, the thing is gone. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(550,50,'One of the sailors tells you a horrible story about large fish creatures pulling men under the water. If there are 3 or less uprising tokens on the Deep Ones Rising Track, gain 1 Clue token. If there are 4 or more uprising tokens on the Deep Ones Rising Track, gain 2 Clue tokens and lose 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(551,18,9,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(551,48,'Through one of the windows, you catch a quick glimpse of golden jewelry from some ancient sea-faring culture. You''re certain you''ve never seen it before, but it calls out to something hidden deep within you. Draw 1 Innsmouth Look card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(551,49,'A few of the fishermen have come by to warn Basil Elton that there''s something dangerous in the water near Innsmouth. Gain 1 Clue token as they describe the creatures seen near Devil Reef.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(551,50,'Jonas Rigg, the bartender, looks you over as you enter the dim, smoky tavern. "I''m guessing you want to buy something besides drinks." You may buy up to 3 Clue tokens for $2 each.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(552,19,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(552,51,'As you walk down the street, a tomcat rubs himself against your legs. "Hello there, puss. Where did you come from?" If you pass a <span class="check">Luck (-1) check</span>, you name the cat <b>Foolishness</b>. Take his Ally card, or if it''s not available, remove 2 Rift tokens from the Kingsport board.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(552,52,'The students seem all too eager to tell you rumors and ghost stories. Make a <span class="check">Lore (-1) check</span> to discern the useful from the hyperbole. If you pass, gain 1 Clue token. If you fail, you are <i>delayed</i> by the excess of dubious information.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(552,53,'"I''m running out of room, I''m afraid." Neil is willing to sell some of his inventory for a discount. Draw 1 Unique Item. You may purchase it for $2 less than list price, to a minimum of $1.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(553,19,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(553,51,'You stand on a street corner listening to a talented violinist play beautifully. Gain 1 Sanity. Then, if you pay $1, gain 1 additional Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(553,52,'Principal Miles is hesitant to allow you into students'' lockers. Make a <span class="check">Will (-2) check</span> to convince him. If you pass, you dsicover one student''s notes on a foray into the arcane arts. Gain 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(553,53,'You see a strange young man dickering with Neil over the price of a musty book. "Blast you, man! Just set a price, already!". It turns out that Neil''s more interested in a couple of your items, however. If you discard 2 Common Items, the young man gives his name as <b>Charles Dexter Ward</b>. Take his Ally card, or if it''s not available, draw the top 5 Spells and keep one of them.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(554,19,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(554,51,'A painter who specializes in calm landscapes has his works for sale on the sidewalk. You suddenly see someone stealing one of his paintings. Make a <span class="check">Speed (-2) check</span> to catch the thief. If you pass, the artist offers you a small painting as gratitude. Although not valuable, you treasure the painting for its purity and simplicity. You are <i>Blessed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(554,52,'The teachers claim you are disrupting class and insist that you leave. Move to the streets.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(554,53,'Neil rambles on as he gives you the guided tour. It''s entertaining, but ultimately useless. Nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(555,19,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(555,51,'A young painter, who clearly has some talent, is trying to sell his works, but looks dejected. When a passerby shows a little interest, you decide to help him make the sale. Make a <span class="check">Lore (-2) check</span> to point out the strengths of the work. If you pass, the painter splits the money from the sale with you. Gain $2.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(555,52,'You encounter a lovely young lady visiting her old school. She smiles at you, and something intangible passes between the two of you. If you add 2 Rift progress tokens to any spaces on the Rift track, she introduces herself as <b>Asenaith Waite</b>. Take her Ally card, or if it''s not available, gain 1 Retainer and 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(555,53,'Neil has taken a liking to you, so he gives you the extended tour. You are <i>delayed</i> while he goes into painstaking detail. But you do learn a lot. Gain 2 Clue tokens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(556,19,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(556,51,'As you walk down the street, a tomcat rubs himself against your legs. "Hello there, puss. Where did you come from?" If you pass a <span class="check">Luck (-1) check</span>, you name the cat <b>Foolishness</b>. Take his Ally card, or if it''s not available, remove 2 Rift tokens from the Kingsport board.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(556,52,'One of the classrooms is closed today and students are not allowed to go in. Inside you find animal blood was painted on the walls as part of some horrific rite. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(556,53,'You realize that an old book Neil has just received has been serving as a nest for a multitude of biting insects. Make a <span class="check">Speed (-2) check</span> to get it outside before they start spreading. If you fail, lose 1 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(557,19,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(557,51,'A friendly-looking man catches sight of you and asks if you''re doing okay. He recommends borrowing his sketchbook and drawing what''s bothering you. If your current Sanity is 2 or less, gain 2 Sanity. The man seems quite alarmed at the things you draw.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(557,52,'You encounter a lovely young lady visiting her old school. She smiles at you, and something intangible passes between the two of you. If you add 2 Rift progress tokens to any spaces on the Rift track, she introduces herself as <b>Asenaith Waite</b>. Take her Ally card, or if it''s not available, gain 1 Retainer and 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(557,53,'Neil is amazed to see you, saying he just had a dream about you last night. Make a <span class="check">Luck (+0) check</span>. If you pass, his prescient dream proves useful. Gain 1 Clue token. If you fail, the nightmare he describes unnerves you. Lose 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(558,19,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(558,51,'You see a half-crumpled sketch lying next to a bench. It strikes you as interesting because it is clearly your face that was being sketched. When you unfold the paper, you are horrified to see it is a depiction of you being horribly murdered. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(558,52,'Principal Miles invites you to have lunch in the cafeteria. Gain 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(558,53,'You see a strange young man dickering with Neil over the price of a musty book. "Blast you, man! Just set a price, already!". It turns out that Neil''s more interested in a couple of your items, however. If you discard 2 Common Items, the young man gives his name as <b>Charles Dexter Ward</b>. Take his Ally card, or if it''s not available, draw the top 5 Spells and keep one of them.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(559,19,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(559,51,'A local artist has just been commissioned to create work for a gallery in Boston. Overjoyed, he is spending money on anything he can find. You may choose 1 Common Item or 1 Unique Item to discard in exchange for $2 greater than its list price.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(559,52,'The school is selling some of its old texts. You may spend $2 to search the Common Item deck and take the first <i><b>Tome</b></i> you find.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(559,53,'Neil is wondering if you would be willing to trade. You may choose 1 Unique Item of yours to discard. Then gain 1 Unique Item. If the list price of the item you gained is less than that of the item you discarded, gain an additional Unique Item.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(560,19,9,7);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(560,51,'<b>Erica Carlyle</b> is browsing the art for sale and gets caught up in your stories of the unexplained. If you have $3 or less, she agrees to join you and help pay your way. Take her Ally card, or if it is not available, gain a Retainer card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(560,52,'After looking into the school records, you begin to feel a malevolent force has begun to follow you. Make a <span class="check">Will (-1) check</span> to shake the feeling. If you fail, take the Harried card if it is available.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(560,53,'You are shocked to discover a genuine ancient Egyptian treasure among Neil''s trinkets. Stranger still, he seems eager for you to take it off his hands at no charge. You may gain 1 Exhibit Item if you wish. If you do, take the Tainted card if it is available.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(561,19,9,7);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(561,51,'You are surprised to bump into acquaintances who have decided to vacation here in Kingsport. They believe you have knowledge of the best places to visit and are keen to tag along. Make a <span class="check">Will (-1) check</span> to politely discourage them. If you fail, take the Local Guide card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(561,52,'A student presents a detailed report on the history of the Dark Pharaoh. Make a <span class="check">Will (-2) check</span>. If you pass, you learn a great deal questioning her. Gain 2 Clue tokens. If you fail, lose 1 Sanity as she describes what it was like to live under the Pharaoh''s reign.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(561,53,'You discover a famous escape artist shopping for props and memorabilia. If you give him 2 of your Spells (discarding them), he introduces himself as <b>Erich Weiss</b>; take his Ally card if it''s available. If it is not available, he shows you a trick instead, and you gain 2 Clue tokens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(562,19,9,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(562,51,'Somehow, as you race through this area, every piece of art you see has a yellow sign somewhere in it. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(562,52,'Elections are underway for class president and the competition has grown mean-spirited. You see a fight break out right in front of you. Make a <span class="check">Fight (-1) check</span> to break it up. If you fail, lose 1 Sanity as you can''t stop the students viciously attacking one another.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(562,53,'Neil is worried that people are blaming him for all the strange things that are happening. He''s very upset, and it takes a lot of convincing to assure him that he''s not the target of a lynch mob. You are <i>delayed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(563,19,9,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(563,51,'A desperate-looking young man approaches you asking for financial help. He assures you he is a hard worker with a good future and that he will pay you back with interest. You may pay $3 to take a Retainer card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(563,52,'A couple students have snuck outside, behind the school. Make a <span class="check">Sneak (-2) check</span> to overhear what they say to each other when they think no one else is listening. If you pass, gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(563,53,'Neil rambles on as he gives you the guided tour. It''s entertaining, but ultimately useless. Nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(564,19,9,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(564,51,'Sipping coffee at a small caf&eacute;, you suddenly grasp your throat. You''ve been poisoned! Make a <span class="check">Fight (-1) check</span> to stave off its effects. If you fail, lose 2 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(564,52,'Principal Miles is looking for guest lecturers. If your Lore is currently at 4 or higher, gain a Retainer card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(564,53,'You notice a man trying to steal one of Neil''s items. Make a <span class="check">Fight (-1) check</span>. If you pass, you find he''s been stealing several things around town. You return Neil''s merchandise but you gain $3. If you fail, lose 1 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(565,19,9,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(565,51,'"What do you think of my work?" An artist shows a series of sketches of creatures too horrific to even consider. Lose 1 Sanity. Then, if you are still sane, make a <span class="check">Will (+0) check</span>. If you fail, you attack the man and are <i>arrested</i> for being a menace.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(565,52,'The further back you look, the more the school''s records are incomplete and disorganized, but you find some remarkable things among the paperwork. Draw 2 Spells, then choose one to keep and discard the other. But the long search results in you being <i>delayed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(565,53,'Among the collection, you see a small carving of a tree with branches that reach out threateningly. If you have a "One of the Thousand" Cult Membership, gain 3 Clue tokens. If you do not have a "One of the Thousand" Cult Membership, make a <span class="check">Lore (-1) check</span>. If you pass, gain 1 Clue token.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(566,19,9,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(566,51,'An art shop is selling an old engraving that depicts figures engaged in some arcane rite. You recognize it illustrates the use of magic in detail. You may purchase it for $3. If you do, gain 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(566,52,'A glass display case holds various trophies and certificates earned by students over the years. You notice one of the certificates is covered in text written in ancient language. Make a <span class="check">Lore (-2) check</span> to translate. If you pass, gain 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(566,53,'Given your apparent knowledge of obscure histories, Neil offers you a discount on purchasing an item from his collection. Draw a Unique Item. You may purchase this item for the list price. For each Clue token you have, reduce the list price by $1, to a minimum of $1.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(567,19,9,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(567,51,'You find a jeweler who crafts talismans, who asks you if you know anything about real magic. He''s willing to pay for a lesson. If you currently have a Spell, gain $2. If you do not have a Spell, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(567,52,'Principal Miles shows you the work that students have been creating in their art classes. You can see one student has talent well beyond her years and a strange insight into creatures from beyond. Make a <span class="check">Lore (-2) check</span> and gain 1 Clue token for each success as you examine her work.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(567,53,'Neil rambles on as he gives you the guided tour. It''s entertaining, but ultimately useless. Nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(568,19,9,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(568,51,'You see a painting of a rural landscape with dark clouds on the horizon. You can see the faint image of monstrous appendages hidden among the clouds. Make a <span class="check">Will (-1) check</span>. If you fail, lose 1 Sanity. If you had a Madness card before you failed the check, add 1 Dunwich Horror token to the board.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(568,52,'One of the students has received a letter from her home in Dunwich. She''s very concerned about the events that are being described. Gain 1 Clue token for each Dunwich Horror token on the board. Then lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(568,53,'The dust and mold on many of Neil''s displays make it difficult to breathe. Make a <span class="check">Fight (-1) check</span> to resist having a reaction to the fetid air. If you fail, lose 1 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(569,19,9,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(569,51,'A store is selling a painting that depicts you in the way you are currently dressed, but in a completely different time period. Move the first area of Another Time, have an encounter there and return here immediately.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(569,52,'If the Rare Book Collection card is facedown and you have the Necronomicon, John Miles tells you that the Miskatonic Library is looking for another copy. You may return the Necronomicon to the box to turn the Rare Book Collection card faceup. If the Rare Book Collection card is faceup, if you do not have the Necronomicon, or if you do no want to discard the Necronomicon, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(569,53,'Neil tells you that there was a strange man from Dunwich here asking about rare books. Make a <span class="check">Lore (-2) check</span> to recognize the names of the books. Gain 1 Clue token for each success.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(570,19,9,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(570,51,'An artist is sketching a woman sitting across from him. You can tell, just by looking at his rendering of her, the two are very much in love. Gain 1 Sanity from this heartwarming scene.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(570,52,'Someone sneaks a book in with your other belongings. Make a <span class="check">Luck (-1) check</span>. If you pass, gain 1 Spell. If you fail, it is a text that describes agonizing horrors befalling humanity. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(570,53,'Neil rambles on as he gives you the guided tour. It''s entertaining, but ultimately useless. Nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(571,19,9,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(571,51,'You find yourself drawn inexplicably to paintings of the sea. Draw 1 Innsmouth Look card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(571,52,'Principal Miles is very interested in acquiring more books for the library. You may discard 1 <i><b>Tome</b></i> in exchange for $2 more than its list price.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(571,53,'A family of tourists is receiving one of Neil''s tours. They are so enthralled and delighted by his stories you can''t help but feel better. Gain 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(572,12,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(572,33,'Picking your way between the dead plants, you come across an old man gathering some strange fungus. He introduces himself as <b>Zebulon Whateley</b> and asks if you know the Art. If you discard 1 Spell, take his Ally card. If it isn''t available, gain 4 Clue tokens instead.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(572,34,'You are filled with an unnatural vigor. Your Stamina is restored to its maximum. In addition, you gain 3 extra Stamina above your maximum that cannot be restored once lost.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(572,35,'You knock on the door of the shack, but it appears that Harney is out. No encounter.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(573,12,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(573,33,'Picking your way between the dead plants, you come across an old man gathering some strange fungus. He introduces himself as <b>Zebulon Whateley</b> and asks if you know the Art. If you discard 1 Spell, take his Ally card. If it isn''t available, gain 4 Clue tokens instead.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(573,34,'After walking around the house, you become aware of fine bits of a strange metal stick to your clothes. You can feel the metallic dust emanating a strange energy. Gain 1 Clue token and then make a <span class="check">Luck (-1) check</span>. If you fail, a monster appears.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(573,35,'"I bought these back during the war. Maybe they''ll come in handy for you." Harney pulls a stack of Liberty Bonds from a tin container and passes a few to you. Gain $3.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(574,12,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(574,33,'You hear a panicked cry from inside a nearby cloud of brownish smoke. If you rush to help, you pull someone inside the cloud to safety, but hurt yourself badly doing so. Draw 1 Ally and 1 Injury card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(574,34,'A weathered man comes up to you as you approach the Gardners'' house. Introducing himself as <b>Ammi Pierce</b>, he tells you that it might be wise to steer clear of the house right now, and asks if you have anything that might help the family''s strange affliction. If you discard 1 Unique Item, Ammi joins you in gratitude. Take his Ally card if it''s available. If it is not, remove 1 Dunwich Horror token from the board.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(574,35,'You knock on the door of the shack, but it appears that Harney is out. No encounter.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(575,12,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(575,33,'Sickly-colored steam begins to rise from invisible fissures in the earth. Make a <span class="check">Speed (-1) check</span> to cover your mouth before breathing it in. If you fail, lose 2 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(575,34,'A weathered man comes up to you as you approach the Gardners'' house. Introducing himself as <b>Ammi Pierce</b>, he tells you that it might be wise to steer clear of the house right now, and asks if you have anything that might help the family''s strange affliction. If you discard 1 Unique Item, Ammi joins you in gratitude. Take his Ally card if it''s available. If it is not, remove 1 Dunwich Horror token from the board.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(575,35,'Harney tells you old stories about his friends who worked for the railroad. "Just mention my name and they''ll let you ride in the freight car for free." Gain 1 Rail Pass.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(576,12,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(576,33,'No wildlife of any kind will approach this barren field, and the silence is unnerving. Make a <span class="check">Will (+1) check</span> and lose 3 Sanity, reducing the amount of Sanity lost by 1 for each success rolled (to a minimum of 0).');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(576,34,'Inside the Gardners'' house you find strange, erratic writings covering some of the walls. Most of it seems to be nonsense, but hidden within the ramblings are some startling revelations. If you choose to investigate thoroughly, gain 3 Clue tokens, and you are <i>delayed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(576,35,'"I reckon you''ve got some natural ability you don''t even know about. You could be the best if you put a little work into it." Harney''s words encourage you to expand your knowledge. Gain 1 Skill.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(577,12,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(577,33,'In the moonlight, you hear a local farmer muttering to himself and gathering the dirt from this area into a small pouch. Make a <span class="check">Luck (-2) check</span> to hear what he''s saying. If you pass, you realize he''s reciting an ancient ritual and you draw 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(577,34,'Emaciated cattle wander through the area, their hide turned grey by some unknown force. Make a <span class="check">Lore (-1) check</span>. If you pass, gain 1 Clue token as you gain useful knowledge by studying these strangely afflicted creatures.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(577,35,'You feel lucky to have bumped into Harney Jones and discovered his gentle humor and generous nature. You feel much better about the world you''re trying to save. You are <i>Blessed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(578,12,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(578,33,'The ground has been dug up in several places, and you think you may be able to find tracks of the creature that was digging. Make a <span class="check">Luck (-1) check</span> and gain 1 Clue token if you pass.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(578,34,'A bit of dirt has been disturbed here, revealing an oddly-shaped skull. Something warns you that touching it could be a bad idea, but it seems to glow with power at the same time. If you decide to touch it, draw 1 Skill and 1 Madness card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(578,35,'Harney listens to your entire story with a concerned expression. "Well, a person can''t hear a story like that and just stand by and do nothing. I''ll head into town tomorrow and do what I can." You may remove 1 Dunwich Horror token from the board.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(579,12,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(579,33,'The smoke here burns your eyes and you begin to see things that couldn''t possibly be real. Make a <span class="check">Luck (+0) check</span>. If you pass, it was nothing more than a terrifying mirage. Lose 1 Sanity. If you fail, it''s no hallucination. A monster appears. Treat this monster as if it has the <b>Nightmarish 1</b> ability, if it does not already have the <b>Nightmarish</b> ability.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(579,34,'A horrifying monster appears!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(579,35,'Harney tells you that you need some rest. You may choose to stay here next turn to discard either an Injury or Madness card. If you do not have an Injury or Madness card, you may instead choose to stay here next turn and restore either your Sanity or Stamina to full.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(580,12,9,7);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(580,33,'You hear a panicked cry from inside a nearby cloud of brownish smoke. If you rush to help, you pull someone inside the cloud to safety, but hurt yourself badly doing so. Draw 1 Ally and 1 Injury card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(580,34,'<b>Erica Carlyle</b> is investigating the stories of the mysterious stone that fell from the heavens, and her interest is piqued by your tales of the bizarre. If you have $3 or less, she agrees to join you and help pay your way. Take her Ally card, or if it is not available, gain a Retainer card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(580,35,'Harney reminisces with you for hours. His calm tone and fanciful tales soon put you in a deep trance. When you regain your senses, you find your mind has grown more receptive. Take the Psychic card if it is available.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(581,12,9,7);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(581,33,'Make a <span class="check">Luck (-1) check</span>. If you fail, your health has been adversely affected by your time here. Draw 1 Injury card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(581,34,'A famed escape artist is investigating the area''s legends of an unearthly glow which permeates the area at night. If you give him 2 of your Spells (discarding them), he introduces himself as <b>Erich Weiss</b>; take his Ally card if it''s available. If it''s not available, he shows you a trick instead, and you gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(581,35,'It seems you are not the only one trying to get answers from Harney. You may take the Private Investigator card if it is available.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(582,12,9,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(582,33,'You feel as if this desolate area is draining you of your life. Lose 1 Stamina. Then, if either the Act I or the Act II card is in play, discard 1 Spell if you are able. Then, if the Act II card is in play, you must additionally discard 1 Skill if you are able.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(582,34,'A bit of dirt has been disturbed here, revealing an oddly-shaped skull. Something warns you that touching it could be a bad idea, but it seems to glow with power at the same time. If you decide to touch it, draw 1 Skill and 1 Madness card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(582,35,'Harney''s set a few snares to catch rabbits for stew. He''s also hidden a few larger traps across the countryside, in the hopes of catching larger quarry. You may choose two monsters in the Outskirts and return them to the monster cup. If there are no monsters in the Outskirts, gain 1 Clue token instead.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(583,12,9,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(583,33,'As you talk in the moonlight, you are struck by a curious light. You are casting two shadows. Looking up, you are stunned to see two moons. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(583,34,'You are filled with an unnatural vigor. Your Stamina is restored to its maximum. In addition, you gain 3 extra Stamina above your maximum that cannot be restored once lost.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(583,35,'You knock on the door of the shack, but it appears that Harney is out. No encounter.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(584,12,9,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(584,33,'You hear a panicked cry from inside a nearby cloud of brownish smoke. If you rush to help, you pull someone inside the cloud to safety, but hurt yourself badly doing so. Draw 1 Ally and 1 Injury card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(584,34,'The more corrupt Dunwich becomes, the more this area rots the minds of those who encounter it. Make a <span class="check">Will (+2) check</span>. If the number of successes is less than the number of total monster tokens in Dunwich locations and Dunwich street areas, draw a Madness card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(584,35,'People have been complaining that Harney has snapped and has been shooting his gun off in the air. Harney tells you that his mind is as sound as ever, but that he has been firing his rifle. Choose 2 monsters in the Sky and return them to the monster cup. If there are no monsters in the Sky, gain 1 Clue token instead.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(585,12,9,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(585,33,'Through one of the fissures in the stony ground, you see something shining. Make a <span class="check">Fight (-2) check</span>. If you pass, you manage to free the object. Gain 1 Unique Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(585,34,'You have definitely been affected by the unearthly energies in this place. Draw 1 Corruption card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(585,35,'Harney reckons you''ve been fighting the darkness so long, you''ve started to take on some of it yourself. He talks with you at length about the simple, decent things that you''re fighting so hard to protect. You may choose 1 Corruption card to discard. If you have no Corruption cards, you are <i>Blessed</i> instead.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(586,12,9,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(586,33,'Standing next to one of the dead trees near the hopyard, you look up and see a decayed noose hanging from one of the branches. You take it as a bad sign. Make a <span class="check">Luck (+0) check</span>. If you fail, you are <i>Cursed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(586,34,'You are filled with an unnatural vigor. Your Stamina is restored to its maximum. In addition, you gain 3 extra Stamina above your maximum that cannot be restored once lost.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(586,35,'You knock on the door of the shack, but it appears that Harney is out. No encounter.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(587,12,9,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(587,33,'A scientist from Miskatonic University is here to examine the dead plant life. He''s happy to explain some of the area''s stranger aspects, but he uses highly technical language. Make a <span class="check">Lore (-2) check</span> to decipher what he''s saying. Gain 1 Clue token for each success.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(587,34,'A bit of dirt has been disturbed here, revealing an oddly-shaped skull. Something warns you that touching it could be a bad idea, but it seems to glow with power at the same time. If you decide to touch it, draw 1 Skill and 1 Madness card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(587,35,'Harney tells you that critters have tried to break into our world before. He shows you a strange object of wood and stone, tied together by iron bands. Draw a gate marker from the stack of gate markers and keep it as a trophy, even if it is an <b>Endless</b> gate.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(588,12,9,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(588,33,'You hear a panicked cry from inside a nearby cloud of brownish smoke. If you rush to help, you pull someone inside the cloud to safety, but hurt yourself badly doing so. Draw 1 Ally and 1 Injury card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(588,34,'Strange currents of mystical energy flow through this area. If 2 or more Rifts are open, add 1 Dunwich Horror token to the board.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(588,35,'"Fancy two such nice folks comin'' for a visit on the same day. Allow me to make some introductions." Gain 1 Ally.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(589,12,9,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(589,33,'The ground beneath your feet gives way suddenly and you drop down for what seems forever. Move to the first area of the Underworld, have an encounter there and then immediately return here.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(589,34,'A gate and a monster appear!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(589,35,'"There''s a train headin'' to Kingsport that goes right by here." You may immediately move to Central Hill if you like and have an encounter there.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(590,12,9,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(590,33,'You''ve heard that strange creatures appear at night in the hopyard. If you wish, you may spend the night here and observe. If you do so, you are <i>delayed</i> and gain 3 Clue tokens observing the creatures that dwell here in the night.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(590,34,'You are filled with an unnatural vigor. Your Stamina is restored to its maximum. In addition, you gain 3 extra Stamina above your maximum that cannot be restored once lost.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(590,35,'Harney looks like he just got back from a trip. He claims to have "Been fishin''!" You may choose 1 monster token in any aquatic location and return it to the monster cup. If there are no monsters in an aquatic location, you may spend 1 Clue token to place a Clue token on any space on the Feds Raid Innsmouth track.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(591,12,9,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(591,33,'You see what looks like a deer walking toward you, seemingly unafraid. You then see that eating the grass near this place has mutated it. The creature attacks. Make a <span class="check">Fight (-1) check</span> to defend yourself. Lose 1 Stamina if you fail.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(591,34,'A bit of dirt has been disturbed here, revealing an oddly-shaped skull. Something warns you that touching it could be a bad idea, but it seems to glow with power at the same time. If you decide to touch it, draw 1 Skill and 1 Madness card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(591,35,'You knock on the door of the shack, but it appears that Harney is out. No encounter.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(592,10,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(592,27,'Moving quietly through the underbrush, you overhear a young woman talking to herself. She is fretting about some money her uncle owes to a rather unsavory character. If you wish, you may give her $5 to pay the debt. If you do, she introduces herself as <b>Corinna Jones</b> and asks if she can help you in any way. Take her Ally card if it''s available. If it is not, gain 1 Skill as she teaches you something useful in exchange for your help.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(592,28,'You can''t see it, but you know something exists on this farm that is horrible. You can feel this malevolent force watching your every move. Lose 1 Sanity. You may add 1 Dunwich Horror token to the board. If you do so, gain 3 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(592,29,'You have disturbed something that should have been left alone. Pass a <span class="check">Luck (-1) check</span> or add 1 Dunwich Horror token to the board.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(593,10,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(593,27,'Moving quietly through the underbrush, you overhear a young woman talking to herself. She is fretting about some money her uncle owes to a rather unsavory character. If you wish, you may give her $5 to pay the debt. If you do, she introduces herself as <b>Corinna Jones</b> and asks if she can help you in any way. Take her Ally card if it''s available. If it is not, gain 1 Skill as she teaches you something useful in exchange for your help.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(593,28,'Next to a weathered chair in front of the Whateleys'' home is a torn up scholastic journal about ancient books. The language is a bit dense but you struggle through. Make a <span class="check">Lore (-2) check</span>. If you pass, gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(593,29,'The pattern of these stones seems familiar, as if you''ve read about their significance before. Pass a <span class="check">Lore (-2) check</span> to gain 1 Spell.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(594,10,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(594,27,'You notice that a piece of driftwood looks to have letters of some kind carved into it. Make a <span class="check">Lore (-2) check</span> to decipher the coded message. If you pass, gain 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(594,28,'As you approach the old Whateley farm, a man runs up to you. "For God''s sake, don''t go in there!" He introduces himself as <b>Earl Sawyer</b>, the Whateleys'' nearest neighbour. You talk, and he reveals a dangerous plan for dealing with the strange goings-on. If you add 1 Dunwich Horror token to the board, he joins you. Take his Ally card if it''s available. If it is not, draw 1 Spell, 1 Unique Item, and 1 Common Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(594,29,'You see a glimmer of something metallic caught in a fissure of one of the stones. Pass a <span class="check">Fight (-1) check</span> to gain $3 as you reecover a small golden ring from among the rocks.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(595,10,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(595,27,'You slide down a muddy hill and strike your head on a rock. Half-conscious, your mind fills with images of horrific gods. When you awaken, a bizarre chant still echoes in your thoughts. Gain 1 Spell and lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(595,28,'As you approach the old Whateley farm, a man runs up to you. "For God''s sake, don''t go in there!" He introduces himself as <b>Earl Sawyer</b>, the Whateleys'' nearest neighbour. You talk, and he reveals a dangerous plan for dealing with the strange goings-on. If you add 1 Dunwich Horror token to the board, he joins you. Take his Ally card if it''s available. If it is not, draw 1 Spell, 1 Unique Item, and 1 Common Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(595,29,'A dark man chuckes as you approach. He gestures at you and vanishes. A gate and a monster appear!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(596,10,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(596,27,'Painted faintly upon a stone, you see an image of a primitive figure invoking otherwordly forces. Suddenly, an ominous shadow moves across the stone. Gain 1 Spell and then a monster appears.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(596,28,'Through the shutters you see a book lying open on a table inside. You may make a <span class="check">Sneak (-2) check</span> to enter undetected and examine it. If you pass, draw 2 Spells, keep one and discard the other. If you fail, lose 1 Stamina and move to the street as you are evicted from the building.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(596,29,'A professor from Miskatonic University is here making rubbings from the standing stones. He introduces himself as <b>Professor Rice</b> and asks for your help. If you agree to help him, add 1 doom token to the doom track and take his Ally card if available. If it is not available, gain $5 and 2 Unique Items. If you refuse to help him, nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(597,10,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(597,27,'Your feet sink into the soft mud. To your horror, you realize you are continuing to sink. Make a <span class="check">Fight (-1) [2] check</span> to free yourself. If you pass, you are <i>Blessed</i> and feel as if you have a new love for life. If you fail, lose 1 Stamina and are <i>delayed</i> waiting to be rescued.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(597,28,'If you pass a <span class="check">Luck (-1) check</span>, you discover some of Wizard Whateley''s notes and find a way to interfere with his plans. You may remove 1 Dunwich Horror token from the board.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(597,29,'A professor from Miskatonic University is here making rubbings from the standing stones. He introduces himself as <b>Professor Rice</b> and asks for your help. If you agree to help him, add 1 doom token to the doom track and take his Ally card if available. If it is not available, gain $5 and 2 Unique Items. If you refuse to help him, nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(598,10,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(598,27,'The Sheldon Gang is looking for new recruits. If you want to prove how tough you are, spend either at least 5 toughness worth of monster trophies or 1 gate trophy. If you spend the trophies, take a Sheldon Gang Membership card. If not, they rough you up and tell you to hit the road. Move to the street and lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(598,28,'It looks like the barn has recently been repaired. Putting your ear to the door, you can hear something moving in there. Gain 1 Clue token. Then pass a <span class="check">Luck (-2) check</span> or lose 2 Sanity as you come to understand what those awful noises are.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(598,29,'Ahead of you, a dark man runs his hand across a large stone. When you reach the stone, the man is gone, but you see a tiny row of runes on the stone. Reading them, your mind is charged with unnatural energy. Gain 1 Spell and then pass a <span class="check">Will (-1) check</span> or lose 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(599,10,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(599,27,'The night sky is clear when you get away from the city. As you watch, a shooting star crosses the sky and you make a wish. Make a <span class="check">Luck (-2) check</span>. If you pass, you are <i>Blessed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(599,28,'You discover a local man unconscious by a broken fence. Make a <span class="check">Lore (-1) check</span> to administer first aid. If you pass, gain a Clue token as he tells you what happened. If you fail, you are <i>delayed</i> waiting for a doctor.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(599,29,'There''s nothing out here but cold and dark. Lose 1 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(600,10,9,7);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(600,27,'A man is being thrown violently by an unseen force. If you help, lose 3 Stamina as you suffer the same fate. Even if you are knocked unconscious, the man, <b>David Packard</b>, remembers your bravery. Take his Ally card, or if it is not available, he offeres you something to "finish that thing off once and for all". You may search the Common Item deck for Dynamite and take it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(600,28,'A foreign gentleman is examining the farm. If you have any Exhibit Items or your Will is 2 or lower, he shows interest in your presence and introduces himself as <b>Dr. Ali Khafour</b>. Take his Ally card, or if it is not available, listen to him share his theories on ancient beliefs and gain 2 Clue tokens. If you do not have any Exhibit Items or your Will is more than 2, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(600,29,'A dark man chuckles as you approach. He gestures at you and vanishes. A gate and a monster appear!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(601,10,9,7);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(601,27,'A man wearing exotic robes and a strange hat tells you that he can see your fate. If you are <i>Cursed</i> or have any Exhibit Items, he tells you that he is called <b>The Messenger</b>. Take his Ally card, or if it is not available, gain 2 Clue tokens. If you are not <i>Cursed</i> and do not have any Exhibit Items, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(601,28,'A priest stands at the front door, hoping to offer spiritual help to those within. If you are <i>Cursed</i> or either your Stamina or Sanity is 2 or lower, he introduces himself as <b>Father Iwanicki</b>. Take his Ally card, or if it is not available, you may search the Unique Item deck for the Holy Water card and take it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(601,29,'An archaeology student is racing to finish her studies of the hill''s carved stones before sunset. Make a <span class="check">Speed (-1) check</span> to help. If you fail, she gives up. If you pass, she introduces herself as <b>Sarah Danforth</b>. Take her Ally card. If it''s not available, gain 1 Clue token instead.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(602,10,9,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(602,27,'Make a <span class="check">Luck (-2) check</span>. If you pass, you discover a strange stone statue deep within the glen. Its hands are outstretched, waiting for you to place something in them. If you discard a Unique Item worth at least $5, then skip the Mythos Phase this turn. If you fail the check, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(602,28,'Snooping around, you''ve set off a shotgun trap! Pass a <span class="check">Speed (-2) check</span> or lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(602,29,'You have disturbed something that should have been left alone. Pass a <span class="check">Luck (-1) check</span> or add 1 Dunwich Horror token to the board.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(603,10,9,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(603,27,'The terribe words of the King in Yellow have been echoing in your ears ever since you left Arkham. But here, the gentle sound of the river helps soothe your mind. Make a <span class="check">Will (-1) [2] check</span>. If you pass, you are <i>Blessed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(603,28,'If you pass a <span class="check">Luck (-1) check</span>, you discover some of Wizard Whateley''s notes and find a way to interfere with his plans. You may remove 1 Dunwich Horror token from the board.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(603,29,'You''ve been told someone disappeared on this hill recently. Make a <span class="check">Luck (-1) check</span>. If you pass, you fnd their knapsack; gain 1 Common Item. If you fail, you find the remains of the person, evidently the victim of an animal attack. Lose 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(604,10,9,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(604,27,'A police car is abandoned here. Make a <span class="check">Fight (-1) check</span> to pry open the trunk. If you pass, search the Common Item deck and take the first <i><b>Weapon</b></i> you find. If you fail, lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(604,28,'The barrel of a gun pokes out of a window aimed at you. "You got muh book?" You may discard a <i><b>Tome</b></i>. If you do, the unseen figure inside strikes up a conversation with you. Gain 3 Clue tokens. If you do not, you are ordered off the land. Move to the streets.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(604,29,'A dark man chuckles as you approach. He gestures at you and vanishes. A gate and a monster appear!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(605,10,9,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(605,27,'In the middle of the night, you are suddenly confronted by the spectre of someone wrongly killed, whose body was buried in a shallow grave near here. If you recover his remains and give him a proper burial you are <i>delayed</i> and <i>Blessed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(605,28,'A hot, sickly wind is blowing across the farmyard. You feel something seeping into your pores. Make a <span class="check">Will (+0) check</span>. If you fail, gain 1 Corruption card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(605,29,'You''ve stumbled upon the Cult of the Black Goat! You may join them if you wish. To do so, you must discard at least 2 toughness worth of monster trophies, lose 3 Stamina, or an Ally. Take a "One of the Thousand" Cult Membership card. If you cannot or choose not to join, pass a <span class="check">Speed (-2) check</span> or lose 2 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(606,10,9,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(606,27,'Make a <span class="check">Luck (-2) check</span>. If you pass, you discover a strange stone statue deep within the glen. Its hands are outstretched, waiting for you to place something in them. If you discard a Unique Item worth at least $5, then skip the Mythos Phase this turn. If you fail the check, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(606,28,'A gate and a monster appear!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(606,29,'You have disturbed something that should have been left alone. Pass a <span class="check">Luck (-1) check</span> or add 1 Dunwich Horror token to the board.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(607,10,9,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(607,27,'Your leg is suddenly caught in a bear trap. Lose 1 Stamina. If you are still conscious, make a <span class="check">Fight (-1) check</span> to free yourself. If you fail, you are <i>delayed</i>, waiting for someone to help you.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(607,28,'If you pass a <span class="check">Luck (-1) check</span>, you discover some of Wizard Whateley''s notes and find a way to interfere with his plans. You may remove 1 Dunwich Horror token from the board.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(607,29,'You''ve been told that if a person spends the night on Wizard''s Hill, he''ll see something so horrible he''ll die of fright. You don''t encounter anything like that, but when you accidentally doze off, you have terrible nightmares. Lose 1 Sanity. Then make a <span class="check">Will (-2) check</span> to remember the dreams. If you pass, gain 1 Spell.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(608,10,9,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(608,27,'In the night, you can hear something enormous high above you breaking through the branches of trees. Make a <span class="check">Will (-1) check</span>. If you fail, you make a mad dash for safety. Lose 1 Sanity and move to the streets.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(608,28,'You see a dog sniffing and digging at the ground beneath a particular tree. After a few minutes of excavation, you unearth the remains of some victim of a brutal attack. Lose 1 Stamina. But the contents of his wallet remain intact, providing both his name and some cash. Gain 1 Clue token and $1.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(608,29,'A dark man chuckes as you approach. He gestures at you and vanishes. A gate and a monster appear!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(609,10,9,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(609,27,'A bunch of kids are down here playing some game you''ve never seen before and repeating a little musical phrase that you suspect has a deeper meaning. Make a <span class="check">Lore (-2) check</span>. If you pass, you recognize what the children''s rhyme really means. Gain 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(609,28,'A folded note addressed to "Wilbur" pokes out from under the door. Having a look at it, you discover it is written in some sort of code. Make a <span class="check">Lore (-2) check</span> to decipher it. If you pass, gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(609,29,'The stone altar atop the hill seems as if it was recently cleaned. Much of the lichens and moss that used to be on it are gone, making it easier to interpret the prehistoric carvings. Make a <span class="check">Lore (-2) check</span>. If you pass, gain 2 Clue tokens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(610,10,9,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(610,27,'Make a <span class="check">Luck (-2) check</span>. If you pass, you discover a strange stone statue deep within the glen. Its hands are outstretched, waiting for you to place something in them. If you discard a Unique Item worth at least $5, then skip the Mythos Phase this turn. If you fail the check, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(610,28,'You see a light on inside the house! Make a <span class="check">Sneak (-1) check</span> to eavesdrop on what''s going on inside. If you pass, gain 1 Spell. If you fail, you race away before you are caught. Move to the streets.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(610,29,'You have disturbed something that should have been left alone. Pass a <span class="check">Luck (-1) check</span> or add 1 Dunwich Horror token to the board.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(611,10,9,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(611,27,'Several dead fish are floating in the river. Investigating, you find that it is sea water rather than fresh water. Make a <span class="check">Lore (-2) check</span> to try to find answers. Gain 1 Clue token for each success.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(611,28,'If you pass a <span class="check">Luck (-1) check</span>, you discover some of Wizard Whateley''s notes and find a way to interfere with his plans. You may remove 1 Dunwich Horror token from the board.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(611,29,'You find a hatch that descends into the side of the hill. If you choose to explore it, make a <span class="check">Luck (+0) check</span>. If you pass, you find a thin vein of gold in the wall of the cavern. Gain $3. If you fail, you tumble down an incline in the dark. Take an Injury card.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(612,11,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(612,30,'Make a <span class="check">Luck (-2) check</span>. If you pass, you find someone''s rail pass on the ground near the bridge. Gain 1 Rail Pass. If you fail, you find $1 instead.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(612,31,'<i>"Oddities of nature and unspeakably bizarre creatures await inside! Not for the faint of heart!"</i> Among the stuffed two-headed calves and exotic birds in the tent of scientific curios, you find the carcass of something truly unnerving. Make a <span class="check">Sneak (-2) check</span> to steal the thing. If you pass, claim 1 monster trophy at random from the cup, ignoring the <b>Endless</b> ability. If you fail, move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(612,32,'You loiter around Osborn''s General Store for a while, but the locals concentrate on their game of checkers, giving you the silent treatment. No encounter.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(613,11,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(613,30,'A car looks to have driven off the side of the bridge. You find no sign of a driver or any passengers but the doors seem to have been bent open unnaturally. Make a <span class="check">Luck (-2) check</span>. If you pass, the water has not yet washed away a package in the passenger seat. Gain 1 Unique Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(613,31,'The delighted squeal of children''s laughter helps to take your mind off all of the darkness that has occupied it for so long. Gain 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(613,32,'Joe Osborn greets you as you enter his General Store, but lets you look about the shop in peace. You notice a stack of mail meant to be delivered to Dunwich''s inhabitants. You may make a <span class="check">Sneak (-1) check</span> to look through some of the letters. If you pass, gain 1 Clue token. If you fail, Joe doesn''t take kindly to snooping and you must move to the streets.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(614,11,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(614,30,'Local children are fishing along the edge of the bridge. They challenge you to see who can catch the biggest fish. If you accept the challenge, make a <span class="check">Luck (-1) check</span>. If you pass, they are so impressed they offer you a secret treasure they''ve hidden in the marsh. Gain 1 Unique Item. If you fail, you are <i>delayed</i> as you don''t catch a single fish.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(614,31,'A man dressed as a ringmaster approaches you and introduces himself as Darke. <i>"Would you like to see some magic?"</i> He shows you a few card and coin tricks and then offers to teach you a better trick. Make a <span class="check">Lore (-1) check</span>. If you pass, gain 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(614,32,'A horse-drawn cart filled with supplies has pulled up outside of the General Store. If you agree to help Joe Osborn unload the cart, stay here next turn and gain $3.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(615,11,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(615,30,'Through the mist, you see a misshapen silhouette lumbering across the bridge. It drops a peculiar artifact as it crosses. Rushing to investigate, the two of you struggle over the dropped object. Make a <span class="check">Fight (-1) check</span>. If you pass, gain 1 Unique Item. If you fail, the figure wrests the object from your grip before disappearing into the night.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(615,31,'A group of young local men standing by the shooting gallery challenge you to a contest to see who''s the best shot. If you accept the challenge, pay $2 and then make a <span class="check">Fight (+0) check</span>. For each success, gain $1.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(615,32,'At night, no one wanders outside of their homes and you can hear strange, unnatural animal sounds echo across the village. Make a <span class="check">Will (+0) check</span>. If you fail, lose 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(616,11,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(616,30,'An older man named George Corey sees you examining the bridge''s dubious construction. "It could use some repairs. The neighbors would be grateful!" You may stay here next turn repairing it to gain $3.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(616,31,'<i>"You know anything about machines?"</i> A carny, covered in grease and sweat, is working on the carousel engine. Make a <span class="check">Lore (-1) check</span>. If you pass, gain $2. If you fail, the frustrated carny kicks you out. Move to the streets.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(616,32,'Inside the General Store, Joe Osborn takes an interest in the objects you''ve collected. If you currently have a <i><b>Tome</b></i>, he tells you there''s a man in town who would be interested in it. Gain 3 Clue tokens as he tells you all about Wilbur Whateley. If you do not have a <i><b>Tome</b></i>, gain 1 Clue token from the conversation.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(617,11,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(617,30,'The Sheldon Gang is looking for new recruits. If you want to prove how tough you are, spend either at least 5 toughness worth of monster trophies or 1 gate trophy. If you spend the trophies, take a Sheldon Gang Membership card. If not, they rough you up and tell you to hit the road. Move to the street and lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(617,31,'<i>"Three rings for just $1. Toss the ring onto a peg and win a prize!"</i> You may pay $1 to roll 3 dice. If you roll at least 1 success, you win a large stuffed toy and gain 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(617,32,'A man introduces himself as Tucker Jones and asks after your health. If you currently have 2 or less Stamina, he offers to help. Gain 2 Stamina. Otherwise, he talks to you about local history and you gain 1 Clue token.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(618,11,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(618,30,'Tree branches and shrubs have all been flaattened in this area and you find evidence of butchered livestock. Lose 1 Sanity. Then make a <span class="check">Will (+1) check</span> and add 1 Dunwich Horror token to the board if you fail.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(618,31,'Darke is interested to hear of your stories and particularly of the artifacts you have collected. If the <b>Darke''s Blessing</b> card is facedown, you may spend 2 gate trophies or 10 toughness in monster trophies to turn the <b>Darke''s Blessing</b> card faceup. If the card is already faceup or you do not spend the necessary trophies, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(618,32,'Squire Whateley has been robbed and you''re under suspicioun. Make a <span class="check">Lore (-1) check</span> to establish your innocence. If you fail, you are <i>arrested</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(619,11,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(619,30,'Three men claiming to be professors at Miskatonic University inquire if you know the way to Sentinel Hill. Grateful for the assistance, they give you $1.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(619,31,'Deputy Dingby has been called out to investigate allegations that the games at the carnival are rigged. Make a <span class="check">Sneak (-2) check</span> to convince him that they are all legitimate. If you pass, the carnies gratefully pass you $3.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(619,32,'Joe Osborn tells you he''s been having a hard time getting supplies in lately. He''d be willing to pay well if you''ve got anything extra. You may discard one Common or Unique Item with a list price of $2 or more and gain an amount of money equal to $1 above the list price.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(620,11,9,7);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(620,30,'Posted to a tree trunk is a poster with your picture on it in relation to a crime you know nothing about. Take the Wanted card, if it is available.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(620,31,'Darke calls you over to a game in which small mechanical horses race against each other. <i>"You seem down on your luck. Try this. I think your fortune''s about to change."</i> You may choose to sit and play the game until you win, if you wish. If you do, pay $6, but after your horse wins you are <i>Blessed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(620,32,'You loiter around Osborn''s General Store for a while, but the locals concentrate on their game of checkers, giving you the silent treatment. No encounter.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(621,11,9,7);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(621,30,'The water lilies are in bloom on the river. The picturesque beauty moves you. Gain 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(621,31,'You accidentally bump into one of the performers in the freak show and knock him to the ground. Make a <span class="check">Luck (-1) check</span>. If you pass, your apology is accepted and no harm is done. If not, he takes it as a personal attack and warns you that you''ll never have a moment''s peace again. Take the Harried card, if it''s available. If it isn''t, lose 1 Sanity instead.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(621,32,'Joe Osborn calls you over to ask a favor. "These gentlemen are from Miskatonic University. They''re looking for a tour of the area, and they won''t take no for an answer." At least they''re willing to pay. Gain $3 and take the Local Guide card if it is available. If it is not available, you do not gain the money.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(622,11,9,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(622,30,'Make a <span class="check">Luck (-2) check</span>. If you pass, you find someone''s rail pass on the ground near the bridge. Gain 1 Rail Pass. If you fail, you find $1 instead.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(622,31,'The lights and sounds are affecting your senses. Everywhere you look, the carnival workers and patrons alike seem to be wearing grotesque clown makeup and laughing madly at you. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(622,32,'In the middle of the night, someone painted a Yellow Sign on the side of Joe Osborn''s General Store. Joe will pay you if you can clean it off. Make a <span class="check">Fight (-1) check</span>. If you pass, gain $2.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(623,11,9,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(623,30,'The water in the river is unusually low this time of year. You can see an object buried in the sediment that''s usually beneath the surface. Make a <span class="check">Luck (-2) check</span>. If you pass, gain 1 Unique Item. If you fail, gain 1 Common Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(623,31,'A small child has gotten separated from his mother. If you wish to help, you are <i>delayed</i> as you search for the woman. If you do so, her heartfelt relief and gratitude makes you feel better about the world and you regain 2 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(623,32,'When you sit down at the checked board, a clearly disturbed stranger sits down opposite you. As you play, he begins telling you about the play he saw, "The King In Yellow". Make a <span class="check">Will (+0) check</span> to maintain your sanity. If you fail, gain a Madness card.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(624,11,9,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(624,30,'From here you can see strange clouds circling around the top of Sentinel Hill. Starting with the first player, and proceeding clockwise, each player with 1 or more Corruption cards must choose 1 of his Corruption cards and trigger its effect as if the appropriate dimensional symbol had appeared on the appropriate background color during the Mythos Phase.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(624,31,'The carnival is gone, with no hint that it had ever been here. No encounter.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(624,32,'You loiter around Osborn''s General Store for a while, but the locals concentrate on their game of checkers, giving you the silent treatment. No encounter.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(625,11,9,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(625,30,'The river''s washed out the bridge. Move to the streets.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(625,31,'You see an apparently confused old man, asking strangers if they''ve seen his mommy and daddy. To help him, you find the proprietor. Mr. Darke tells you that he''ll take care of it and then asks the elderly man if he''s learned his lesson about little boys sneaking where they''re not suppoesd to go. Lose 1 Sanity and gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(625,32,'Several people have complained of farm animals disappearing in the night. They''re suspicious and angry, and they don''t steem like they''re going to let you go. You are <i>delayed</i>. However, if you are a member of the "One of the Thousand" Cult, you use this time to steal some farm animals and perform informative rites, gaining 2 Clue tokens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(626,11,9,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(626,30,'Make a <span class="check">Luck (-2) check</span>. If you pass, you find someone''s rail pass on the ground near the bridge. Gain 1 Rail Pass card. If you fail, you find $1 instead.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(626,31,'The threat of bad weather has kept most people at home. With the crowds so small, you''re offered a discount on tickets and never need to wait in line. Spend $3 for an entire day at the carnival. If you do, gain 2 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(626,32,'Joe Osborn offers to sell you a slightly used ledger. The first few pages are filled with accounting information. The last dozen pages are filled with strange notes regarding experiments into the world of magic. You may pay $4 to gain 1 Spell.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(627,11,9,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(627,30,'A large branch is floating slowly downstream. You can see some object caught in its limbs. If you wish, you may make a <span class="check">Speed (-1) check</span> to grab the object as it passes the bridge. If you pass, gain a Unique Item. If you fail, you fall into the water and lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(627,31,'The carnival is frequently plagued by pickpockets. You must discard all of your money to a maximum of $3.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(627,32,'Joe Osborn sees that one of your possessions is in dire need of repair. He says he has a brand new replacement if you''d like. Choose 1 of your Common or Unique Items. You must either discard that item or spend an amount of money equal to its list price. If you do not have any Common or Unique Items, nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(628,11,9,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(628,30,'A tremendous wind storm struck last night and all kinds of debris has blown here from Sentinel Hill. You may stay here next turn to search through it. If you do, make a <span class="check">Luck (-1) check</span>. If you pass, gain 1 Unique Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(628,31,'<i>"Interested in earning a little extra cash?"</i> Mr. Darke asks you if you''d be willing to put up posters for his Carnival in other towns. If you agree, take a Retainer card and move immediately to the Train Station or any depot location aside from Bishop''s Brook Bridge. (Do not have an encounter in the new location.)');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(628,32,'You loiter around Osborn''s General Store for a while, but the locals concentrate on their game of checkers, giving you the silent treatment. No encounter.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(629,11,9,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(629,30,'One of the bags unloaded from the train into Dunwich doesn''t seem to have anyone claiming it. You may make a <span class="check">Sneak (-1) check</span> to discreetly open it up and see what''s inside. If you fail, you are spotted and <i>arrested</i> for attempted theft.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(629,31,'A stage magician is being heckled by someone who doesn''t believe in magic. If you have at least 1 Spell, you may make a <span class="check">Lore (-1) check</span> to prove him wrong. If you pass the check, the stage magician gratefully offers you a strange curio after his show. Gain 1 Unique Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(629,32,'Joe Osborn is hoping to find someone who can explain to him the strange events taking place on Sentinel Hill. If you have 3 or more Clue tokens, Joe buys you a meal. Restore your Stamina to full. If you have 2 or fewer Clue tokens, nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(630,11,9,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(630,30,'Make a <span class="check">Luck (-2) check</span>. If you pass, you find someone''s rail pass on the ground near the bridge. Gain 1 Rail Pass card. If you fail, you find $1 instead.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(630,31,'<i>"Sample this incredible miracle tonic, you''ll be completely revitalized!"</i> You may pay $1 to try a sample. If you do, make a <span class="check">Luck (-1) check</span> and consult the table below:<br /><br />Successes:<br /><table><tr><td class="nowrap">0)</td><td>Lose 1 Stamina.</td></tr><tr><td class="nowrap">1)</td><td>Gain 1 Stamina.</td></tr><tr><td class="nowrap">2+)</td><td>Gain 1 Stamina and you are <i>Blessed</i>.</td></tr></table>');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(630,32,'Joe Osborn shows a letter to you. "This was supposed to go with today''s mail. It''s awful important. Can you take this to Innsmouth?" If you agree to help, move immediately to Joe Sargent''s Bus Service and gain $3.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(631,11,9,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(631,30,'"You lookin'' fer Wilbur? I seen him here. On his way to Sentinel Hill." A local farmer sees you examining the bridge. Make a <span class="check">Lore (-2) check</span> to learn what you can from the man. Gain 1 Clue token for each success.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(631,31,'A hypnotist selects you to be the volunteer for his show. He quickly puts you into a trance. When you awaken, the audience is laughing uproariously, but you don''t care. Your mind feels much more calm. Gain 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(631,32,'The residents of Dunwich have gathered in a large barn for a dance. They insist you join them. Make a <span class="check">Speed (-2) check</span> to keep up with the fiddle playing. Gain 1 Sanity for each success.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(632,16,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(632,42,'One of the fishermen has had too much to drink and is muttering to himself about monsters in the water. If you spend the time to take care of him, you are <i>delayed</i>. If you do so, he tells you more and more of his experiences on the sea. Make a <span class="check">Lore (-1) check</span> and gain 1 Clue token for each success.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(632,43,'The wind here is strong enough to pick you up and throw you out to sea. Make a <span class="check">Fight (-1) check</span> to keep yourself on the ground. If you fail, lose 1 Stamina, move to Y''ha-nthlei, and have an encounter there.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(632,44,'Two of the creatures walk past you carrying a large chest. Make a <span class="check">Sneak (-2) check</span>. If you pass, you follow them and discover where they leave it. Gain 1 Unique Item from inside the chest once the creatures leave. If you fail, lose 1 Stamina as they roughly toss you aside.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(633,16,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(633,42,'A few shady figures are hanging out around Falcon Point at night. Pass a <span class="check">Fight (-1) check</span> or lose all of your money. If you fail the check and have no money, choose 1 item to discard instead.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(633,43,'You find the wrecked remains of a small rowboat. You can see wide claw marks and large fish scales throughout the debris. Gain 1 Clue token and lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(633,44,'You discover a chamber filled with scrolls, ancient tomes, and engraved stonework. Make a <span class="check">Luck (-2) check</span>. If you pass, you stumble upon useful ancient knowledge; you may draw 2 Spells, choose one to keep and discard the other. If you fail, you stumble upon a terrible ancient evil. You are <i>Cursed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(634,16,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(634,42,'You see the debris of some wrecked boat floating in the water. Make a <span class="check">Luck (-2) check</span>. If you pass, you spot something useful amid the splintered wood and torn canvas. Gain 1 Common Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(634,43,'The waves crashing against the reef are enormous. Make a <span class="check">Fight (-1) check</span> to keep from being crushed by them. If you fail, lose 1 Stamina and choose 1 item to discard.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(634,44,'You''ve been down here so long you fear you''re losing your sense of reality and your sense of self. You must either lose 2 Sanity or draw 1 Innsmouth Look card.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(635,16,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(635,42,'The fishermen prove to be friendly and raucous. Gain 2 Sanity but lose 1 Stamina as they keep you awake all night with their songs and stories.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(635,43,'You spend the entire night out on the reef shivering but unharmed. Nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(635,44,'A tall tower seems to stretch up forever. A cool breeze from above makes you think it might lead back to the surface, but the stairs up are coated in slime. Make a <span class="check">Will (-2) check</span> to carefully make the long climb. If you pass, there''s a boat not far from where you reach the surface. Move to any aquatic location and have an encounter there. If you fail, you slip and lose 2 Stamina as you fall down the steps.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(636,16,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(636,42,'People have been disappearing off the coast. If you have 3 or more Clue tokens, you''re fairly certain you can explain what''s going on, and the fishermen are willing to help however they can. You may move to any aquatic location. If you do, immediately have an encounter there.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(636,43,'You find the body of someone who was left handcuffed on the reef. Make a <span class="check">Will (-2) check</span>. If you pass, you discover the man was still clutching something in his hands. Gain 1 Unique Item. If you fail, lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(636,44,'Several of the fish creatures are trying to chase you toward a pool of strange dark water. Make a <span class="check">Speed (-1) check</span> to prevent yourself from being forced into the pool. If you fail, move to the first area of R''lyeh and you are <i>delayed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(637,16,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(637,42,'One of the fishermen tells you it''s a dangerous business you''ve gotten mixed up in and he offers to sell you something to help. You may spend $3 to search the Common Item deck and take the first <i><b>Weapon</b></i> you find.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(637,43,'As far as the eye can see in any direction, the water is churning with large fish-like creatures. Make a <span class="check">Will (+0) [2] check</span> to resist a state of pure panic. If you fail, lose 2 Sanity. If you pass, gain 2 Clue tokens as you watch them head out to sea.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(637,44,'You find precious golden jewelry, far more than you could carry. You may stop to collect some. If you do, make a <span class="check">Fight (+1) check</span> and gain $1 for each success. You are <i>delayed</i> as you gather up all the food.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(638,16,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(638,42,'A group of fishermen are staring at the water looking worried. "Not safe to be on Falcon Point tonight." Move to the streets.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(638,43,'You can hear the engine of a boat passing. You shout to attract their attention. Make a <span class="check">Luck (-2) check</span>. If you pass, you are rescued by federal agents. You may spend 1 Clue token to place it on any space on the Feds Raid Innsmouth track. Then move to Falcon Point and immediately have an encounter there. If you fail, lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(638,44,'A pool in one of the rooms reveals many figures swimming beneath the floor you are standing on. You then see the shadow of something very large swim past. Make a <span class="check">Will (-1) check</span>. If you fail, lose 2 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(639,16,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(639,42,'You see the constables leading someone whose face is covered with a black bag down to the water. While they''re preparing their boat, you may make a <span class="check">Sneak (-1) check</span> to release their prisoner. If you pass, gain 2 Sanity. If you fail, you are <i>arrested</i> and taken to the Innsmouth Jail.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(639,43,'"You look a might lost!" A fisherman has found you. If you are willing to spend $3 or discard an item in exchange, he''s willing to offer you passage off this rock. If you accept the offer, move to any aquatic location and have an encounter there.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(639,44,'Strangely, you feel you know exactly how to navigate the twisting caverns to find the object you are seeking. Gain 1 Unique Item and draw 1 Innsmouth Look card.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(640,16,9,7);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(640,42,'A message in a bottle from someone trapped on Devil Reef washes up on shore. Gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(640,43,'A well-dressed man is standing on the reef gazing out to sea. He tells you that he''s heard there''s something miraculous under the surface. If you give him 2 of your Spells (discarding them), he introduces himself as <b>Eric Weiss</b>; take his Ally card if it''s available. If it''s not available, he shows you a trick instead and you gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(640,44,'In a large round room with a glass ceiling, you are startled to discover an elderly man wearing exotic robes. He tells you that the gods have decreed that he should meet you in this strange place. If you are <i>Cursed</i> or have any <i><b>Mask</b></i> items, he tells you that is called <b>The Messenger</b> and is meant to aid you. Take his Ally card, or if it is not available, gain 2 Clue tokens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(641,16,9,7);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(641,42,'A pile of rocks seem too neatly stacked, as if done so by a human. Make a <span class="check">Fight (-2) check</span>. If you pass you manage to unbury a hidden collection of strange golden jewels. Gain $3.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(641,43,'A fashionably-dressed woman tells you that the boat she hired has left her here, but it''s worth it for the adventure. She introduces herself as <b>Erica Carlyle</b> and seems intrigued by your tales of mystery. If you have $3 or less, she agrees to join you and help pay your way. Take her Ally card, or if it is not available, gain a Retainer card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(641,44,'You are overcome with a sense of fate, knowing that it was your destiny to be in this strange place. Make a <span class="check">Will (-1) check</span>. If you pass, you realize that you will play a special role in saving the world. You may take the Anointed card if it is available. If you fail, you fear that you are doomed to die here. Lose 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(642,16,9,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(642,42,'A particularly old sailor takes great delight in teaching you old seafaring superstitions. Make a <span class="check">Luck (-2) check</span>. If you pass, one of his tricks is much more effective than you would have imagined. Gain 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(642,43,'You are convinced you can see glints of gold beneath the water''s surface. You feel compelled to dive in after it. Make a <span class="check">Will (-1) check</span> to recognize this as a hallucination. If you fail, lose 1 Sanity, move to Y''ha-nthlei, and have an encounter there.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(642,44,'You try to recall every scrap of information you learned about this place to prevent these creatures from running rampant. If you have 2 or fewer Clue tokens, add 1 Uprising token to the Deep Ones Rising track.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(643,16,9,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(643,42,'A federal agent is questioning people down by the shore. Frustrated, he tells you that he needs some solid proof before he can do anything. You may discard 5 toughness worth of monster trophies or a gate trophy. If you do, gain 2 Clue tokens that you must spend to place on any 2 spaces of the Feds Raid Innsmouth track.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(643,43,'You hear a distant chanting being carried on the wind. The words are strange and the voices are inhuman. Make a <span class="check">Lore (-2) check</span>. If you pass, you are able to find a meaning in the words. Gain 1 Spell. If you fail, the sound chills you to your bones. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(643,44,'You inadvertently fall into one of the pools of water. Make a <span class="check">Speed (-1) check</span> to get out before you are swarmed by Deep Ones. If you fail, lose 2 Stamina before you pull yourself back into the air.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(644,16,9,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(644,42,'Several strangely-shaped footprints lead from the waterline into Innsmouth. Gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(644,43,'You see a small boat carrying a few fishermen approaching the reef. In the water, you see dark silhouettes swimming quickly toward the boat. Make a <span class="check">Speed (-2) check</span> to warn the men in time. If you pass, they manage to escape back towards Innsmouth. Gain 1 Sanity. If you fail, lose 1 Sanity as you see the men pulled into the sea.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(644,44,'You step out onto a balcony overlooking thousands of these fish creatures, all chanting and bowing before an image of Dagon. Make a <span class="check">Will (-2) check</span>. If you fail, lose 2 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(645,16,9,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(645,42,'Sailors from all over the world are at Falcon Point tonight. The many different languages are difficult to interpret but the wide variety of stories provides much information. Make a <span class="check">Lore (-1) [2] check</span>. If you pass, gain 4 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(645,43,'After a long and terrifying night, the sunrise is a welcome sight. Gain 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(645,44,'Representatives from the Cult of the Black Goat are here to learn more of the Deep Ones! You may join the cult if you wish. To do so, you must discard at least 2 toughness worth of monster trophies, lose 3 Stamina, or discard an Ally. Take a "One of the Thousand" Cult Membership card. If you cannot or choose not to join, pass a <span class="check">Speed (-2) check</span> or lose 2 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(646,16,9,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(646,42,'A boat is about to set out with a number of people trying to get out of Innsmouth. The sailors insist their passengers are carrying too much cargo. In a panic, the passengers try to sell it quickly for a discount. Draw 2 Common Items. You may purchase 1 for $1 less than its list price. Discard any items not purchased.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(646,43,'A boat approaches, but the sailors don''t want to risk being smashed onto the reef by the waves. They shout at you to swim to them. If you do, make a <span class="check">Fight (-2) check</span>. If you pass, move to Falcon Point and have an encounter there. If you fail, lose 1 Stamina swimming back to the reef.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(646,44,'The writing etched into the wall is looking more and more familiar. Gain 1 Spell and draw 1 Innsmouth Look card.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(647,16,9,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(647,42,'Wading out into the water, your feet feel something metallic beneath them. You discover a handful of gold coins. Gain $2. Then make a <span class="check">Luck (+0) check</span>. If you fail, you are <i>Cursed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(647,43,'An engraved golden disk is wedged among the black rocks. Make a <span class="check">Lore (-1) check</span> to recognize the runes carved into it. If you pass, you leave it alone and don''t touch it. If you fail, the moment your hand touches it, a bolt of energy paralyzes you and you fall into the water. Lose 1 Sanity, move to Y''ha-nthlei, and immediately have an encounter there.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(647,44,'You see a large painting that you recognize as a map of the ocean floor. You can identify the city of Y''ha-nthlei on the map and see several other similar cities represented as well. Make a <span class="check">Lore (-2) check</span> and gain 1 Clue token for each success. If you get no successes, lose 2 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(648,16,9,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(648,42,'You don''t know where that boat is going, but you have an opportunity to jump aboard. Make a <span class="check">Sneak (+0) check</span>. If you pass, move to the North Point Lighthouse and have an encounter there.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(648,43,'You find an old bit of rope leading from the reef to somewhere under the water. Pulling at it, you can tell something heavy is on the other side. Make a <span class="check">Luck (-2) check</span>. If you pass, you eventually pull up an object wrapped in oiled canvas. Gain a Unique Item. If you fail, the rope breaks and whatever it was attached to sinks.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(648,44,'The Deep Ones are everywhere! Make a <span class="check">Fight (-1) check</span> to barricade the hallway. If you fail, lose 2 Stamina struggling to escape the creatures.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(649,16,9,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(649,42,'A bunch of fishermen risked a trip out to Devil Reef and have caught more fish than they would have imagined. If you wish to help them unload their catch from the boat, you are <i>delayed</i>. But as you help them, you find they''ve caught something more than fish. Gain 1 Unique Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(649,43,'You fear you won''t survive the night if you can''t start a fire, but you''ll need to burn something. If you discard a item, gain 1 Sanity from the warmth. If you don''t, lose 1 Stamina from the cold.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(649,44,'Amid skeletons and tattered clothing, you find the logs of several ships from over the last 200 years. If you wish to consult them you are <i>delayed</i>, but if you do, gain 3 Clue tokens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(650,16,9,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(650,42,'The sailors warned you not to ask too many questions. Make a <span class="check">Will (+0) check</span> and gain 1 Clue token for each success. If you gained 3 or more Clue tokens, add one Uprising token to the Deep Ones Rising track.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(650,43,'Sharp claws dig into your skin and pull you down into the water. Make a <span class="check">Fight (+1) [2] check</span> to free yourself. If you pass, you make it back to the reef safe and sound. If you fail, you suffered grievous harm in the process. Draw an Injury card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(650,44,'Your foot slips on one of the damp ledges and you go tumbling down a steep incline. Make a <span class="check">Luck (-1) check</span>. If you pass, you end up landing right next to a rare and powerful artifact. Search the Unique Item deck and take the first <i><b>Weapon</b></i> you find. If you fail, you land on a bunch of rocks. Lose 2 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(651,16,9,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(651,42,'Something about the water here terrifies you in a completely irrational way. If you have a Madness card or if your Sanity is currently 2 or less, move to the streets.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(651,43,'Several shuffling figures crawl out of the water near you. Make a <span class="check">Sneak (-1) check</span> to avoid their notice. If you fail, they spot you and drag you beneath the waves. Lose 1 Stamina, move to Y''ha-nthlei, and have an encounter there.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(651,44,'You find a statue of Dagon, as large as a house, covered in strange writing. You fear that just being in its presence is dangerous. Make a <span class="check">Lore (-2) check</span> as you look at the writing. Gain 1 Clue token for each success. If you gained 3 or more Clue tokens, you are <i>Cursed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(652,14,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(652,36,'Several shelves have had their contents dumped to the floor. Brian Burnham apologizes for the mess. If you help clean it up you are <i>delayed</i>, but gain 1 Stamina as Brian pays for your lunch.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(652,37,'Something about the smell of this hotel is both distasteful and yet, somehow familiar. Draw 1 Innsmouth Look card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(652,38,'You see flashlights in the darkness. The constables are here looking for you! Make a <span class="check">Speed (-1) check</span> to elude them. If you fail, you are <i>arrested</i> and taken to the Innsmouth Jail.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(653,14,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(653,36,'A salesman is visiting the shop, hoping to convince the owner to start carrying his wares. He offers to five you a sample of his product. Draw a Common Item. If you draw any <i><b>Tomes</b></i> or <i><b>Weapons</b></i>, discard them and keep drawing. When you draw a card that is neither a <i><b>Tome</b></i> or <i><b>Weapon</b></i>, gain that Common Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(653,37,'You slept more soundly than you anticipated and wake up suddenly as you are being lifted out of your bed. Make a <span class="check">Fight (+0) check</span> to wrestle free from your captors. If you fail, immediately move to Devil Reef and have an encounter there.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(653,38,'A monster appears!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(654,14,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(654,36,'Once you get him started, Brian Burnham can talk for a while. Listening to him, you gain 2 Clue tokens, but you are <i>delayed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(654,37,'Looking out the window, the water looks beautiful and luminous, while the land looks gray and drab. Draw 1 Innsmouth Look card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(654,38,'Workers load some of the gold bars into a closet and then lock them inside. Once the coast is clear, you may make a <span class="check">Fight (-1) check</span> to break the lock. If you pass, gain $2. If you fail, you must quickly escape out to the streets.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(655,14,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(655,36,'The grocery is closed for the night. Move to the streets.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(655,37,'Walking down the hill to your room, you hear a banging from the other side of a door that is bolted shut. Opening the door, you discover a terrified man who can''t stop trembling. Make a <span class="check">Will (-2) check</span> to calm him down. If you pass, gain 1 Sanity as you assure him that he''s safe now.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(655,38,'One of the workers falls backwards into the molten metal. His screams and the foul burning smell are horrifying. Lose 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(656,14,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(656,36,'Something in the grocery must be rotting because the smell in here is terrible. You must either move to the streets or lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(656,37,'Joe Sargent is waiting here before returning to his bus. If you buy him a little lunch he''ll happily tell you what he knows about Innsmouth. You may spend $2 to gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(656,38,'A couple workers are walking with a half-hopping gait to the back of the building. One of them stumbles and drops a large canvas bag, spilling several strange objects on the ground. He tries to gather them back up quickly, but may have missed something. Pass a <span class="check">Luck (-2) check</span>. For each success, you may draw 1 Unique Item. Choose 1 to keep and discard the rest.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(657,14,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(657,36,'Digging through the trash, Brian Burnham finds a scrap of paper on which to draw a map of Innsmouth. Make a <span class="check">Luck (-2) check</span>. If you pass, there''s something interesting on the other side of the paper. Gain 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(657,37,'Joe Sargent is wondering if you know anything about repairing bus engines. Make a <span class="check">Lore (-2) check</span>. If you pass, you can tell the problem just by his description. Joe says he doesn''t really have any money to pay you, but offers one of his few possessions. Gain 1 Common Item card. If you fail, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(657,38,'One of the workers catches sight of you. He looks concerned for a monent, then just waves at you. Draw 1 Innsmouth Look card.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(658,14,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(658,36,'You are familiar with the families of Innsmouth. The grocery''s manager, young Brian Burnham, grows worried and promises to call the authorities. If you currently have 3 or more Clue tokens, gain 1 Clue token that you must immediately spend to place on any space of the Feds Raid Innsmouth track.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(658,37,'A suitcase that doesn''t belong to you is underneath your bed. Make a <span class="check">Luck (-1) check</span>. If you pass, gain 1 Unique Item. If you fail, the case is filled with old, blood-stained clothes. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(658,38,'A monster appears!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(659,14,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(659,36,'A local man is trying to pick up his sack of groceries but his malformed hands are unable to pick it up. Lose 1 Sanity as you hand the sack to him and look into his large, unblinking eyes.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(659,37,'In the middle of the night, there are too many heavy footsteps and scraping noises to sleep. Make a <span class="check">Will (-1) check</span> to see if you can doze off. If you fail, you need to get some night air to relax. Move to the streets.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(659,38,'While the workers are in the factory, you''re able to look through their lockers. Make a <span class="check">Sneak (-2) check</span> and gain 1 Clue token for each success.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(660,14,9,7);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(660,36,'You can tell the man asking questions inside the grocery is clearly from out of town. Make a <span class="check">Will (-2) check</span> to convince him to trust you. If you pass, you may take the Private Investigator card if it is available.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(660,37,'You wake in the night hearing inhuman sounds getting closer. Make a <span class="check">Luck (-1) check</span>. If you pass, the sounds grow more distant and nothing happens. If you fail, you escape out the window. Move to the streets and take the Harried card if it is available.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(660,38,'Some Innsmouth locals have cornered a man. If you decide to defend him, lose 3 Stamina. Even if you are knocked unconscious, the man, <b>David Packard</b>, is impressed by your brave act and offers you his help. Take his Ally card, or if it is not available, he gives you something "for protection". You may search the Common Item deck for the Dynamite card and take it.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(661,14,9,7);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(661,36,'A rock is thrown through one of the windows. The manager, Brian Burnham, is very upset. Make a <span class="check">Will (-2) check</span> to calm him down enough to explain who would do it and why. If you pass, gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(661,37,'During the night, you have a dream of the Dark Pharaoh in ancient Egypt. You learn much by observing him. Gain 1 Spell and then make a <span class="check">Will (+1) check</span>. If you fail, reduce your maximum Sanity by 1.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(661,38,'You see a young woman sneak out a window. Make a <span class="check">Speed (-1) check</span>. If you fail, she''s disappeared into the night. If you pass, you catch up to <b>Sarah Danforth</b>, an archaeology student from Miskatonic. She tells you that important archaeological finds are being melted down for hold inside that refinery. Take her Ally card. If is not available, gain 1 Clue token insteads as she tells you everything she discovered in the refinery''s files.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(662,14,9,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(662,36,'Brian Burnham calls you over to a corner of the grocery and tells you they got some special items for sale today. Draw 2 Common Items. You may purchase 1 for $1 more than its list price or both for $1 more than their combined list price. Discard any items that are not purchased.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(662,37,'You must have been sleepwalking! Move to Falcon Point and immediately have an encounter there.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(662,38,'An important piece of machinery has broken down and the workers are rushing to get it fixed. In the ensuing confusion, you''re able to examine the refinery''s ledgers. Make a <span class="check">Lore (-1) check</span>. If you pass, gain 1 Clue token.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(663,14,9,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(663,36,'The front door is open but you don''t find anyone inside. There''s no money in the register and much of the inventory is gone. A little food still remains. Gain 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(663,37,'You see Joe Sargent facing the shoreline, muttering something to himself. Make a <span class="check">Sneak (-2) check</span> to listen to the strange language and gain 1 Clue token for each success.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(663,38,'You''ve snuck into the refinery, but now there are workers everywhere. Make a <span class="check">Will (-1) check</span> to remain calm and stay where you are. If you fail, you are <i>arrested</i> when you try to leave and taken to Innsmouth Jail.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(664,14,9,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(664,36,'As you look over the various products for sale in the grocery, you begin to notice occult symbolism in the companies'' logos. Make a <span class="check">Lore (-2) check</span>. If you pass, gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(664,37,'Looking in a mirror, you can see that being in Innsmouth is changing you. You may gain up to 2 Corruption cards. Then draw 2 Innsmouth Look cards. Reduce the number of Innsmouth Look cards you draw by 1 for each Corruption card you now have (to a minimum of 0).');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(664,38,'One of the workers sneaks over to you and offers you gold in exchange for an item of yours. You may discard 1 Unique Item to gain $4.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(665,14,9,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(665,36,'If you have one or more Corruption cards, your presence clearly unnerves Brian Burnham. He insists you help yourself to whatever groceries you want and leave. Gain 1 Stamina, but lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(665,37,'You discover Joe Sargent wiping blood off his hands. He tells you he hit something on the way here that got stuck on the front of the bus. Make a <span class="check">Luck (-2) check</span>. If you pass, you may choose 1 monster token in the Outskirts to return to the monster cup.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(665,38,'A priest from the Esoteric Order of Dagon is here, blessing the equipment and the workers. He doesn''t realize you''re in the room as well. You are <i>Blessed</i> but gain 1 Corruption card.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(666,14,9,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(666,36,'Brian Burnham apologizes about how many things are out of stock and guarantees you that if you wait just a little but, a shipment is expected soon. You may choose to be <i>delayed</i>. If you do, gain 2 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(666,37,'From your window, you spend the day watching the people of Innsmouth going about their business. Make a <span class="check">Lore (-1) check</span>. If you pass, you quickly notice some odd behaviors. Gain 2 Clue tokens. If you fail, you are <i>delayed</i> as you spend all day watching, without noticing anything.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(666,38,'You hide yourself in a storage shed. Among the shelves are all kinds of strange items. Make a <span class="check">Luck (-1) check</span>. If you pass, you find something useful. Gain 1 Common Item. If you fail, you knock one of the shelves over, making a terrible din. You are escorted to the streets.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(667,14,9,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(667,36,'You bump into a man wearing strange robes. You catch a glimpse of a golden necklace hidden beneath his collar. He hisses an unrecognizable phrase at you. Make a <span class="check">Will (-1) check</span>. If you fail, you are <i>Cursed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(667,37,'In the middle of the night, you hear the sounds of violent fighting in the room next to yours. Make a <span class="check">Speed (-1) check</span>. If you pass, you get next door in time to see a group of thugs surround a guest. They run away at the sight of you. If you fail, lose 1 Sanity when you find nothing but broken furniture.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(667,38,'A monster appears!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(668,14,9,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(668,36,'An old, hunched Innsmouth man is trying to pay for his groceries with an unusual object and doesn''t understand that the grocery only accepts cash. You may spend $3 to pay for the groceries. If you do, he gives you the object. Gain 1 Unique Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(668,37,'Joe Sargent tells you he''s running some errands and would be happy to pick something up for you if he can find it. Make a <span class="check">Luck (-1) check</span>. Draw a number of Common Items equal to the number of successes rolled. You may choose one to purchase. Discard any items that are not purchased.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(668,38,'Part of your clothing has gotten wrapped up in one of the large gears of the foundry. Make a <span class="check">Fight (+0) check</span> to free yourself. If you fail, lose 1 Stamina as the gears bite into you.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(669,14,9,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(669,36,'Chief Constable Martin is in the grocery, helping himself to the candies at the register. He looks over at you suspiciously. Make a <span class="check">Sneak (-1) check</span> to avoid making him angry. If you fail, you are <i>arrested</i> and taken to the Innsmouth Jail.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(669,37,'You''ve never had such vivid dreams in your life! Move to the Dreamlands, have an encounter there, and then return here immediately.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(669,38,'You find one of the older Innsmouth residents huddled in a corner. The thing is barely still human and quickly suffocating as its fish-like features no longer allow it to breathe air. Make a <span class="check">Will (-2) check</span> and gain 1 Clue token for each success. If there were no successes rolled, lose 2 Sanity as you gaze into its bulbous eyes.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(670,14,9,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(670,36,'An Innsmouth woman approaches you in athe grocery and tells you she received a promotional gift for buying so much soap. She doesn''t particularly want the gift and is willing to sell it to you. You may pay $3 to gain 1 Common Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(670,37,'If Velma''s Gratitude is facedown, you find Velma waiting for the bus back to Arkham. A couple big locals are looking at her threateningly and blocking her from getting onto the bus. If you current Fight is at least 4, you may draw 1 Injury to get them out of her way. If you do so, turn Velma''s Gratitude faceup. "I can''t thank you enough. You and your friends can eat at the diner for free whenever you like."');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(670,38,'One of the night watchmen takes you by surprise! Make a <span class="check">Fight (+1) check</span>. If you pass, you leave bruised and humbled. If you fail, lose 2 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(671,14,9,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(671,36,'Brian Burnham asks if you''d be interested in buying his train ticket. He says he planned to take a trip but can''t now. He doesn''t explain any further. If you do not already have one, you may spend $2 to gain a Rail Pass.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(671,37,'One of the other guests tells you about the shocking news from Dunwich. Roll 1 die for each Dunwich Horror token on the board. For each die that results in a failure, lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(671,38,'If someone knew what he was doing, this would be the perfect opportunity for a robbery. If you have a Sheldon Gang Membership, gain $5. If you do not have a Sheldon Gang Membership, make a <span class="check">Sneak (-1) check</span> instead. If you pass, gain $1.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(672,15,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(672,39,'"Do you seek the blessing of Dagon?" If you do, draw 2 Innsmouth Look cards and become <i>Blessed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(672,40,'An agent from the government is asking questions. The constables are trying to get him to go away. Make a <span class="check">Sneak (-2) check</span>. For every success, you may spend 1 Clue token to place it on any space on the Feds Raid Innsmouth track. If you do not roll any successes, you are <i>arrested</i> and put in the Innsmouth Jail.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(672,41,'The guards leave you alone for a while, so you examine your cell wall. Pushing aside some loose stones, you crawl out the tight opening to freedom and then replace the stones. Move to <b>Sawbone Alley</b>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(673,15,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(673,39,'The members of the Order have identified you as an outsider! Make a <span class="check">Speed (+0) check</span>. If you pass, you move to the street before you are caught. If you fail, lose 2 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(673,40,'Constable Ropes has turned his back while the weapons locker is unlocked. If you wish to try covertly arming yourself, make a <span class="check">Sneak (-2) check</span>. If you pass, search the Common Item deck and take the first <i><b>Weapon</b></i> you find. If you fail, you are <i>arrested</i> as you try to explain.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(673,41,'The guards leave you alone for a while, so you examine your cell wall. Pushing aside some loose stones, you crawl out the tight opening to freedom and then replace the stones. Move to <b>Sawbone Alley</b>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(674,15,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(674,39,'A locked cabinet seems to hold several antique, water-damaged texts. Make a <span class="check">Sneak (-2) check</span> to pick the lock. If you pass, search the Unique Item deck and take the first <i><b>Tome</b></i> you find.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(674,40,'The constables take a keen interest in one of your more unusual possessions and are willing to trade information for it. If you discard 1 Unique Item of your choice, you may gain 3 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(674,41,'Pretending to be asleep, you listen to Constable Ropes and the other guards talk. Gain 2 Clue tokens and you are <i>delayed</i>, even if you are normally immune to being <i>delayed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(675,15,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(675,39,'A series of primitive murals on the wall tell the story of an underwater city and the fish-like creatures that dwell there. The sight of them makes you very uneasy. Gain 2 Clue tokens and lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(675,40,'Chief Constable Martin tells you that you''ll fit in just fine around here and offers you a job. Take a Retainer card and then draw 2 Innsmouth Look cards.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(675,41,'A black hood is thrown over your head, and you are taken to the docks, where you are placed on a small rowboat. After some time, your bonds are removed, and you are pushed roughly out of the boat and onto the ground. "Have fun!" the guards say, laughing. Pulling off your hood, you find yourself far out to sea on top of a reef. Move to <b>Devil Reef</b> and have an encounter.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(676,15,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(676,39,'You can hear terrible sounds inside the Order, including many angry inhuman voices. Move to the streets and lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(676,40,'Chief Constable Martin wants to question you and his interrogation methods are blood-chilling. Make a <span class="check">Will (-1) check</span> to talk your way out of it. If you fail, lose 1 Stamina. Regardless of whether you pass or fail, you are <i>delayed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(676,41,'Constable Ropes enters your cell with a wooden baton. Some time later, he wearies of his sport and leaves you laying on the floor. Lose 1 Sanity and 1 Stamina. You are <i>delayed</i>, even if you are normally immune to being <i>delayed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(677,15,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(677,39,'You realize too late that you''ve walked into a trap. A horrifying monster appears!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(677,40,'Constable Ropes wants to play some cards to pass the time. Make a <span class="check">Luck (-1) check</span>. If you pass, gain $2 and 1 Common Item. If you fail, discard all of your money and 1 Common Item. If you have both no money and no Common Items, you are <i>arrested</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(677,41,'During the night, a harsh voice says, "Bring the prisoner." You are dragged from your cell to a disused house near the docks with a hole in the floor. Looking into it, you see a horrible shapeless mass that murmurs, "Tekeli-li! Tekeli-li!" Gasping, you barely have time to scream as the guard pushes you down into the hole. You are <b>devoured</b>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(678,15,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(678,39,'You realize too late that you''ve walked into a trap. A horrifying monster appears!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(678,40,'A prisoner thinks he can get free if he gets enough money to bribe one of the constables. He offers to sell you the last of his belongings. Draw 1 Common Item. You may purchase it for the list price. If you do not have enough money but have at least $1, you may purchase it by discarding all of your money. If you have no money or choose not to purchase the item, it is discarded and nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(678,41,'During the night, a harsh voice says, "Bring the prisoner." You are dragged from your cell to a disused house near the docks with a hole in the floor. Looking into it, you see a horrible shapeless mass that murmurs, "Tekeli-li! Tekeli-li!" Gasping, you barely have time to scream as the guard pushes you down into the hole. You are <b>devoured</b>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(679,15,9,NULL);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(679,39,'Eavesdropping, you hear the priest speaking to his congregation. You are shocked when he mentions you by name and there is an angry, croaking cry from the others. Add 1 uprising token to the Deep Ones Rising track.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(679,40,'One of the prisoners claims to be a reporter trying to tell the truth about Innsmouth. He says he won''t get free but the most important thing is that his notes make it to the newspaper. Make a <span class="check">Sneak (-1) check</span> to get your hands on them. If you pass, gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(679,41,'During the night, a harsh voice says, "Bring the prisoner." You are dragged from your cell to a disused house near the docks with a hole in the floor. Looking into it, you see a horrible shapeless mass that murmurs, "Tekeli-li! Tekeli-li!" Gasping, you barely have time to scream as the guard pushes you down into the hole. You are <b>devoured</b>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(680,15,9,7);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(680,39,'You see a priest angrily glaring at the Order''s building. If you are <i>Cursed</i> or either your Stamina or Sanity is 2 or lower, he introduces himself as <b>Father Iwanicki</b>, and says "This place is abhorrent and you are righteous to stand against it". Take his Ally card, or if is not available, you may search the Unique Item deck for the Holy Water card and take it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(680,40,'You see a poster on the wall with your picture on it. There is a reward offered for your capture. Make a <span class="check">Sneak (+0) check</span> to make yourself scarce. If you pass, take the Wanted card if it is available. If you fail, lose 1 Stamina and you are <i>arrested</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(680,41,'The guards leave you alone for a while, so you examine your cell wall. Pushing aside some loose stones, you crawl out the tight opening to freedom and then replace the stones. Move to <b>Sawbone Alley</b>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(681,15,9,7);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(681,39,'An odd, well-dressed man from overseas is examining the exterior of the Order. If you have any Exhibit Items or your Will is 2 or lower, he tells you it''s not safe here and introduces himself as <b>Dr. Ali Khafour</b>. Take his Ally card, or if it is not available, listen to him opine about similarities in the legends of island cultures and gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(681,40,'Constable Ropes has turned his back while the weapons locker is unlocked. If you wish to try covertly arming yourself, make a <span class="check">Sneak (-2) check</span>. If you pass, search the Common Item deck and take the first <i><b>Weapon</b></i> you find. If you fail, you are <i>arrested</i> as you try to explain.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(681,41,'Pretending to be asleep, you listen to Constable Ropes and the other guards talk. Gain 2 Clue tokens and you are <i>delayed</i>, even if you are normally immune to being <i>delayed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(682,15,9,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(682,39,'Passing by a mirror, you are startled to see yourself wearing a mask. You feel terrified to take the mask off. If you leave it on, lose 1 Sanity. If you take it off, draw 1 Innsmouth Look card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(682,40,'Constable Ropes is implying that if you don''t offer up a bribe, he''s going to make trouble for you. Discard $5 or a Unique Item. If you cannot or will not discard either, you are <i>arrested</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(682,41,'A black hood is thrown over your head, and you are taken to the docks, where you are placed on a small rowboat. After some time, your bonds are removed, and you are pushed roughly out of the boat and onto the ground. "Have fun!" the guards say, laughing. Pulling off your hood, you find yourself far out to sea on top of a reef. Move to <b>Devil Reef</b> and have an encounter.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(683,15,9,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(683,39,'"Do you seek the blessing of Dagon?" If you do, draw 2 Innsmouth Look cards and become <i>Blessed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(683,40,'The constables take a keen interest in one of your more unusual possessions and are willing to trade information for it. If you discard one Unique Item of your choice, you may gain 3 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(683,41,'The guards leave you alone for a while, so you examine your cell wall. Pushing aside some loose stones, you crawl out the tight opening to freedom and then replace the stones. Move to <b>Sawbone Alley</b>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(684,15,9,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(684,39,'At key points throughout this building are small plaquest with strange symbols on them. If you have a "One of the Thousand" Cult Membership, gain 3 Clue tokens. If you do not have a "One of the Thousand" Cult Membership, make a <span class="check">Lore (-1) check</span>. Gain 1 Clue token if you pass.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(684,40,'The constables arrive in the morning to find the bars of the cells bent and all their prisoners missing. A few bloodied strips of the prisoners'' clothing is all that remains. The constables do not seem notably bothered. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(684,41,'Constable Ropes enters your cell with a wooden baton. Some time later, he wearies of his sport and leaves you laying on the floor. Lose 1 Sanity and 1 Stamina. You are <i>delayed</i>, even if you are normally immune to being <i>delayed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(685,15,9,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(685,39,'You accidentally bump into a basin of wataer, dumping it all over yourself. You feel a strange acidic burn on your skin. Make a <span class="check">Fight (-1) check</span> to resist the effects of this liquid. If you fail, draw a Corruption card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(685,40,'Constable Ropes has turned his back while the weapons locker is unlocked. If you wish to try covertly arming yourself, make a <span class="check">Sneak (-2) check</span>. If you pass, search the Common Item deck and take the first <i><b>Weapon</b></i> you find. If you fail, you are <i>arrested</i> as you try to explain.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(685,41,'The guards leave you alone for a while, so you examine your cell wall. Pushing aside some loose stones, you crawl out the tight opening to freedom and then replace the stones. Move to <b>Sawbone Alley</b>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(686,15,9,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(686,39,'"Do you seek the blessing of Dagon?" If you do, draw 2 Innsmouth Look cards and become <i>Blessed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(686,40,'Constable Ropes is trying to read some old book he took from a suspect, but seems to be struggling with the material. He asks if it makes any sense to you. Make a <span class="check">Lore (-2) check</span>. If you pass, gain 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(686,41,'A black hood is thrown over your head, and you are taken to the docks, where you are placed on a small rowboat. After some time, your bonds are removed, and you are pushed roughly out of the boat and onto the ground. "Have fun!" the guards say, laughing. Pulling off your hood, you find yourself far out to sea on top of a reef. Move to <b>Devil Reef</b> and have an encounter.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(687,15,9,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(687,39,'You force yourself to approach the altar of Dagon, despite your misgivings. You see that someone had tried to carve a warding symbol into the stone but did not manage to finsh. Make a <span class="check">Lore (-1) [2] check</span>. If you pass, you know how to complete the symbol; search the Unique Item deck and take an Elder Sign card, if one is available. If it is not available, or if you fail the check, you are <i>Cursed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(687,40,'The constables take a keen interest in one of your more unusual possessions and are willing to trade information for it. If you discard one Unique Item of your choice, you may gain 3 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(687,41,'The guards leave you alone for a while, so you examine your cell wall. Pushing aside some loose stones, you crawl out the tight opening to freedom and then replace the stones. Move to <b>Sawbone Alley</b>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(688,15,9,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(688,39,'In the entryway are several photos of important figures in the history of the Order. You notice one with a strong familial resemblance to yourself. Draw 1 Innsmouth Look card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(688,40,'Chief Constable Martin has been cut pretty badly by a suspect and Constable Ropes is at a loss for treating the wound. Make a <span class="check">Lore (-2) check</span>. If you pass, you manage to successfully administer some first aid and the Chief Constable produces a small gold coin from his desk and tosses it at you. Gain $3.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(688,41,'Pretending to be asleep, you listen to Constable Ropes and the other guards talk. Gain 2 Clue tokens and you are <i>delayed</i>, even if you are normally immune to being <i>delayed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(689,15,9,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(689,39,'You believe you are alone in the building, but then hear the sound of something large moving around. Make a <span class="check">Will (-2) check</span> to avoid panicking. If you pass, gain 2 Clue tokens as you look around. If you fail, move to the streets.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(689,40,'Constable Ropes has turned his back while the weapons locker is unlocked. If you wish to try covertly arming yourself, make a <span class="check">Sneak (-2) check</span>. If you pass, search the Common Item deck and take the first <i><b>Weapon</b></i> you find. If you fail, you are <i>arrested</i> as you try to explain.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(689,41,'The guards leave you alone for a while, so you examine your cell wall. Pushing aside some loose stones, you crawl out the tight opening to freedom and then replace the stones. Move to <b>Sawbone Alley</b>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(690,15,9,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(690,39,'"Do you seek the blessing of Dagon?" If you do, draw 2 Innsmouth Look cards and become <i>Blessed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(690,40,'The constables are questioning a member of the Sheldon Gang. You think you could provide enough evidence to secure his release. If you spend at least 5 toughness worth of monster trophies or 1 gate trophy, the constables begrudgingly let him go. Impressed, the gang member tries to recruit you. Take a Sheldon Gang Membership card. If you do not spend the trophies, the constables arrest him and throw you out the front door. Move to the street and lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(690,41,'Constable Ropes enters your cell with a wooden baton. Some time later, he wearies of his sport and leaves you laying on the floor. Lose 1 Sanity and 1 Stamina. You are <i>delayed</i>, even if you are normally immune to being <i>delayed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid, requiresexpansionid) VALUES(691,15,9,2);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(691,39,'From outside, you can hear the congregation engaged in a loud ritual honoring Dagon. As horrible as it is, the sound exhilarates you and feeds on your weaknesses. Gain 1 Stamina. Then, if you have either an Injury or Madness card, add an uprising token to the Deep Ones Rising track and you are <i>Blessed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(691,40,'The constables take a keen interest in one of your more unusual possessions and are willing to trade information for it. If you discard one Unique Item of your choice, you may gain 3 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(691,41,'The guards leave you alone for a while, so you examine your cell wall. Pushing aside some loose stones, you crawl out the tight opening to freedom and then replace the stones. Move to <b>Sawbone Alley</b>.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(229,1,0,0,0,9,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(229,12,'A monster appears, intent on your destruction.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(229,2,'The climb across the jagged landscape is brutal. Every stone surface you touch cuts into your flesh. Lose 1 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(229,13,'Stinging insects swarm <span class="check">check</span> about you! Make a <span class="check">Speed (-1) check</span> to find shelter. If you fail, lose 1 Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(230,1,0,0,0,9,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(230,12,'The enormous silhouette of some unthinkably large creature looms on the horizon. You prudently choose to travel in a different direction. You have no encounter.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(230,7,'You need to trade something for a warm coat or the icy winds will overwhelm you. Lose 3 Stamina, but reduce the amount of Stamina lost by 1 (to a minimum of 0) for each Common or Unique Item you discard.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(230,13,'You suspect you would travel more quickly if you weren''t carrying so many things. Discard 1 item or you are <i>delayed</i>.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(231,1,0,0,0,9,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(231,12,'You climb and climb, ascending into the clouds. Make a <span class="check">Luck (+0) check</span> to make your way through the dense mist. If you fail, you come out of the clouds somewhere else. Move to the first area of the Plateau of Leng.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(231,8,'One of the silhouetted forms on the horizon begins to move. A monster appears!');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(231,13,'An enigmatic traveler sympathizes with your cause and offers some good advice. Gain 1 Clue token. Then make a <span class="check">Luck (-2) check</span>. If you pass, you are <i>Blessed</i>.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(232,1,0,0,0,9,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(232,12,'The cold air pierces through you. Lose 1 Stamina. Then, if you are still conscious, make a <span class="check">Will (-1) check</span> to keep moving. If you fail, you are <i>delayed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(232,6,'A band of pirates attack! Make a <span class="check">Fight (+0) [2] check</span>. If you fail, lose 1 Stamina and discard one item of your choosing. If you pass, you steal their ship and return to Arkham!');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(232,13,'A distant drumming can be heard. Strangely, it gives you a sense of security and protection, as if it were warding away some evil. Gain 1 Sanity.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(233,1,0,0,0,9,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(233,9,'You find yourself in a small New England colonial town. On the door of one of the buildings is a symbol you recognize from the Silver Twilight Lodge. As you examine it, you overhear voices inside. Make a <span class="check">Sneak (-1) check</span>. If you pass, you learn the secrets of their initiation. Take a Silver Twilight Membership. If you fail, the people inside discover you. Lose 1 Stamina as they drag you away.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(233,2,'This place looks familiar, like something from a dream in your childhood. With horror, you recall a nightmare of dying in such a place. Make a <span class="check">Will (-1) check</span>. If you fail, lose 1 Sanity and 1 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(233,13,'The time you have spent in this alien landscape is altering your perceptions. New, strange knowledge is burning itself into your mind. Lose 1 Sanity. Then, if you are still sane, gain 1 Spell.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(234,1,0,0,0,9,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(234,9,'You see a flyer looking for investors in a new plan to establish a railroad across the country. Pay $3 if you want to invest. If you do, gain a Retainer card and a Rail Pass.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(234,7,'The ice beneath your feet begins to crack. You need to move fast to get back on solid ground. Make a <span class="check">Speed (+1) [2] check</span>. If you fail, large chunks of ice smash into you as you fall endlessly into darkness. Lose 2 Stamina and you are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(234,13,'You find a number of old barrels, lost from some bygone century. Make a <span class="check">Luck (-1) check</span>. If you pass, you discover something worthwhile. Gain a Common Item. If you fail, the barrels'' rotten contents nauseate you. Lose 1 Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(235,1,0,0,0,9,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(235,9,'You encounter people you know and places you are familiar with, but no one recognizes you. It is as if you''d never been born. Seeing how unhappy everyone here is, you realize what a positive impact you''ve made on those around you. Gain 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(235,8,'A larger cavernous entrance into the citadel is masked in shadow. But you gaze too long and see something gargantuan beginning to exit. Make a <span class="check">Will (-1) check</span>. If you pass, lose 1 Sanity. If you fail, draw a Madness card.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(235,13,'A large mirror stands before you. Your reflection bears an unfamiliar mark upon its forehead. Make a <span class="check">Will (+0) check</span>. If you pass, the mark fades from the reflection. If you fail, it remains and you are <i>Cursed</i>.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(236,1,0,0,0,9,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(236,9,'You find yourself in Victorian England, but a man tells you he has a machine that can return you to your own time. Make a <span class="check">Luck (-1) check</span> to see if the machine works. If you pass, return to Arkham. If you fail, you are <i>delayed</i> as the machine sends you to the wrong time.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(236,6,'You''ve found yourself in the Fantastic Realms and the terrain twists back upon itself in physically impossible ways. Make a <span class="check">Will (-1) check</span> to navigate your way out again. If you fail, lose 1 Sanity and you are <i>delayed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(236,13,'You see a reflection of yourself and realize how much your experiences have changed you. You believe the knowledge you''ve gained is worth the sacrifices you''ve made. If your Sanity is at full, you may discard 3 Clue tokens to be <i>Blessed</i>. Otherwise, if you are not at full Sanity, for each Clue token you discard, gain 1 Sanity.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1, requiresexpansionid2) VALUES(237,1,0,0,0,9,2,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(237,12,'You are not welcome here! Some invisible force lifts you up and flings you through the sky. Make a <span class="check">Luck (-2) check</span>. If you pass, return to Arkham. If you fail, move to the first area of the Dreamlands and immediately have an encounter there.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(237,9,'You find yourself in the trenches of the Great War. Make a <span class="check">Fight (+0) check</span> to keep yourself from harm. If you fail, draw an Injury card.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(237,13,'Water begins to flood your immediate environment! Make a <span class="check">Fight (-1) check</span> to prevent yourself from being swept away by the waves. If you fail, choose any aquatic location, move there, and do not take an explored marker.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1, requiresexpansionid2) VALUES(238,1,0,0,0,9,2,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(238,9,'You have the opportunity to consult the Oracle at Delphi in Ancient Greece. If you wish, make a <span class="check">Lore (-1) check</span> to interpret their message. Gain 1 Clue token for each success. If you fail the check, you are <i>Cursed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(238,12,'You can see a message written high on a cliff face. If you wish, you may try to scale the rock wall to read it. If you do, make a <span class="check">Fight (-1) check</span>. If you pass, you gain 1 Spell. If you fail, lose 1 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(238,13,'You recognize this landscape from a painting you saw recently. Make a <span class="check">Lore (-2) check</span> to remember the details of the artwork. If you pass, you recall a strange object depicted and can find that location. Gain 1 Unique Item.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1, requiresexpansionid2) VALUES(239,1,0,0,0,9,7,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(239,12,'<p>An enormous pillar is carved in the image of the Dark Pharaoh. A powerful force is trying to compel you toward it. You may approach the pillar or try to walk away from it.</p><p>If you approach, make a <span class="check">Will (-1) check</span> to keep your composure as an ancient intelligence floods your thoughts. If you pass, take the Visions card if it is available. If you fail, discard all of your Clue tokens.</p><p>If you walk away from the pillar, make a <span class="check">Luck (-1) check</span> and gain 1 Sanity for each success. If you fail, you feel the Pharaoh''s presence continue to haunt you. Take the Harried card if it is available.</p>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(239,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1, requiresexpansionid2) VALUES(240,1,0,0,0,9,8,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(240,12,'<p>The ground is littered with typed notes from a play that mentions you by name as a character! The pages provide directions for you. Will you follow the script?</p><p>If you do follow the script, lose 2 Sanity. Then, if you are still sane, return to Arkham.</p><p>If you do not follow the script, make a <span class="check">Will (-1) check</span>. If you pass, gain 1 Sanity. If you fail, a monster appears!</p>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(240,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1, requiresexpansionid2) VALUES(241,1,0,0,0,9,5,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(241,9,'<p>As you try to get your bearings you bump into a gentleman dressed like a musketeer who begins to ngrily berate you in French. You get the impression he''s challenging you to a duel.</p><p>If you accept the challenge, make a <span class="check">Fight (-1) check</span>. If you pass, you the man''s weapon as a trophy. Search the Unique Item deck and take the first <i><b>Weapon</b></i> you find. If you fail, gain an Injury card.</p><p>If you decline the challenge, you are hunted through the streets of Paris. Make a <span class="check">Sneak (-1) check</span>. If you pass, you manage to find a safe place to rest and recuperate, restoring your Stamina to full. If you fil, you are discovered stripped of your belongings. Choose 2 of your items to keep and discard the rest.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(241,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1, requiresexpansionid2) VALUES(242,1,0,0,0,9,3,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(242,9,'<p>You see primitive, hunched figures burning meat upon the altar. They chant in a language you do not recognize but the repetition begins to insinuate the words into your memory. Would you like to memorize the chant?</p><p>If you do, make a <span class="check">Will (-1) check</span>. If you pass, gain a "One of the Thousand" Cult Membership card. If you fail, lose 2 Sanity.</p><p>If you choose not to, the words affect your subconscious, shaping your dreams against your will. Lose 1 Sanity and gain 1 Clue token.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(242,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(243,0,1,0,0,9,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(243,11,'You hear gurgling voices echoing from somewhere in the darkness above you. At first, the sound is unnerving, but soon you realize they are unaware that you are listening. Make a <span class="check">Sneak (-1) check</span> to get what information you can without alerting the speakers of your presence. If you pass, gain 1 Clue token for each success.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(243,3,'You can''t understand the alien reatures, but they seem upset over what''s happening in Arkham and intend to send you back as soon as possible using a machine. Make a <span class="check">Will (-1) check</span>. If you fail, you are unable to block out the searing pain the machine inflicts upon you and you lose 2 Stamina. Then, regardless of whether you passed or failed the check, you may return to Arkham.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(243,13,'A foul-smelling ichor covers the ground. Pass a <span class="check">Will (-1) check</span> or lose 1 Stamina as the odor overwhelms you.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(244,0,1,0,0,9,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(244,11,'The longer you spend in this desolate place, the more it erodes your mind. If you are in the first area of the Unferworld, lose 1 Sanity. If you are in the second area of the Underworld, lose 2 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(244,7,'A monster appears from the shadows.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(244,13,'Magic seems to inherently manipulate your environment in unpredictable ways. If you have 3 or more Spells, this world rejects you completely and you are <i>lost in time and space</i>.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(245,0,1,0,0,9,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(245,11,'From the shadowy depths, a monster appears!');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(245,6,'The voice of Nodens can be heard bellowing across the landscape. Make a <span class="check">Lore (-2) check</span> to interpret his words. Gain 1 Clue token for each success you roll.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(245,13,'The environment here adamantly refuses to conform to logic or reason. For each Clue token you have, roll a die. If the result is a "1", discard a Clue token.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(246,0,1,0,0,9,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(246,11,'You find a Gug lying motionless, apparently dead. You may examine the body if you like. If you do, make a <span class="check">Luck (-1) check</span>. If you pass, you discover what killed the monstrosity. Search the Unique Item deck and take the first <i><b>Weapon</b></i> you find. If you fail, the thing still has a little fight left in it. Lose 1 Stamina as it lashes out with the last of its strength.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(246,5,'You were told the book you were looking for was on one of these tables, but there''s hundreds of books stacked in random piles! Make a <span class="check">Luck (-1) check</span> to find it and gain 2 Clue tokens if you pass. If you fail, you are <i>delayed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(246,13,'A thick pollen is infecting the air. You need to keep moving or you''re going to pass out from breathing it in. Pass a <span class="check">Speed (-1) check</span> or you are <i>delayed</i>.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(247,0,1,0,0,9,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(247,9,'You find yourself in a small New England colony that suspects you of practicing witchcraft. Make a <span class="check">Sneak (+1) check</span> to avoid capture. If you fail, draw an Injury card as you endure their rigorous questioning.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(247,3,'When your mind returns to your body, something seems to have happened to you while you were away. Make a <span class="check">Luck (+0) check</span>. If you pass, lose 1 Stamina. If you fail, draw an Injury card.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(247,13,'Someone has drawn a crude map of the terrain ahead of you. Make a <span class="check">Lore (-1) check</span> to interpret it. If you pass, return to Arkham. If you fail, you are <i>lost in time and space</i>.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(248,0,1,0,0,9,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(248,9,'You recognize the landscape as being Dunwich, but you see no recognizable buildings. A group of Vikings stand near a large stone covered in glyphs and are speaking a language you don''t understand. When the discussion is over, they begin to bury the stone. Make a <span class="check">Will (-1) check</span> to memorize the location. If you pass, gain 2 Clue tokens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(248,7,'You come across familiar tracks in the snow. Someone you know was here before you. Make a <span class="check">Lore (-1) check</span> to recall who it was. If you pass, gain 2 Clue tokens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(248,13,'A row of vaguely humanoid sculptures lines your path. As you walk past them, you cannot help but think that some malevolent force is watching you through their stone eyes. Lose 1 Sanity.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(249,0,1,0,0,9,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(249,9,'You recognize the building you are in as a library, but it is necessary to operate the strange machines to find the books you seek. Make a <span class="check">Lore (-2) check</span>. If you pass, gain 2 Clue tokens and then search the Common Item deck and take the first <i><b>Tome</b></i> you find.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(249,6,'The Zoogs are making so much noise you don''t hear the other creatures in this forest. A monster appears. Treat this monster as if it had the <b>Ambush</b> special ability.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(249,13,'A strangely-dressed man, claiming to be a doctor, offers to trade valuable information for an item he purports to need. You may discard any item that is not a <i><b>Weapon</b></i> and then gain 3 Clue tokens.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(250,0,1,0,0,9,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(250,9,'You recognize an old, dilapidated building as your home. On a hunch, you search the house to see if you''ve written a letter to yourself, knowing that you would be here at some point in the future. Make a <span class="check">Luck (-1) check</span>. If you pass, you find a very informative letter from your future self. Gain 3 Clue tokens. If you fail, lose 1 Sanity as there is no sign that you ever returned to this place.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(250,5,'A package wrapped in brown paper sits on a table. Your name is written on the package. If you choose to open it, make a <span class="check">Luck (-1) check</span>. If you pass, search the Unique Item deck for the first <i><b>Tome</b></i> you find and keep it.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(250,13,'You find something that looks to be valuable, broken into many small pieces. If you wish, draw a Unique Item and stay here next turn as you reassemble it.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1, requiresexpansionid2) VALUES(251,0,1,0,0,9,2,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(251,11,'You may choose to make a <span class="check">Fight (-2) check</span> to scare the ghouls away from their quarry. If you pass, claim 1 monster trophy at random from the cup, ignoring the <b>Endless</b> ability.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(251,9,'You quickly determine that you are in Kingsport in 1685. To your amazement, you are greeteed by a man you know to still be alive in 1926, William Bain. If you pass a <span class="check">Will (-2) check</span> ot discard an Ancient Tome, he offers you his help. Take his Ally card. If it isn''t available, you are <i>Blessed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(251,13,'At some point in your other-worldly travels, you began suffering from a fever. Lose 1 Stamina. Then make a <span class="check">Will (-1) check</span> to glean useful insights from your delirious dreams. If you pass, gain 1 Clue token.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1, requiresexpansionid2) VALUES(252,0,1,0,0,9,2,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(252,9,'You are in the Congregational Church during December of 1722. An angry mob has gathered outside while those within are racing to hide a strange collection of artifacts. Make a <span class="check">Sneak (-1) check</span>. If you pass, gain 1 Unique Item. If you fail, the people inside the church turn on you. Lose 2 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(252,11,'Nodens wishes to thwart the forces of the Ancient One. You may choose 1 monster in Kingsport and 1 in Dunwich, each with 2 or less toughness, and remove them from the board. Then discard 1 item, if able, which Nodens claims as tribute.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(252,13,'A strange euphoria begins to overtake you. You are irrationally certain things will be okay. Gain 1 Sanity. Then make a <span class="check">Luck (-1) check</span>. If you fail, overconfidence leads you astray and you are <i>delayed</i>.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1, requiresexpansionid2) VALUES(253,0,1,0,0,9,7,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(253,9,'<p>You are in ancient Egypt among the Dark Pharaoh''s treasures! They are well-guarded, but you think you could steal one artifact.</p><p>If you attempt to steal an item, make a <span class="check">Sneak (-2) check</span>. If you pass, you may search the Exhibit Item deck and take one card of your choosing. If you fail, lose 1 Stamina as the guards remove you forcibly.</p><p>If you do not attempt to steal aything, you notice the walls are adorned with paintings depicting the future. Make a <span class="check">Lore (-1) check</span> and gain a Clue token for each success.</p>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(253,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1, requiresexpansionid2) VALUES(254,0,1,0,0,9,8,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(254,9,'<p>You find yourself in the recent past, just before a terrible hardship is about to befall one of the investigators. Will you attempt to interfere?</p><p>If you choose to interfere, make a <span class="check">Speed (-1) check</span> to act in time. If you pass, you may choose any investigator and restore either his Sanity or his Stamina to full. If you fail, you are <i>Cursed</i> for trying to interfere in the natural order of things.</p><p>If you choose not to interfere, make a <span class="check">Lore (-1) check</span> and gain 1 Clue token for each success as you are able to analyze events as they unfold.</p>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(254,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1, requiresexpansionid2) VALUES(255,0,1,0,0,9,5,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(255,11,'<p>On the face of one of the granite mountains, in letters larger than any house you''ve ever seen, a message is written in a language you are somehow able to interpret. The message informs you of how to warp reality and control the doors between reality, but it also warns of terrible dangers that threaten any who do so.</p><p>If you attempt to control the doors between realities, make <span class="check">Lore (-1) check</span>. If you pass the check, search the Spell deck for the Control Gate spell and take it. If the spell is not available, nothing happens. If you fail the check, draw a monster for each open Rift and place the monster on the Rift''s current location. If there are no open Rifts, nothing happens.</p><p>If you do not attempt to control the doors, gain 3 Clue tokens and you are <i>Cursed</i>.</p>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(255,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1, requiresexpansionid2) VALUES(256,0,1,0,0,9,3,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(256,11,'<p>The ghouls want to transform you into one of them! You may either fight them or allow their corrupting influence to affect you.</p><p>If you attempt to fight aginst them, make a <span class="check">Fight (-1) check</span>. If you pass, gain 1 Sanity as you free yourself from their foul influence. If you fail, lose 2 Stamina in the course of the struggle.</p><p>If you allow yourself to be exposed to their corrupting influence, gain 2 Corruption cards and increase your maximum Stamina by 1.</p>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(256,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(257,0,0,1,0,9,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(257,11,'Gigantic, four-armed creatures are fast asleep. Make a <span class="check">Sneak (+1) check</span>. If you fail, lose 1 Stamina and you are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(257,2,'A monster appears!');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(257,13,'You find a scattered pile of familiar objects, each one something you have lost at some point in your life. Some of them may prove useful now. Make a <span class="check">Luck (-1) check</span>. If you pass, you may look at the bottom of the Common Item deck and then draw one Common Item from either the top or the bottom of the deck.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(258,0,0,1,0,9,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(258,11,'A pack of ghouls are feasting on carrion. It is a truly repugnant sight to behold. Lose 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(258,5,'The book''s images are so familiar, but the strange language is frustratingly indecipherable. Make a <span class="check">Lore (+1) check</span> and gain 1 Clue token for each success. Then lose 2 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(258,13,'The landscape around you begins to shift and reshape itself. Make a <span class="check">Lore (-2) check</span>. If you pass, you recognize this place and may move to the first area of any Other World and gain 1 Clue token.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(259,0,0,1,0,9,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(259,11,'The granite peaks are nearly impossible to pass. Lose 1 Stamina and then make a <span class="check">Fight (-1) check</span>. If you fail, you are <i>delayed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(259,6,'A very wise old man sits in a temple offering useful but cryptic advice. Make a <span class="check">Lore (-2) check</span> and gain a Clue token for each success.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(259,13,'Your terrible thirst has finally convinced you to try drinking some of the water here. Make a <span class="check">Luck (-1) check</span> and consult the following chart:<br /><br />Successes:<br /><table><tr><td class="nowrap">0)</td><td>Lose 1 Stamina.</td></tr><tr><td class="nowrap">1)</td><td>No effect.</td></tr><tr><td class="nowrap">2)</td><td>Gain 1 Stamina.</td></tr><tr><td class="nowrap">3+)</td><td>Gain 1 Stamina and draw 1 Spell.</td></tr></table>');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(260,0,0,1,0,9,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(260,11,'Here in the Vale of Pnath, you discover a friend once thought lost. Make a <span class="check">Luck (-2) check</span>. If you pass, draw an Ally. If you fail, your friend is in no condition to return with you. Lose 1 Sanity and return the top card of the Ally deck to the box.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(260,4,'You watch the creatures operate a device which seems to transport things to and from Earth. Make a <span class="check">Lore (-2) check</span> to learn how to operate it. If you pass, return to Arkham.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(260,13,'You feel an outside intelligence trying to take over your body, replacing your indentity with its own. You fight it off with great difficulty. Make a <span class="check">Will (-2) check</span>. If you pass, you gained a specialized knowledge from that intelligence. Draw 1 Skill. If you fail, you lost part of yourself in the struggle. Discard all of your Clue tokens.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(261,0,0,1,0,9,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(261,10,'As the sun sets, you see your own shadow twist and your thoughts begin to reshape it. Lose 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(261,2,'The vast desolate landscape gives you no sense of progress. You walk for what seems days and yet you see nothing growing closer, nothing fading away as you move away from it. Lose 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(261,13,'You are suddenly plagued by a vision of yourself in a cell at the asylum hallucinating a journey to another world. Make a <span class="check">Luck (+1) check</span>. If you fail, move immediately to Arkham Asylum and draw a Madness card.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(262,0,0,1,0,9,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(262,10,'Within the opulent rooms of the palace you find Mr. Darke gazing out a window. Make a <span class="check">Luck (-2) check</span>. If you fail, he pushes you out the window and you are <i>lost in time and space</i>. If you pass he''s delighted to see you and you are <i>Blessed</i>. If you are already <i>Blessed</i>, you may discard your Blessing card to turn the <b>Darke''s Blessing</b> card faceup. If you are already <i>Blessed</i> and pass the check, but do not with to discard your Blessing (or the <b>Darke''s Blessing</b> card is already faceup), nothing happens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(262,5,'A lurking monster appears!');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(262,13,'You find a sheltered area, a veritable oasis in this strange place. You may take the opportunity to rest. If you do, you are <i>delayed</i> and gain 1 Sanity and 1 Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(263,0,0,1,0,9,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(263,10,'Somewhere in the city you hear the gentle sound of metal striking against metal. You find it very soothing but completely lose track of time. Restore your Sanity to full. You are then <i>delayed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(263,6,'You cross a great stone bridge and are suddenly overwhelmed with a horrifying despair. Make a <span class="check">Will (+0) check</span>. If you fail, draw a Madness card.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(263,13,'You can barely see anything in the dim lighting, but you can hear something large and threatening nearby. Make a <span class="check">Sneak (+0) check</span>. If you fail, the creature pounces. Draw an Injury card.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(264,0,0,1,0,9,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(264,10,'Several blocks away, you see a group of people walking, wearing elaborate masks. You chase after them. Make a <span class="check">Luck (-1) check</span>. If you pass, they''ve disappeared but dropped a few gold coins. Gain $2.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(264,4,'A horrid monster appears!');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(264,13,'It''s a door! You must have walked by the other side of the door a hundred times back home. Gain 1 Sanity. Then make a <span class="check">Fight (-2) check</span> to break the lock. If you pass, return to Arkham.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1, requiresexpansionid2) VALUES(265,0,0,1,0,9,2,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(265,11,'A pack of ghasts chase after you. Climb up to the sunlight as fast as you can! Make a <span class="check">Speed (+1) check</span>. If you fail, gain an Injury card from their ferocious attack.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(265,10,'In the waters of Lake Hali, you can see the dreams of people you know. You find yourself unconsciously manipulating the dreams. Make a <span class="check">Will (+0) check</span>. If you pass, choose 1 Rift progress marker and turn it facedown if its associated Rift is open, or discard the token if its associated Rift is closed. If you fail the check, raise the terror level by 1.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(265,13,'You discover a dimensional rift, bleeding macabre energies into your home world. Choose 1 open Rift. You must then either discard 3 Clue tokens and close the Rift or move to the Rift''s current location, without gaining an explored marker. If no Rifts are open, return to Arkham.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1, requiresexpansionid2) VALUES(266,0,0,1,0,9,2,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(266,10,'Following the lake shore you come to a place that looks familiar. Gain 1 Sanity and then choose any squatic location that does not have a gate marker on it. Have one encounter there (or use the location''s ability, if able) and immediately return here.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(266,11,'A nightgaunt drops some hapless person from the darkness above. The victim did not survive the impact but he seems to be holding a book. Make a <span class="check">Luck (-2) check</span>. If you pass, search the Unique Item deck and take the first <i><b>Time</b></i> you find. If you fail, search the Common Item deck and take the first <i><b>Tome</b></i> you find.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(266,13,'A hideous monster appears!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1, requiresexpansionid2) VALUES(267,0,0,1,0,9,7,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(267,11,'<p>The sickly phosphorescence that permeates this place does not continue into the chambers ahead. You may try to collect some of the strange substance to light your way as you continue.</p><p>If you collect the eerily-glowing material, you find your way out of the Underworld, but the phosphorescence burns your skin. Return to Arkham and then lose 1 Stamina.</p><p>If you stumble forward into the dark without any light, make a <span class="check">Luck (-1) check</span> to make your way. If you fail, you are <i>delayed</i>.</p>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(267,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1, requiresexpansionid2) VALUES(268,0,0,1,0,9,8,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(268,11,'<p>A ghoul offers you a splendid diadem of blazing gold. Will you accept it?</p><p>If you do not accept the crown, the ghoul lashes out in rage. Pass a <span class="check">Fight (+1) check</span> or reduce your maximum Stamina by 1.</p><p>If you do accept the crown, gain $8 and reduce your maximum Sanity by 1.</p>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(268,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1, requiresexpansionid2) VALUES(269,0,0,1,0,9,5,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(269,10,'<p>Noatalba is performing a ritual to open the doors between Carcosa and other places. You may come closer to learn what he is doing or stay a safe distance away.</p><p>If you approach, make a <span class="check">Sneak (-1) check</span>. If you pass, you learn his secret. Search the Spell deck and take the Control Gate spell, if it is available. If it is not, gain 3 Clue tokens. If you fail, you disturb his ritual and a monster appears.</p><p>If you stay a safe distance away, you learn much, perhaps too much. Roll 3 dice and gain 1 Clue token for each success. If all 3 dice roll successes, gain a Madness card.</p>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(269,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1, requiresexpansionid2) VALUES(270,0,0,1,0,9,3,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(270,10,'<p>You discover an ornate goat mask lying forgotten on a chair. You may try it on, if you like.</p><p>If you try on the goat mask, gain 2 Stamina and then make a <span class="check">Will (-1) check</span> as it attempts to revert your mind to a primal state. If you fail, draw a Corruption card.</p><p>If you do not put on the goat mask, it seems to move of its own accord, turning to look at you. Suddenly a monster appears. If the monster is defeated, you may return to Arkham.</p>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(270,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(271,0,0,0,1,9,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(271,12,'From a ledge above you, a monster appears!');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(271,3,'You find a room containing strange artifacts on towering pedestals. You may choose to make a <span class="check">Fight (-1) check</span> to climb the smooth surfaces to reach one of the objects. If you pass, gain 1 Unique Item. If you fail, lose 1 Stamina from your fall.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(271,13,'You recognize an odd object tucked inside a bird''s nest. Make a <span class="check">Sneak (-2) check</span> to remove the object without attracting the attention of any of the large birds nearby. If you pass, gain 1 Common Item.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(272,0,0,0,1,9,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(272,12,'There is no sound but the stony echoes of your footsteps. No encounter.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(272,8,'You discover a series of hieroglyphics, barely visible after eons of ocean water washing across the stone face. Upon examination, they begin to make sense to you. You may choose to lose 2 Sanity to make a <span class="check">Lore (+1) check</span>. Gain 1 Clue token for each success.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(272,13,'The air here tastes sour and burns your lungs. Pass a <span class="check">Fight (-1) check</span> or lose 1 Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(273,0,0,0,1,9,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(273,12,'You hear a horrible sound an instant before a sanity-shattering image appears in front of you. Make a <span class="check">Speed (+0) check</span> to avert your eyes. If you fail, your mind suffers a terrible shock. Discard all of your Clue tokens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(273,4,'The Mi-go swarm up out of a hole in the black ground. It seems to be a mine of some kind, as they are carrying large bins of metallic ore. One of them has discovered something strange buried in the ground. You may make a <span class="check">Sneak (-2) check</span> to steal it. If you pass, gain a Unique Item, but if you fail, lose 1 Stamina and you are <i>delayed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(273,13,'Small, but precious stones are embedded into the wall. Gain $3.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(274,0,0,0,1,9,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(274,12,'No path can be discerned and the towering peaks make it difficult to keep your bearings. Make a <span class="check">Luck (-1) check</span>. If you fail, you have lost your way; move to the first area of the Dreamlands and immediately have an encounter there.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(274,6,'A craftsman offers you some of his wares. The quality is excellent but the prices seem high. Draw 2 Common Items. You may purchase one of them for $1 more than the list price. Discard any items not purchased.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(274,13,'You discover a complex series of glass tubing, flasks, and beakers. You may choose to sample one of the chemicals flowing through this array. If you do, make a <span class="check">Luck (-2) check</span>. If you pass, the concoction strangely changes you. Gain 1 Skill. If you fail, lose 1 Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(275,0,0,0,1,9,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(275,10,'An opulent crown rests on velvet within a safe. Make a <span class="check">Will (+0) check</span>. If you pass, you see through the illusion and recognize it as a tin toy. If you fail, you become obsessed with becoming the king and are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(275,3,'You catch sight of yourself in a reflective surface and realize that you are no longer inside your own body. In fact, your body is no longer that of a human being. Lose 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(275,13,'The mystic energies of this place seem to have the power to rejuvenate you. You may discard 1 Spell or 1 Unique Item to restore your Stamina to full.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(276,0,0,0,1,9,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(276,10,'You find plates of a strange flat bread. If you choose to sample some, gain 2 Stamina and then make a <span class="check">Luck (-1) check</span>. If you fail, you forget where you were going and are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(276,8,'A foul wind tears through the great stone monoliths. Make a <span class="check">Fight (+0) check</span>. If you fail, choose 1 item to discard as the wind carries it off into the darkness.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(276,13,'You discover you are able to hear the thoughts of an individual in Arkham. Roll a die and consult the following table:<br /><br />Successes:<br /><table><tr><td class="nowrap">1)</td><td>These are not the thoughts of a human being. Lose 1 Sanity.</td></tr><tr><td class="nowrap">2-3)</td><td>The thoughts are preoccupied with trivial matters. No effect.</td></tr><tr><td class="nowrap">4-5)</td><td>You discover something vital! Gain 1 Clue token.</td></tr><tr><td class="nowrap">6)</td><td>These are the thoughts of a powerful wizard. Gain 1 Spell.</td></tr></table>');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(277,0,0,0,1,9,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(277,10,'Two men in strange robes are having a heated argument about obscure rules of imperial succession. Make a <span class="check">Lore (-2) check</span>. If you pass, they are impressed with your acumen and offer you a gift. Gain 1 Unique Item.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(277,4,'The creatures indulge in experimental surgery to find out how adaptable the human mind is. Lose 2 Sanity. Then, if you''re still sane, draw 2 Spells. Choose one to keep and discard the other.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(277,13,'A powerful force is attempting to tear its way through the realities! Make a <span class="check">Lore (+0) [2] check</span> to slow it down. If you pass, remove 1 Dunwich Horror token from the board.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1) VALUES(278,0,0,0,1,9,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(278,10,'The streets of this city are a maze that defies logic. Make a <span class="check">Speed (+1) check</span>. If you fail, you are <i>delayed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(278,6,'A cat offers you some advice. Make a <span class="check">Lore (-1) check</span> to see how well you interpret it. Gain 1 Clue token for each success. If you fail the check, lose 1 Sanity for taking a cat''s advice.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(278,13,'A terrible monster appears!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1, requiresexpansionid2) VALUES(279,0,0,0,1,9,2,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(279,12,'The door to the Castle of Great Old Ones opens. Pass a <span class="check">Will (+1) check</span> or your fragile mind snaps. Draw 1 Madness card if you fail the check.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(279,10,'A thick mist is coming off the Lake of Hali, and as you try to navigate through it, you find yourself suddenly walking through the door of a house. Have an encounter at the Strange High House in the Mist (or use the location''s ability, if able) and immediately return here.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(279,13,'To pass the time you have been having a conversation with yourself out loud. You are alarmed when you respond to your own question in a language you have never heard before. Make a <span class="check">Lore (-1) check</span> to interpret what you just said. If you pass, gain 1 Spell. If you fail, lose 1 Sanity.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1, requiresexpansionid2) VALUES(280,0,0,0,1,9,2,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(280,10,'The barriers between worlds have grown too thin. If two or more Rifts are open, you are <i>lost in time and space</i>. If one or fewer Rifts are open, you manage to use it to your advantage and return to Arkham.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(280,12,'Someone hid a precious treasure where they believed no one would dare go. Yet, they did not leave it unprotected. Gain 1 Unique Item and you are <i>Cursed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(280,13,'You find this place is corrosive to your belongings. Metal rusts, wood rots, and cloth grows thin. For each Common Item you have, roll a die. If the result is a 1, discard the item.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1, requiresexpansionid2) VALUES(281,0,0,0,1,9,7,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(281,10,'<p>Inside a glass case you see a strange Egyptian object next to a painting of yourself taking it from the case. Will you take the artifact or not?</p><p>If you take the artifact, gain 1 Exhibit Item and 1 Madness card. You may then return to Arkham if you wish.</p><p>If you leave the artifact, you see a duplicate of yourself open the case and take the object. Make a <span class="check">Will (-1) check</span>. If you pass, you manage to have a conversation with yourself and learn much. Gain 3 Clue tokens. If you fail, the experience is too unnerving. Lose 1 Sanity and you are <i>delayed</i>.</p>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(281,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1, requiresexpansionid2) VALUES(282,0,0,0,1,9,8,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(282,10,'<p>A man steps in front of you with a knife in one hand and a writ for your execution in the other, but he seems to hesitate. Do you attack him?</p><p>If you charge him, make a <span class="check">Fight (+0) check</span>. If you pass, search the Common Item deck and take the Knife card. If you fail, lose 1 Stamina.</p><p>If you do not attack him, make a <span class="check">Luck (+0) check</span>. If you pass, he introduces himself as Osgood Oswald Vance and tells you where he''s hidden a large sum of money. Gain $10. If you fail, he lashes out suddenly. Gain an Injury card.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(282,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1, requiresexpansionid2) VALUES(283,0,0,0,1,9,5,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(283,12,'<p>The Ancient Ones will offer you a bargain. You may take personal power at the possible expense of the rest of humanity.</p><p>If you accept the bargain, gain 1 Spell and you are <i>Blessed</i>. Then add 1 doom token to the doom track.</p><p>If you do not accept the bargain, you are <i>Cursed</i>.</p>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(283,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid, requiresexpansionid1, requiresexpansionid2) VALUES(284,0,0,0,1,9,3,2);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(284,12,'<p>This is a place not meant for humans. To remain here, you may have to sacrifice your very humanity. Will you remain?</p><p>If you stay here, make a <span class="check">Will (+1) check</span>. If you fail, gain 2 Corruption cards.</p><p>If you choose to leave, make a <span class="check">Luck (-2) check</span>. If you pass, return to Arkham. If you fail, you are <i>lost in time and space</i>.</p>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(284,13,'Discard this card and draw again.');

INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(25,9,'The Unending Chant','The voices in your head cry out with a desperate need for more and more worshippers.','<p>If all investigators have a "One of the Thousand" Cult Membership, you are <i>Blessed</i>.</p><p>Otherwise, you must choose another investigator who may choose to draw a Corruption card and gain a "One of the Thousand" Cult Membership. If he does not, you lose 2 Sanity.</p>');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(26,9,'Branding the Flesh','"This burn is an oath. You will bring souls to kneel before the alter. Do not break this oath."','<p>If all investigators have a "One of the Thousand" Cult Membership, you are <i>Blessed</i>.</p><p>Otherwise, you must choose another investigator who may draw a Corruption card to gain a "One of the Thousand" Cult Membership. If he chooses not to, you are <i>Cursed</i>.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(27,9,'Sacrifice Must Be Made','"All must be surrendered to Shub-Niggurath!"','<p>If all investigators have a "One of the Thousand" Cult Membership, you are <i>Blessed</i>.</p><p>Otherwise, you must choose another investigator who may draw a Corruption card to gain a "One of the Thousand" Cult Membership. If he chooses not to, you must discard 1 Ally, 1 Unique Item, or 1 Spell if able.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(28,9,'A Debt Must Be Paid','What is owed must be paid, either by you or by someone else.','<p>If all investigators have a "One of the Thousand" Cult Membership, you are <i>Blessed</i>.</p><p>Otherwise, you must choose another investigator who may draw a Corruption card to gain a "One of the Thousand" Cult Membership. If he chooses not to, you must draw 2 Corruption cards.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(29,9,'Blood of the Beast','The foul-smelling black ichor is poured over the cut across your arm. Your heart beats wildly and your thoughts grow feral.','Restore your Stamina to full and draw a Corruption card. All hexagon monsters move as if the hexagon symbol appeared on the black movement box while resolving a mythos card.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(30,9,'These Thoughts Are Not Your Own','Your mind fills with a primal strength you''ve never known. Dark, violent impulses threaten to overtake you.','Restore your Sanity to full and draw a Corruption card. All hexagon monsters move as if the hexagon symbol appeared on the white movement box while resolving a mythos card.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(31,9,'Contest of Wills','You feel yourself merging with the creature''s consciousness. You believe that if you pushed yourself hard enough, you could control the monstrosity.','You may choose 1 hexagon monster on the board to return to the box. Do not return it to the monster cup. If you choose to do this, reduce either your maximum Sanity or maximum Stamina by 1.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(32,9,'The Ritual of Transformation','You stand before the altar, chosen to give yourself to the Black Goat, body and soul.','You must either discard your "One of the Thousand" Cult Membership and move to the street or gain 3 Corruption cards. For each 2 Clue tokens you discard, you may reduce the number of Corruption cards you gain 1 by (to a minimum of 0).');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(33,9,'Secrets Revealed','You''ve gained the attention of the cult''s leaders. They grant you access to their most insidious machinations.','You may choose to discard either an Environment mythos card currently in play or a Rumor mythos card (without triggering the Pass or Fail effects) in play. If you do so, reduce your maximum Sanity by 1.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(34,9,'A Favor Granted','"That which you have asked for shall be done, initiate, but the cost must be borne by you. It must be borne by your flesh and bone."','You may choose to discard either an Environment mythos card currently in play or a Rumor mythos card (without triggering the Pass or Fail effects) in play. If you do so, reduce your maximum Stamina by 1.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(35,9,'A Blasphemous Transformation','"Do not fear these blessings. The changes will grant you the knowledge and abilities necessary to do that which we shall require of you.','You may draw a Skill. If you do, draw 2 Corruption cards. Otherwise, move to the street.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(36,9,'Get Rid of This','The summoning ritual has failed and it falls to you to find a way to hide the terrible results of the attempt.','Gain 1 monster trophy from the monster cup at random, ignoring <b>Endless</b>. Then lose 1 Sanity.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(37,9,'What Little of You Remains','Looking at the other cultists, seeing how changed they are, you begin to wonder if you''re still completely human. In fact, are you still human at all?','If you have no Corruption cards, you are <i>Blessed</i>. Otherwise, roll a die for each Corruption card you have. If you roll a 1, lose 1 Sanity. If you roll a 6, discard the Corruption card. Stop rolling if you go insane at any point.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(38,9,'Throw the Bones','You are given a handful of small animal bones and told to throw them. Afterwards, the cultists divine your failure by observing how the bones landed.','Make a <span class="check">Luck (+0) check</span> and gain 1 Clue token for each success. If you gain 3 or more Clue tokens, draw a Corruption card.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(39,9,'A Cryptic Vision','While the cult chants, you are overcome by a nightmarish vision filled with symbols and coded warnings.','Make a <span class="check">Lore (+0) check</span> and gain 1 Clue token for each success. If you gain 3 or more Clue tokens, draw a Corruption card.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(40,9,'Final Words','One of the cultists suddenly brings his hand to his chest. He wants to tell you the secrets he''s learned about the cult and struggles to form the words before he dies.','Make a <span class="check">Speed (+0) check</span> and gain 1 Clue token for each success. If you gain 3 or more Clue tokens, draw a Corruption card.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(41,9,'Pass No Further','"Your desire for knowledge is great, but you are not prepared for what lies within that cave."','Make a <span class="check">Sneak (+0) check</span> and gain 1 Clue token for each success. If you gain 3 or more Clue tokens, draw a Corruption card.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(42,9,'Primitive Ritual','"The cutting and burning of the flesh pushes the mind into its dark places, if you can endure the pain."','Make a <span class="check">Fight (+0) check</span> and gain 1 Clue token for each success. If you gain 3 or more Clue tokens, draw a Corruption card.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(43,9,'Drink From The Cup','The foul liquid burns your throat. Through the dizziness and nausea, your mind reaches out to some hideous monstrosity.','Lose 2 Stamina. Then, if you have not been knocked unconscious, gain 2 Clue tokens and you may remove 1 monster with a hexagon dimensional symbol from Arkham, the Sky, or the Outskirts.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(44,9,'Join the Chant','The voices grow louder, repeating the phrase, and as you shout along with everyone else, you feel as if you are being pulled out of your own skin.','Make a <span class="check">Will (+0) check</span> and gain 1 Clue token for each success. If you gain 3 or more Clue tokens, draw a Corruption card.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(45,9,'Reborn in Flames','"Step into the fire! Cast off your meaningless baubles and become more than mere human!"','You may discard 2 Common Items to restore your Sanity and Stamina to their maximums. If you do so, draw a Corruption card.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(46,9,'Shattering Vision','You fall trembling to the ground. Before you a horrific vision unfolds, a cruel gift from Shub-Niggurath.','You may lose 2 Sanity to look at the top three cards of the mythos deck and return them to the top of the deck in any order you choose. If you do so, draw a Corruption card.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(47,9,'An Unnerving Discovery','Two others, their faces hidden in darkness, whisper to one another of the terrors that await.','Look at the top card of the mythos deck and either return the card to the top of the deck or discard it. Then draw a Corruption card.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(48,9,'The Dagger of Initiation','"Either we will have your friends'' loyalties or we will have your blood.','<p>If all investigators have a "One of the Thousand" Cult Membership, you are <i>Blessed</i>.</p><p>Otherwise, you must choose another investigator who may choose to draw a Corruption card and gain a "One of the Thousand" Cult Membership. If he does not, you lose 2 Stamina.</p>');

INSERT INTO "exhibitencountercard"(_id, expansionid, title, description, moves) VALUES(19,9,'They Will Never Let You Rest','A badly injured man clutches one of the Ancient Egyptian artifacts. He uses the last of his strength to give the object to you and warn you that the evil forces will pursue this item relentlessly. Gain an Exhibit Item and then take the Harried card if it is available.','Move the Ancient Whispers marker to the Southside Street Location');
INSERT INTO "exhibitencountercard"(_id, expansionid, title, description, moves) VALUES(20,9,'It Has Infected Your Soul','The rumors were true; you find one of the objects intended for the museum. But once you place your hands on it you can feel its evil sinking in to you. Gain an Exhibit Item and then take the Tainted card if it is available.','Move the Ancient Whispers marker to the Northside Street Location');
INSERT INTO "exhibitencountercard"(_id, expansionid, title, description, moves) VALUES(21,9,'Purge the Unclean','Father Michael has already searched this neighbourhood. He tells you he needs someone to help him destroy these abominable relics. If you do not currently have an Exhibit Item, take the Anointed card if it is available. Otherwise, nothing happens.','Move the Ancient Whispers marker to the Downtown Street Location');
INSERT INTO "exhibitencountercard"(_id, expansionid, title, description, moves) VALUES(22,9,'Someone Has to Take the Fall','The ancient object was right where you were told it would be. And now you''re right where you need to be for the police to blame you for the museum''s robbery. Gain an Exhibit Item and then take the Wanted card if it is available.','Move the Ancient Whispers marker to the French Hill Street Location');
INSERT INTO "exhibitencountercard"(_id, expansionid, title, description, moves) VALUES(23,9,'Its Power Still Lingers','The museum''s treasure was destroyed, but while touching the pieces that remain, your mind is taken to events that have yet to occur. Take the top card from the Exhibit Item deck and return it to the box. Then take the Visions card if it is available.','Move the Ancient Whispers marker to the Easttown Street Location');
INSERT INTO "exhibitencountercard"(_id, expansionid, title, description, moves) VALUES(24,9,'A Handful of Ashes','You grab the artifact you''d been seeking, but it collapses into dust and your mind suddenly opens to the thoughts of those around you. Take the top card from the Exhibit Item deck and return it to the box. Then take the Psychic card if it is available.','Move the Ancient Whispers marker to the Miskatonic University Street Location');
INSERT INTO "exhibitencountercard"(_id, expansionid, title, description, moves) VALUES(25,9,'Travelers in Need of Help','A group of museum curators from Cairo are having a hard time navigating Arkham. They seek your help getting one last artifact to Arkham''s museum. Gain an Exhibit Item and then take the Local Guide card if it is available.','Move the Ancient Whispers marker to the Merchant District Street Location');
INSERT INTO "exhibitencountercard"(_id, expansionid, title, description, moves) VALUES(26,9,'This Was a Set Up','You were lured here by a private investigator working for the museum. If you''re on the level, he may help you. If you do not currently have an Exhibit Item, take the Private Investigator card if it is available. Otherwise, nothing happens.','Move the Ancient Whispers marker to the Rivertown Street Location');
INSERT INTO "exhibitencountercard"(_id, expansionid, title, description, moves) VALUES(27,9,'A Curse on Thieves','Someone has written hieroglyphics on the wall, warning of a curse upon those who disturb the Pharaoh''s tomb. If you are currently <i>Cursed</i>, make a <span class="check">Luck (+0) check</span>. If you fail, you are <b>devoured</b>.','Move the Ancient Whispers marker to the Uptown Street Location');

INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(29,9,'An Unsettling Trend','For each investigator with a Bound Ally, raise the terror level by 1.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(30,9,'Traveler of the Paths','Each investigator with 2 or more Dark Pacts must immediately return all of his gate trophies face down to the bottom of the pile of gate markers.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(31,9,'Beyond Control','Each investigator with a Soul Pact gains 1 Power for each point of Sanity he currently has. He then reduces his maximum Sanity by 2.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(32,9,'Merely a Vessel','Each investigator with 1 or more Power tokens in Arkham is <i>delayed</i>. Each investigator with 1 or more Power tokens in an Other World is <i>lost in time and space</i>.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(33,9,'The Legacy of Blood','Each investigator with a Blood Pact is <b>devoured</b>. The new investigator chosen to replace him starts with a Blood Pact and 3 Power tokens in addition to his other fixed possessions.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(34,9,'So Easy to Break','Each investigator that has a Dark Pact but does not currently have a Blood Pact loses 2 Stamina.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(35,9,'His Undivided Attention','Draw the next 2 Reckoning cards from the deck and resolve them both, one at a time in the order drawn.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(36,9,'Blood Boils','Each investigator with a Blood Pact gains 1 Power for each point of Stamina he currently has. He then reduces his maximum Stamina by 2.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(37,9,'The Legacy of Madness','Each investigator with a Soul Pact is <b>devoured</b>. The new investigator chosen to replace him starts with a Soul Pact and 3 Power tokens in addition to his other fixed possessions.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(38,9,'The Barriers Crumble','A gate opens and a monster appears in each unstable location containing an investigator with 1 or more Dark Pacts (if there is not already a gate in that location).');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(39,9,'Lest You Wither Away','Each investigator may choose to immediately gain 1 or more Dark Pacts. Then, if there is at least 1 investigator who does not have a Dark Pact, each investigator who does have a Dark Pact reduces his maximum Stamina by 1.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(40,9,'Devotion Beyond Reach','Each investigator with a Bound Ally must discard all of his money and items.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(41,9,'The Voices Beckon','Each investigator may choose to immediately gain 1 or more Dark Pacts. Then, if there is at least 1 investigator who does not have a Dark Pact, each investigator who does have a Dark Pact reduces his maximum Sanity by 1.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(42,9,'Surrender Your Soul','Each investigator that has a Dark Pact but does not currently have a Soul Pact loses 2 Sanity.');
