PRAGMA foreign_keys=1;

INSERT INTO "expansion" VALUES(6,'Kingsport Horror',1);

INSERT INTO "board"(_id, title, expansionid) VALUES(4,'Kingsport',6);

INSERT INTO "neighbourhood" VALUES(17,4,'Central Hill');
INSERT INTO "neighbourhood" VALUES(18,4,'Harborside');
INSERT INTO "neighbourhood" VALUES(19,4,'South Shore');
INSERT INTO "neighbourhood" VALUES(20,4,'Kingsport Head');

INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(45,17,'7th House on the Left','7th House on the Left');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(46,17,'Congregational Hospital','Congregational Hospital');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(47,17,'St. Erasmus'' Home','St. Erasmus'' Home');

INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(48,18,'607 Water St.','607 Water St.');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(49,18,'North Point Lighthouse','North Point Lighthouse');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(50,18,'The Rope and Anchor','Rope and Anchor');

INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(51,19,'Artists'' Colony','Artists'' Colony');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(52,19,'Hall School','Hall School');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(53,19,'Neil''s Curiosity Shop','Neil''s Curiosity Shop');

INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(55,20,'Strange High House in the Mist','Strange High House in the Mist');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(56,20,'The Causeway','Causeway');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(57,20,'Wireless Station','Wireless Station');

INSERT INTO "otherworld"(_id, title, sort_title, red, green, blue, yellow, expansionid) VALUES(11,'The Underworld','The Underworld',0,1,1,0,6);
INSERT INTO "otherworld"(_id, title, sort_title, red, green, blue, yellow, expansionid) VALUES(12,'Unknown Kadath','Unknown Kadath',1,0,0,1,6);

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(364,17,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(364,45,'You come across a man in a tweed suit staring somewhat forlornly at one of the houses. Sighing, he says, "That woman just doesn''t understand how much I need that journal for my research." Looking up, he notices you. "Maybe you could help me out?" If you pass a <span class="check">Sneak (-2) check</span> or discard <b>Old Journal</b>, <b>Professor Morgan</b> thanks you. Take his Ally card, or if it''s not available, take the first <i><b>Weapon</b></i> from the Common Item deck.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(364,46,'Taking a wrong turn, you wind up in a supply closet and the door locks behind you. You are <i>delayed</i> while you wait for someone to let you out.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(364,47,'Hanging out with the old salts who live here for awhile, you play a few hands of bridge. Gain 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(365,17,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(365,45,'You come across a man in a tweed suit staring somewhat forlornly at one of the houses. Sighing, he says, "That woman just doesn''t understand how much I need that journal for my research." Looking up, he notices you. "Maybe you could help me out?" If you pass a <span class="check">Sneak (-2) check</span> or discard <b>Old Journal</b>, <b>Professor Morgan</b> thanks you. Take his Ally card, or if it''s not available, take the first <i><b>Weapon</b></i> from the Common Item deck.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(365,46,'If you are hurt, one of the orderlies bandages up some of your wounds for you. Gain 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(365,47,'"Sorry folks, it''s time for lights out! You can come back tomorrow, but for now you''ll all have to leave!" Move to the street.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(366,17,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(366,45,'Gladys Pickman, a kindly old woman, notices your interest in her home. "A grand old house, isn''t it? Why don''t you come in for some tea and cookies and I''ll tell you a bit about it." Gain 1 Sanity and 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(366,46,'Peering around the corner into a back alley, you watch in horror as a mass of white worms crawls out of a gnarled old man''s body. They envelop a hobo tied up nearby, disappearing into the man''s flesh and eating him alive. Pass a <span class="check">Will (-1) check</span> or roll a die and lose that much Sanity. Even if you pass, lose 1 Sanity unless you are immune to <b>Nightmarish</b>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(366,47,'Old Ben James is visiting St. Erasmus'' Home for Retired Mariners to spin an entertaining yarn for the old sea dogs. Pass a <span class="check">Lore (-1) check</span> to recognize a helpful fact buried in the story and gain 1 Clue token.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(367,17,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(367,45,'Wandering through the neighbourhood, you run into a little old lady out watering her roses. Talking to her, you find that her name is Gladys Pickman, and before you know it, hours have passed in a fascinating conversation about Kingsport''s history. You are <i>delayed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(367,46,'Walking through the graveyard near the hospital, you overhear two gravediggers gossiping about some strange things that recently happened nearby. Gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(367,47,'Danny Houghton, one of the ancient mariners here, grabs your arm firmly and urgently whispers a tale of his youth into your ear. You hear how the Kingsport fishing fleet trespassed into Innsmouth waters and were attacked, finny hands pulling under the boats and their crews. Lose 1 Sanity and gain 1 Clue token.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(368,17,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(368,45,'Earnestly, you try to convince Gladys Pickman to allow you to look through her home for old books. Make a <span class="check">Will (-1) check</span>. If you fail, nothing happens. If you pass, you may then pass a <span class="check">Luck (-1) check</span> to take the first <i><b>Tome</b></i> from the Unique Item deck.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(368,46,'Walking through the graveyard, you are frightened by a strange green fire that seems to flicker off in the distance between the graves. Move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(368,47,'Basil Elton, the old lighthouse keeper, is visiting friends here and invites you out to see the lighthouse. You may move to the North Point Lighthouse and draw 2 cards, encountering one card of your choice and discarding the other.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(369,17,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(369,45,'Earnestly, you try to convince Gladys Pickman to allow you to look through her home for old books. Make a <span class="check">Will (-1) check</span>. If you fail, nothing happens. If you pass, you may then pass a <span class="check">Luck (-1) check</span> to take the first <i><b>Tome</b></i> from the Unique Item deck.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(369,46,'You explore an ancient crypt in the cemetery and come across a giant mass of white grave worms. Lose 2 Sanity. In addition, any Crawling Ones in Arkham (including the Sky and the Outskirts) move here and encounter you.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(369,47,'You are startled to notice a primitive idol of the god Dagon on the mantle. Pass a <span class="check">Lore (-2) check</span> to decipher the writing on it. If so, gain 2 Clue tokens and lose 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(370,17,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(370,45,'Strolling along the lane, you run into Gladys Pickman out weeding her garden. She takes a liking to you, and the two of you spend several hours discussing the latest neighbourhood gossip. You are <i>delayed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(370,46,'Making your way through the private wards, you come across a poor old soul who has recently passed away, but has not yet been noticed by the orderlies. Sitting on a table near him is a gold watch. You may gain $4, but if so, you must pass a <span class="check">Luck (-1) check</span> or be <i>Cursed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(370,47,'Doc Warren comes around to check up on the old timers here, and offers to take a look at you too. If you accept, pass a <span class="check">Luck (-1) check</span> to gain 1 Stamina. If you fail, he makes a mistake due to his encroaching senility and you lose 1 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(371,17,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(371,45,'Feeding her a line about a rat infestation in the neighbourhood, you convince Gladys Pickman to let you inspect her basement. There, behind an old wooden box, you find a concealed passage. Immediately move to the Causeway and have an encounter there.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(371,46,'You stumble across a wormhole-riddled corpse lying behind a gravestone. Lose 1 Sanity. Mustering your courage, you turn it over to see who it was. If you pass a <span class="check">Luck (-2) check</span>, you don''t recognize the man, but he was clutching an odd item. Gain 1 Unique Item. If you fail, you don''t reecognize the man, but he has nothing of value.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(371,47,'You notice a rare and ancient artifact sitting atop a sea chest. Pass a <span class="check">Will (-2) check</span> to convince the old salt who owns it to give it to you. Gain 1 Unique Item.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(372,17,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(372,45,'Gladys shakes her head at you. "I''m sorry, dearie, I''m afraid my rheumatism has been acting up today. I really just want to lie down." Move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(372,46,'"You seem like you''ve got a level head. Care to help me with an experiment?" If you pass a <span class="check">Lore (-2) check</span> or discard Research Materials, <b>Dr. Herbert West</b> offers to join you in thanks for your assistance. Take his Ally card, or if it''s not available, gain 3 monster trophies from the monster cup at random, ignoring <b>Endless</b>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(372,47,'Danny Houghton, half dozing in his chair, begins to talk, muttering about the horrible creatures he''s seen during his time at sea. Lose 1 Sanity and gain 1 Clue token.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(373,17,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(373,45,'One of the neighbourhood men is throwing out some old papers, and you catch a glimpse of something interesting. "Mind if I look at these?" you ask politely. Scowling a bit, the man shrugs, "Suit yourself, it''s just trash." Pass a <span class="check">Luck (-1) check</span> to gain 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(373,46,'Taking a shortcut through the cemetery, you are horrified when something grabs your foot. Lose 1 Sanity before you realize you''ve snagged yourself on a root.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(373,47,'Nets Foster tries to sell you one of his wooden carvings. They''re worthless, but he''s a convincing salesman. Pass a <span class="check">Will (-2) check</span> or lose $2.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(374,17,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(374,45,'As you walk down the street, you are suddenly overwhelmed by a vision of Kingsport &mdash; not as it is &mdash; but as it was back when mighty sailing ships filled the harbor, and cars had yet to be invented. Lose 1 Sanity, but gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(374,46,'Catching him in a rare moment of calm, you take some time to talk to Dr. Harris. Gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(374,47,'An old woman leans up against the fence, gasping for air. "Don''t mind me, young''un. These lungs are just old and worn out." Still, something deep inside tells you that you can help her out, if you''re willing to make a sacrifice. If you discard 1 Skill, she smiles and says, "I don''t know what you did, but I''m in your debt." <b>Granny Orne</b> joins you. Take her Ally card, or if it''s not available, draw the top five Unique Items and keep one.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(375,17,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(375,45,'Sneaking into an old basement to snoop around, you come across an underground labyrinth of passages beneath the city. Before you can get too far, however, a monster attacks you! The nearest monster moves here and encounters you.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(375,46,'Exploring downstairs, you come across the door to the boiler room. Pass a <span class="check">Luck (-1) check</span> to slip in and gain 1 Common Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(375,47,'An old woman leans up against the fence, gasping for air. "Don''t mind me, young''un. These lungs are just old and worn out." Still, something deep inside tells you that you can help her out, if you''re willing to make a sacrifice. If you discard 1 Skill, she smiles and says, "I don''t know what you did, but I''m in your debt." <b>Granny Orne</b> joins you. Take her Ally card, or if it''s not available, draw the top five Unique Items and keep one.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(376,17,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(376,45,'Gladys Pickman, noticing your interest, offers to sell you some of the old papers she found in her house. Pay $2 to gain 1 Spell and 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(376,46,'You notice a creepy old man dragging a sack near the graveyard. If you want to investigate his suspicious activity, pass a <span class="check">Sneak (-2) check</span> to gain 1 Unique Item and 1 Spell. If you fail, roll 2 dice and add them together. You lose that many total points of Sanity and/or Stamina, split up however you like.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(376,47,'George Cotton, the local stonecutter, stops in to say hello to some of the old salts. Afterwards, he talks about the strange goings-on at the nearby cemetery. Gain 1 Clue token.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(377,17,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(377,45,'Spotting a glint of light from a nearby pile of rubbish, you move to investigate. Pass a <span class="check">Luck (-2) check</span> to gain 1 Unique Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(377,46,'"You seem like you''ve got a level head. Care to help me with an experiment?" If you pass a <span class="check">Lore (-2) check</span> or discard Research Materials, <b>Dr. Herbert West</b> offers to join you in thanks for your assistance. Take his Ally card, or if it''s not available, gain 3 monster trophie from the monster cup at random, ignoring <b>Endless</b>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(377,47,'One of the kind old men who live here offers you a strange carving. Pass a <span class="check">Lore (-1) check</span> to gain 1 Spell.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(378,18,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(378,48,'An old man with piercing eyes opens the door before you can knock. Meeting your gaze calmly, he says, "It''s clear that you need my help, but do you deserve it?" If you spend 1 Stamina and 1 Sanity, <b>The Terrible Old Man</b> joins you. Take his Ally card, or gain 2 Spells if it''s not available.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(378,49,'Ambling up the trail to the lighthouse, you knock on the door, but no one answers. Apparently you''re not the only one out enjoying this brisk, clear day. Nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(378,50,'Jonas Rigg, the bartender, looks you over as you enter the dim, smoky tavern. "I''m guessing you want to buy something besides drinks." You may buy up to 3 Clue tokens for $2 each.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(379,18,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(379,48,'An old man with piercing eyes opens the door before you can knock. Meeting your gaze calmly, he says, "It''s clear that you need my help, but do you deserve it?" If you spend 1 Stamina and 1 Sanity, <b>The Terrible Old Man</b> joins you. Take his Ally card, or gain 2 Spells if it''s not available.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(379,49,'Staring out across the sea, you see a dark ship that gleams like obsidian pass between two islands, driven by oars. After rubbing your eyes, this ship is gone. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(379,50,'The mood in the tavern is jovial tonight, and you join in singing a chorus of rousing songs. Restore your Sanity to its maximum.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(380,18,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(380,48,'Spying a strange bottle sitting in the window, you walk towards it for a closer look, only to have it begin to shake by itself, projecting an area of malevolence towards you. Stumbling backwards in sudden terror, you lose 1 Sanity and move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(380,49,'Noticing an older gentleman slip on the trail up ahead, you move to catch him. If you pass a <span class="check">Speed (-1) check</span>, he introduces himself as Basil Elton, and &mdash; seeing something in your eyes &mdash; offers his services. If his Ally card is available, take it, then close the North Point Lighthouse for the rest of the game and move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(380,50,'Someone bumps into you at the crowded bar. Pass a <span class="check">Luck (-1) check</span> or lose $3, if able. If you don''t have any money or you fail the check, nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(381,18,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(381,48,'Cruel eyes glitter at you from the doorway. "What business have you here?" Pass a <span class="check">Will (-2) check</span> or invisible forces push you roughly into the street. Lose 2 Sanity, 2 Stamina, and move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(381,49,'A terrifying storm rolls in just as you reach the lighthouse. Basil Elton, the lighthouse keeper, asks for your help keeping the beacon lit. If you accept, make a <span class="check">Will (-2) check</span>. If you pass, the light stays lit throughout the storm, and you are <i>Blessed</i>. If you fail or refuse to help, the light goes out and there is a terrible shipwreck. Many lives are lost and the terror level increases by 1.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(381,50,'Sliding into a booth, you sit on something. Picking it up, you realize that someone left an item behind. If you pass a <span class="check">Luck (-1) check</span>, it may prove useful to you. Gain 1 Common Item.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(382,18,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(382,48,'As you approach the door to knock, a thin book is pushed out from under it. Obviously, someone wants you to have it. Take the first <i><b>Tome</b></i> from the Common Item deck.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(382,49,'Noticing an older gentleman slip on the trail up ahead, you move to catch him. If you pass a <span class="check">Speed (-1) check</span>, he introduces himself as Basil Elton, and &mdash; seeing something in your eyes &mdash; offers his services. If his Ally card is available, take it, then close the North Point Lighthouse for the rest of the game and move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(382,50,'Jonas Rigg, the bartender, looks you over as you enter the dim, smoky tavern. "I''m guessing you want to buy something besides drinks." You may buy up to 3 Clue tokens for $2 each.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(383,18,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(383,48,'"Quickly, come here, I have news." A voice whispers to you from a nearly closed window. Pass a <span class="check">Will (-1) check</span> to gain Clue tokens equal to the number of successes you rolled.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(383,49,'You notice an odd ship docked by the shore, but no one else seems to pay it any mind. If you decide to swim out to the ship, roll a die to see how you are received. On a success, move to the second area of any Other World of your choice, even if there isn''t currently an open gate leading there. On a failure, you are <i>lost in time and space</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(383,50,'Some of the locals are cooking up some fish stew in the fireplace. After a wary glance, you are invited to join them. Restore your Stamina to its maximum.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(384,18,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(384,48,'No one here appears to be home, and you''ve heard tales that the old man who lives here has a stash of money. You may choose to make a <span class="check">Sneak (-2) check</span>. If you pass, you discover some of it. Gain $10. If you fail, you are caught in the act. Move to the street, and you are <i>Cursed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(384,49,'Basil Elton, the lighthouse keeper, talks with you about strange ships he''s seen moored just off the island &mdash; ships that no one else claims to have seen. Gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(384,50,'Tonight, the old Yankee fishermen who frequent the tavern are trading long, rambling tales of the sea. You listen for awhile, but although the tales are entertaining, they are uninformative. Nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(385,18,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(385,48,'As you walk past a decrepit old house, an ancient, but still vigorous man throws open the door and walks purposefully up to you. "Take this. Wear it." He roughly presses a small fetish bag into your hands. Take this card. Instead of losing 1 Stamina, you may put a Clue token on this card. Return this card to the box if it ever has 3 Clue tokens on it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(385,49,'"Wait here, I think I''ve got an old heirloom that may help you." Basil Elton goes into the lighthouse to look. If you pass a <span class="check">Luck (-1) check</span>, gain 1 Unique Item. If you fail the check, he can''t find it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(385,50,'Tonight, the old Yankee fishermen who frequent the tavern are trading long, rambling tales of the sea. You listen for awhile, but although the tales are entertaining, they are uninformative. Nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(386,18,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(386,48,'As you walk past a decrepit old house, an ancient, but still vigorous man throws open the door and walks purposefully up to you. "Take this. Wear it." He roughly presses a small fetish bag into your hands. Take this card. Instead of losing 1 Stamina, you may put a Clue token on this card. Return this card to the box if it ever has 3 Clue tokens on it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(386,49,'Sitting next to Basil Elton on the edge of a sea cliff, he tells you stories about his adventures in the Dreamlands on a White Ship, and his fateful search for fabled Cathuria &mdash; a search that left him unable to dream ever again. Gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(386,50,'"Sorry folks, it''s midnight. Time to close up." Move to the street.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(387,18,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(387,48,'The door is locked and there''s no answer. Seeing nothing here of further interest, you move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(387,49,'A haunting, beautiful melody draws you to the misty sea cliffs. It seems to be coming from out to sea, and it pulls at you with unrelenting pressure. Pass a <span class="check">Will (-1) check</span> or roll a die and lose that much Stamina as you leap from the cliff before you come to your senses.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(387,50,'A pale, ordinary man stares out the window at the peak of the Kingsport Head as if longing for something. Pass a <span class="check">Fight (-2) check</span> or discard Lucky Cigarette Case to spark his interest in you and his surroundings. If so, he introduces himself as <b>Thomas Olney</b>. Take his Ally card, or if it''s not available, remove 1 doom token from the Ancient One''s doom track.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(388,18,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(388,48,'You try to pump the people of the neighbourhood for information about the Terrible Old Man, but they prove reluctant to talk. You are <i>delayed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(388,49,'Basil Elton is chatting with several old fishermen. Listening to their friendly conversation, you gain 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(388,50,'A pale, ordinary man stares out the window at the peak of the Kingsport Head as if longing for something. Pass a <span class="check">Fight (-2) check</span> or discard Lucky Cigarette Case to spark his interest in you and his surroundings. If so, he introduces himself as <b>Thomas Olney</b>. Take his Ally card, or if it''s not available, remove 1 doom token from the Ancient One''s doom track.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(389,18,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(389,48,'As you knock, the door swings open before you. Cautiously entering, you see a number of bottles containing lead pendulums. Gradually, but with increasing violence, the pendulums begin to swing, and voices whisper terrible secrets into your ears. Gain 2 Clue tokens, but you are reduced to 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(389,49,'Basil Elton, the lighthouse keeper, politely invites you in for dinner. Gain 1 Sanity and 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(389,50,'Troubles weighing heavily upon your worried brow, you drink rather more than you intended. If your current Stamina is 3 or less, you are <i>delayed</i> and lose 1 Item of your choice.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(390,18,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(390,48,'It appears as though no one''s home. You may try to pass a <span class="check">Sneak (-1) check</span> to snoop around and gain 1 Unique Item. If you fail, shouting voices erupt from all around you. You are <i>Cursed</i> and move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(390,49,'Sitting on the edge of a sheer sea cliff, Basil Elton clutches a mostly empty whiskey bottle and sings melancholy songs. Worried, you stay to make sure nothing happens to him. You are <i>delayed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(390,50,'A brawl breaks out between a couple of the regulars, and Jonas Rigg has to fire his .45 in the air to break it up. Pass a <span class="check">Will (-1) check</span> or move to the street with most of the startled crowd.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(391,18,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(391,48,'"Listen!" An old man with a piercing gaze locks eyes with you, and you feel strange information squirming around in your head. Pass a <span class="check">Will (-1) check</span> to gain 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(391,49,'Basil Elton tells you some tales of his adventures, offering you some advice on how to interact with the denizens of other worlds. You may immediately pay only 1 gate trophy or 5 toughness worth of monster trophies to gain the Captain of the White Ship card. If you cannot or will not pay, you lose the opportunity and will have to pay the normal cost if you later change your mind.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(391,50,'Unfortunately, due to Prohibition, the quality of liquor isn''t what it used to be. You get a bad batch and wind up vomiting in the alley. Lose 1 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(392,19,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(392,51,'As you walk down the street, a tomcat rubs himself against your legs. "Hello there, puss. Where did you come from?" If you pass a <span class="check">Luck (-1) check</span>, you name the cat <b>Foolishness</b>. Take his Ally card, or if it''s not available, remove 2 Rift tokens from the Kingsport board.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(392,52,'You have a long talk to Principal Miles. Pass a <span class="check">Will (-1) check</span> to gain 1 Clue token, otherwise move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(392,53,'"I guarantee you''ve never seen anything like this!" Neil holds up a jar containing a small white creature. You may pay $1 to examine it and make a <span class="check">Lore (-1) check</span>. If you pass, gain 2 Clue tokens. If you fail, you gain 1 brood token if Eihort is the Ancient One. Otherwise, nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(393,19,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(393,51,'As you walk down the street, a tomcat rubs himself against your legs. "Hello there, puss. Where did you come from?" If you pass a <span class="check">Luck (-1) check</span>, you name the cat <b>Foolishness</b>. Take his Ally card, or if it''s not available, remove 2 Rift tokens from the Kingsport board.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(393,52,'Principal Miles is suspicious of your presence at his school. Pass a <span class="check">Will (-2) check</span> or be <i>arrested</i> and go to the Police Station.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(393,53,'Neil shows you a grey, warty thing in a jar. As you stare, it slowly opens its eyes and meets your gaze. You may pay $1 to make a <span class="check">Lore (-1) [2] check</span>. If you pass, you gain 2 Clue tokens and draw 3 Spells, keeping one of them. If you don''t pay or fail the check, nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(394,19,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(394,51,'Suddenly, an artist''s face lights up as he sees you. "Perfect! You''re just what I need for my next painting! Please, sit for me, won''t you? I can''t pay much, but I''ll make it worth your while." If you agree, you are <i>delayed</i> and gain $2.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(394,52,'You encounter a lovely young lady visiting her old school. She smiles at you, and something intangible passes between the two of you. If you add 2 Rift progress tokens to any spaces on the Rift track, she introduces herself as <b>Asenaith Waite</b>. Take her Ally card, or if it''s not available, gain 1 Retainer and 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(394,53,'Neil shows you a dried-out cat-thing in a jar of alcohol. You may pay $1 to examine it closer, making a <span class="check">Lore (-2) check</span>. If you pass, you gain 3 Clue tokens. If you fail, you lose 1 Sanity. If you don''t pay, nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(395,19,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(395,51,'"Come on, love. Let''s go back to my place and I''ll paint your portait for you." A tall, dark-haired lothario presses his affections upon a reluctant lady nearby while holding onto her arm. If you wish, you may interfere. If so, pass a <span class="check">Fight (-1) check</span> or a <span class="check">Will (-2) check</span> to drive him off and gain 1 Sanity. If you fail, lose 1 Stamina as he backhands you cruelly before storming off.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(395,52,'You have a pleasant little chat with some of the students. Gain 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(395,53,'Neil rubs an ancient carving. "Those who''ve touched it say they can feel its power." You may pay $1 to touch it. If so, pass a <span class="check">Luck (-3) check</span> to gain 1 Skill. If you fail the check, lose 3 Sanity. If you don''t pay, nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(396,19,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(396,51,'"Hi there. I haven''t seen you around here before, have I? Why not join me for lunch? I''m Elizabeth Brundage." She turns out to be a motherly figure, keeping tabs on the artists in Kingsport. "Terrible what happened to poor Charles Baxter, really. He was such a promising poet, and to take his own life like that." She sighs, and you continue drawing the local gossip out of her. Gain 1 Clue token and 1 Sanity from pleasant company.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(396,52,'Searching the school''s archives, you read about the history of Kingsport. Gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(396,53,'"They say it''s good luck to make an offering to this ancient stone statue. Originally it was the god of a Polynesian tribe." You may pay $1 to make a <span class="check">Will (-2) check</span>. If you pass, you are <i>Blessed</i>. If you fail, you are reduced to 1 Sanity. If you don''t pay, nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(397,19,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(397,51,'As you stroll past a pale, dark-haired woman, she mumbles to herself, "Charles, I''m sorry. It was all my fault." Concerned, you take a second look at her and see a young woman consumed with guilt and grief. If you talk to her, make a <span class="check">Will (-2) check</span>. If you pass, you find out that her name is Corla Fistienne and her ex-boyfriend recently committed suicide. You leave feeling that you''ve helped alleviate her guilt and prevented her from doing anything stupid. Gain 2 Sanity. If you fail or do not try to talk to her, the terror level increases by 1 when news of her suicide reaches the newspapers the next day.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(397,52,'The halls are too crowded with students to proceed. Move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(397,53,'Neil buys a worthless, but odd-looking trinket from you. Gain $1.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(398,19,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(398,51,'You pause to watch a large bearded man sculpt in his front yard. His name is Ted Covey, and he proves to be loud, boisterous, and a good joke teller. You talk with him awhile longer, then move on with a smile on your face. Gain 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(398,52,'You spend some time reading Eben Hall''s original papers. You are <i>delayed</i>. Pass a <span class="check">Lore (-1) check</span> to gain 1 Spell and 1 Clue token. If you fail, lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(398,53,'You see a strange young man dickering with Neil over the price of a musty book. "Blast you, man! Just set a price, already!". It turns out that Neil''s more interested in a couple of your items, however. If you discard 2 Common Items, the young man gives his name as <b>Charles Dexter Ward</b>. Take his Ally card, or if it''s not available, draw the top 5 Spells and keep one of them.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(399,19,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(399,51,'If you have a <i><b>Tome</b></i>, a gaunt man with a maniacal gleam in his eyes comes up to you in the street. Introducing himself as Jim Redmond, he offers to buy any one of your <i><b>Tomes</b></i> for $5. If you sell it to him, return it to the box, gain $5, and lose 1 Sanity as you worry what he''s going to do with it. If you do not sell a <i><b>Tome</b></i> to Jim, or do not have one, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(399,52,'You read a book in the library about some horrible Polynesian rituals. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(399,53,'You see a strange young man dickering with Neil over the price of a musty book. "Blast you, man! Just set a price, already!". It turns out that Neil''s more interested in a couple of your items, however. If you discard 2 Common Items, the young man gives his name as <b>Charles Dexter Ward</b>. Take his Ally card, or if it''s not available, draw the top 5 Spells and keep one of them.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(400,19,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(400,51,'At a small corner bar, you run into Derek Minot, who is busily getting drunk. Seeing a sympathetic ear, he tells you the tragic tale of his roommate, who recently killed himself. The tale is unpleasant and peculiar, making you suspect unnatural influences at work. Pass a <span class="check">Will (-2) check</span> or lose 1 Sanity and 1 Stamina. In any event, gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(400,52,'Having gotten permission to look through the archive in the basement, you come across a parchment signed by Eben Hall. Pass a <span class="check">Lore (-1) check</span> to gain 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(400,53,'Neil shows you his collection of primitive items. Something among them catches your eye. Draw 1 Unique Item. You may buy it for its list price plus $1.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(401,19,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(401,51,'You come across an odd book of poetry entitled <i>Dreams and Fancies</i>. If you read it, make a <span class="check">Luck (+0) check</span> and consult the following chart:<br /><br />Successes:<br /><table><tr><td class="nowrap">0)</td><td>You are reduced to 0 Sanity.</td></tr><tr><td class="nowrap">1)</td><td>Gain 2 Clue tokens and lose 2 Sanity.</td></tr><tr><td class="nowrap">2+)</td><td>Gain 3 Clue tokens and lose 1 Sanity.</td></tr></table>');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(401,52,'Looking through the school''s archive, you find papers detailing the 1722 raid on the Congregational Church. Fascinated, you read it carefully. Gain 3 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(401,53,'Neil offers to sell you a book. You may pay $3 to take the first <i><b>Tome</b></i> from the Unique Item deck.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(402,19,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(402,51,'A silver-tongued young painter tries to sell you one of his paintings. Pass a <span class="check">Will (-1) check</span> or lose $3, if able. If you fail the check and have less than $3, he sells you the painting for whatever you have. Lose all your money.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(402,52,'Among the papers in the archive, you discover some signed by Asenaith Waite. Pass a <span class="check">Lore (-1) check</span> to gain 1 Spell. Whether you pass or not, you must then pass a <span class="check">Will (-1) check</span> or lose 2 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(402,53,'Neil shoes you his collection of unusual stuffed animals. Seems he likes to practice taxidermy in his spare time. Silently, you resolve not to accept anything to drink from him. Pass a <span class="check">Lore (-1) check</span> to gain 1 Clue token from examining the animals.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(403,19,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(403,51,'An unshaven, down-on-his-luck painter sits on the street corner, selling some of his possessions to make ends meet. Draw 1 Common Item. You may buy it for $2, regardless of its list price. If you don''t buy the item, discard it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(403,52,'You stumble across an excerpt from the Necronomicon in the archives. Pass a <span class="check">Lore (-1) [2] check</span> to search the Spell deck and take a Spell of your choice.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(403,53,'Neil rambles on as he gives you the guided tour. It''s entertaining, but ultimately useless. Nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(404,19,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(404,51,'Sitting comfortably at an outdoor table in front of a picturesque caf&eacute;, you doze off. Have one encounter in the Dreamlands, then return here.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(404,52,'You encounter a lovely young lady visiting her old school. She smiles at you, and something intangible passes between the two of you. If you add 2 Rift progress tokens to any spaces on the Rift track, she introduces herself as <b>Asenaith Waite</b>. Take her Ally card, or if it''s not available, gain 1 Retainer and 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(404,53,'Neil rambles on as he gives you the guided tour. It''s entertaining, but ultimately useless. Nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(405,19,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(405,51,'Passing a thin, pale artist who has a nasty twitch, you glance at one of his paintings and your horrified gaze is immediately captured. Pass a <span class="check">Will (-1) check</span> or lose 1 Sanity and become <i>delayed</i> as you faint upon seeing the nightmarish creature he has depicted.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(405,52,'Underneath some papers in the archive, you see a glint of light. Pass a <span class="check">Luck (-2) check</span> to gain 1 Unique Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(405,53,'"Wow! That would look great next to the Babylonian scroll cylinders!" Neil offers to buy a Unique Item from you for $3 more than its list price.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(406,20,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(406,55,'A window opens, and a strange, gentle man dressed in archaic clothes smiles at you. If you pass a <span class="check">Will (-2) check</span> check or discard Ancient Tome, he introduces himself as <b>William Bain</b> and offers you his help. Take his Ally card. If it isn''t available, you are <i>Blessed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(406,56,'You are winded from the hard climb and stop to rest. You are <i>delayed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(406,57,'Harsh, buffeting winds force you to cling to the cliffside in terror. You are <i>delayed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(407,20,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(407,55,'A window opens, and a strange, gentle man dressed in archaic clothes smiles at you. If you pass a <span class="check">Will (-2) check</span> check or discard Ancient Tome, he introduces himself as <b>William Bain</b> and offers you his help. Take his Ally card. If it isn''t available, you are <i>Blessed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(407,56,'Pausing, you stop to admire the clear blue sky. Nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(407,57,'Inching your way across a narrow ledge, you make the mistake of looking down at the dizzying fall below you. Lose 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(408,20,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(408,55,'You just have one last chasm to cross, but it looks rather dangerous. Pass a <span class="check">Fight (-1) check</span> or move to the Wireless Station.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(408,56,'You slowly clamber up the stone formation knows as the Face of Neptune. Pass a <span class="check">Fight (-2) check</span> or lose 2 Stamina and move to Harborside Streets.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(408,57,'You pause to look over the construction site, marveling at man''s ability to encroach even here, in this isolated, haunting place. Nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(409,20,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(409,55,'There are no doors leading into the strange old house built on the peak here, but you find an old book leaning against one of the walls, as though someone left it for you. If you pass a <span class="check">Luck (-1) check</span>, it is a particularly rare book. Take the first <i><b>Tome</b></i> from the Unique Item deck. If you fail, it''s still a useful book, but not as rare. Take the first <i><b>Tome</b></i> from the Common Item deck.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(409,56,'The causeway ends here at a precipice that overlooks the sea, and for one mad instant, you long to hurl yourself from the cliff. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(409,57,'"Hey! Get out of here!" Hiram Grumbacher, the construction foreman, angrily runs you off the construction site. Move to the Causeway.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(410,20,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(410,55,'An open window seems particularly inviting. If you climb inside, you discover several sea chests. Pass a <span class="check">Luck (-1) check</span> to find something useful in them and gain 1 Common Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(410,56,'You lean against a wooden railing that protects visitors from falling off the cliffside accidentally and just gaze out to sea for awhile. Nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(410,57,'You come across a pleasant, white-haired young man. Heh introduces himself as Dr. Hamlin Hayes and tells you about the Wireless Station they''re building here. "When it''s completed, we''ll be able to send and receive wireless messages all the way to Antarctica!" Gain 1 Sanity and 1 Stamina from the rest and the pleasant conversation.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(411,20,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(411,55,'William Bain is here, dressed in his curiously outdated clothing, and he teaches you a spell. Gain 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(411,56,'As you are climbing, a rock falls towards you. Pass a <span class="check">Speed (-2) check</span> or lose 2 Stamina and move to Harborside Streets.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(411,57,'You encouner a bespectacled young man named David Stoll and make the mistake of asking him about the Wireless Station. He subjects you to a long-winded, technical explanation. You are <i>delayed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(412,20,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(412,55,'William Bain is here, and he takes you to visit the Dreamlands. Move to the Dreamlands and draw 2 cards. encountering one and discarding the other, then return.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(412,56,'You find yourself nearly fainting in exhaustion during the hard climb. Lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(412,57,'"Hey there! What are you doing here?" Will Critchett, a muscular, unpleasant worker demands that you explain your presence on the construction site. Pass a <span class="check">Will (-2) check</span> or move to the Causeway.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(413,20,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(413,55,'William Bain is here, and he takes you to visit the Dreamlands. Move to the Dreamlands and draw 2 cards, encountering one and discarding the other, then return.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(413,56,'Pulling yourself up the cliff, you come face-to-face with a snake. Pass a <span class="check">Will (-2) check</span> or lose 2 Sanity, 1 Stamina, and move to Harborside Streets.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(413,57,'Looking up into the night sky, you are horrified to see large, black things circling overhead. Lose 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(414,20,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(414,55,'William Bain offers to lend you a hand. You may immediately move to the open gate of your choice and enter it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(414,56,'In a lonely spot on the cliffside, you are suddenly gripped by a strange, terrifying vertigo. Pass a <span class="check">Luck (-2) check</span> or lose 2 Sanity and move to Harborside Streets.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(414,57,'A couple of friendly workers share their lunch with you. Gain 2 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(415,20,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(415,55,'After a vist with William Bain, he performs a ritual prayer. Shortly thereafter, there is a knock at the door and he opens it to reveal grey, hoary Nodens. You explain recent events to him, and he frowns, fearsomely. Remove 2 doom tokens from the Ancient One''s doom track, but lose 3 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(415,56,'You come across some strange, rubbery bones, and a featureless skull. Lose 1 Sanity, then gain 1 Unique Item, as you find something the creature was carrying when it died.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(415,57,'The workers yell as they lose control of a heavy metal pole they were lifting into place. It falls towards you! Pass a <span class="check">Speed (-2) check</span> or you are reduced to 0 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(416,20,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(416,55,'You visit with the strange, otherworldly William Bain for awhile, when suddenly he hushes you, frantically locks the door and all the windows, and then douses the light. The two of you crouch in silence as a chilling shadow makes its way around the house, trying every door and window before leaving. You are <i>delayed</i> and lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(416,56,'Wiping the sweat from your brow, you stop to rest on a rock for awhile. You are <i>delayed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(416,57,'Suddenly, the ground collapses underneath you! Pass a <span class="check">Fight (-2) check</span> or lose 2 Stamina and move to the Causeway.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(417,20,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(417,55,'You plead with William Bain for assistance. If you pass a <span class="check">Will (-1) check</span>, he agrees and works a powerful spell. Remove all Rift progress tokens from one Rift, closing it immediately. If you fail, he refuses, explaining that he cannot interfere with the world of Man without endangering himself.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(417,56,'You find a decaying scroll weighted down with a rock. Gain 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(417,57,'Tucked into a crevice, you find 1 Common Item.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(418,20,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(418,55,'You sit and chat with the pleasant, if old-fashioned, William Bain. He seems to be very poorly informed of the outside world, but extremely knowledgable of more exotic subjects. Nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(418,56,'The rock crumbles beneath you, and you slip and fall. Move to the Harborside Streets.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(418,57,'Spotting a glint of metal on the ground, you pick it up and dust it off, only to reveal a gold coin. Gain $2.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(419,20,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(419,55,'You talk with William Bain for a time, and he grows increasingly nervous. If you are <i>Cursed</i>, you find yourself suddenly overwhelmed with terror and hurl yourself out the only door to the small house. As the door opens directly over the cliff, you fall to the sea below and are <b>devoured</b>. If you are not <i>Cursed</i>, you control yourself, and nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(419,56,'You discover a secret trail. Move to the Wireless Station and immediately have an encounter there.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(419,57,'Rain makes the trail slippery and treacherous. Pass a <span class="check">Luck (-2) check</span> or lose 2 Stamina and move to the Causeway.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(420,1,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(420,2,'An absentminded orderly hands you a clipboard containing the wrong form. You''re about to point out his mistake when he snaps, "I haven''t got all day! Are you the next of kin, or aren''t you?" You sign the form to defuse his anger, and he hands you a bag containing some deceased soul''s personal effects. Among then, you find $4.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(420,1,'"You''ve miscounted," says the teller, re-counting your deposit and demonstrating that &mdash; sure enough &mdash; you had two dollars more than you thought. Gain $2.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(420,3,'AS you pass through the entry arch on Peabody Avenue, all sound dissolves into a cosmic silence. Make a <span class="check">Luck (-1) check</span>. If you succeed, the mundane noises of Arkham return. If you fail, you are drawn through the gate nearest this location, and are <i>Cursed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(421,1,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(421,2,'<i>On the Healing of Mind and Spirit</i> is the title of the book you find sitting, unattended, on one of the end tables in the lounge. Intrigued, you flip through its pages. Restore your Sanity to its maximum and gain a Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(421,1,'As you stand in the line for the teller, the bank Vice President motions you over to his office. "We''re aware of the good you''ve done. The Bank of Arkham thanks you." You may spend 10 toughness worth of monster trophies, 1 gate trophy and 5 toughness worth of monster trophies, or 2 gate trophies to either gain $10 or discard any Investigator''s Bank Loan.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(421,3,'Make a <span class="check">Will (-1) check</span>. If you succeed, you may take <b>Anna Kaslow</b>''s Ally card, or if it''s not available, 2 Clue tokens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(422,1,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(422,2,'"Everything''s going to be fine," says a kindly patient in the lounge, seeming quite lucid. He pats your hand, gets up, and walks off. The strange thing is, you find yourself quite convinced. Gain 3 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(422,1,'As you step to the front of the teller line you see that there are two windows open. "Next!" both call out at the same time. Make a <span class="check">Luck (-1) check</span>. If you succeed, you are <i>Blessed</i>. If you fail, you are <i>Cursed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(422,3,'A dark shadow falls across Founder''s Rock, and then dissolves as the sun passes behind a bank of clouds. A monster appears!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(423,1,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(423,2,'"It''s a new treatment," says the doctor, as orderlies you didn''t notice before grab your arms from behind. "It''s very promising." Roll a die. On a success, restore both your Sanity and Stamina to their maximum values. On a failure, reduce them to 1.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(423,1,'The bank Vice President tucks something into your pocket as he passes by. "A bit of help for you and your friends," he whispers in your ear. All investigators gain $1.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(423,3,'A group of boys play baseball on the public diamond, shouting and laughing. You stop to watch for a while, and find yourself both refreshed and heartened. Gain 1 Stamina and 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(424,2,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(424,5,'At the end of the dock, an elderly gentleman graps a paper bag tightly, mumbling unintelligbly and pacing. He sees you and points, motioning for you to give him something. Not wanting to upset this strange hermit, you search for something to give him. You may discard 1 Common Item to draw 1 Unique Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(424,6,'A tapestry in the corridor catches your eye as the patterns in its weave appear to shift; you think it may be possible to reach into the hanging. If you choose to try, roll four dice. If you roll any failures, you are <b>devoured</b> as the patterns come alive. If you roll four successes, take a doom token from the doom track and place it on an unstable location of your choice as an elder sign token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(424,4,'Two monsters surface from the island''s dark waters. If you kill both of them, you are <i>Blessed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(425,2,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(425,5,'As the dock workers switch shifts for the night, you notice an ornate money clip at your feet. You pick it up, telling yourself you will use the bills claped within for the greater good. Take $2, but pass a <span class="check">Luck (-1) check</span> or become <i>Cursed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(425,6,'A monster and a gate appear!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(425,4,'Looking across the clearing, you spy another shadowy figure watching the same malefactors you have your eye on. Although your surveillance proves fruitless, you later meet your counterpart on the beach. Pass a <span class="check">Sneak (-1) check</span> to take <b>John Legrasse</b>''s Ally card, or if it''s not available, increase your Sanity and Stamina to their maximum values.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(426,2,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(426,5,'As the walking dead unload cargo from the ship with no name, you notice a box of booty forgotten under the gangplank. Make a <span class="check">Luck (-1) check</span>. If you succeed, draw one Common Item. If its value is $2 or less, draw an additional Common Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(426,6,'The roof caves in, but instead of a ceiling above, a swirling pool of shadow hurtles down towards you. Make a <span class="check">Speed (-1) check</span> or become <i>lost in time and space</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(426,4,'A piece of driftwood conceals a book washed onto the beach by the tide. Oddly enough, the book does not seem to be wet. As you flip through the pages, the words burn themselves into your mind. Draw a Spell and immediately lose Sanity equal to its Sanity cost. If you are not driven insane, keep the Spell.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(427,2,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(427,5,'Rotten food in a shipping crate has attracted a multitude of maggots. Under the repulsive feast, you see a wad of cash. Make a <span class="check">Will (-1) check</span> to reaech through the writhing mass and take $3 per success. If you fail, lose 1 Stamina and move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(427,6,'You hear the voice of Eric Colt from the next room. Drawing nearer, you see that his back is to you, as he listens to a haunting tune from a radio whose cord has been cut. If you wish to rescue him from the music''s grasp, lose 2 Sanity. If this does not drive you insane, take <b>Eric Colt</b>''s Ally card, or if it''s not available, take 3 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(427,4,'Walking along the beach, you spy a hermit crab with a strange design on its shell. Looking more closely, you realize that the weird mottling spells out secrets. Make a <span class="check">Will (-1) check</span> and take 1 Clue token per success.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(428,3,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(428,8,'You go into the University President''s office for a chat. Upon entering, you learn that another investigator has recently been here interrogating the President about the same activities that brough you here. Pass a <span class="check">Will (-2) check</span> to choose another investigator; each of you gains 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(428,9,'You notice a strangely-bound manuscript as you scan the titles of books on a shelf. When you attempt to pull it from the shelf, it tilts slightly and then pulls you into itself! Go to either Unknown Kadath or the Plateau of Leng (your choice) and have an encounter there before returning.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(428,7,'The professor has set up an experiment to transfer knowledge from one person to another. You may choose another investigator and give him one of your Skills. He must then give you a different Skill back, if he has one.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(429,3,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(429,8,'A professor takes an interest in your presence and beckons for you to follow him. In a back room, he explains that he can provide you with knowledge that may be of use to you, although his experimental teaching method may cause other things to be unlearned. You may discard a Skill to draw a new Skill and take 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(429,9,'Although it is not yet time to close, security seems to be kicking everyone out of the Library. Pass a <span class="check">Sneak (-1) check</span> or move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(429,7,'The science professor beckons you into his office. He points at a strange device on his workbench. "Want to try it out?" Pass a <span class="check">Luck (-2) check</span> to return all monsters in the Sky and the Outskirts to the monster cup. You may choose one of them to keep as a monster trophy.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(430,3,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(430,8,'One of the students volunteering at the Office of the President slips you a note conerning a strange occurrence at the Library. Move to the Library and draw two cards, choosing one of them to encounter, and discarding the other.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(430,9,'While searching the card catalog for something else, you stumble across a forgotten card with crabbed, enigmatic scribbling on the back. You follow the lost clue to a most wondrous treasure. If you wish, you may discard a <i><b>Tome</b></i> to search the Unique Item deck and take the Necronomicon.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(430,7,'The professor of arcane studies tells you of a sealed tomb that only the enlightened may open. Pass a <span class="check">Lore (-2) check</span> to flip over the top three mythos cards and choose one of them. If there is an open gate at the gate opening location on that card, that gate is sealed.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(431,3,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(431,8,'You run into the Dean and try to convince him to let you write a manuscript for the college. Pass a <span class="check">Will (-1) check</span> to take a Retainer card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(431,9,'The Librarian seems entranced by a book whose pages ripple as if in the wind, even when she''s not touching it. As you approach, she slams it shut and tells you to mind your own business. "But madam," you begin... Pass a <span class="check">Will (-1) check</span> to take the first <i><b>Tome</b></i> from the Unique Item deck. If you fail, move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(431,7,'You pass a room where a muscular, bored-looking man stands before a pile of groaning, fallen men. "What about you?" he calls out to you. "Can you take a punch?" If you allow him to drive his fist into your guy, lose 2 Stamina. If this does not knock you unconscious, take <b>Sir William Brinton</b>''s Ally card, or if it''s not available, take $5 instead.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(432,4,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(432,10,'Although you adhere to the belief that hospital food should be avoid, your body demandns sustenance. Gain 1 Stamina and search the Common Item deck for a Food card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(432,12,'A dog blazes past you, chasing a squirrel. Pass a <span class="check">Speed (-2) check</span> or discard a Food card to take <b>Duke</b>''s Ally card, or if it''s not available, take $3 for returning him to his owner.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(432,11,'Miriam Beecher thrusts a book into your hands. Taking a cursory glance through it, you notice that several pages are blank. She explains that a dark presence is erasing the knowledge it contains. Take a number of Clue tokens equal to six munus the number of elder sign tokens on the board.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(433,4,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(433,10,'As you walk through the halls of St. Mary''s, a nurse shoves a wheelchair into your legs, forcing you to sit. She wheels you recklessly through the hospital, informing you frequently that you will be "good as new". Then, stopping abruptly, she tips you out of the chair and to the floor, and speeds off. Unbelievably, your Stamina is restored to full.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(433,12,'As you trudge down a muddy path, a monster appears! If you kill it, take $5 (and the taxidermist''s thanks).');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(433,11,'Customers in the store are gossiping about a recent strange occurence, and who or what may have caused it. Turn the top card of a location of your choice faceup. The next investigator to have an encounter at that location draws that card.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(434,4,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(434,10,'A medium beckons you into a room full of the bereaved, grieving for the recently deceased. He confides that his power is insufficient to complete his ritual and contact the dead man''s spirit. If you will help him, he can tell you many secrets. You may discard a Spell to take 3 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(434,12,'You stumble across the Sheldon Gang experimenting with a still. One of them threatens you, but you convince him that a nip from the still will keep their whereabouts a secret as far as you are concerned. Pass a <span class="check">Will (-1) check</span> to search the Common Item deck for a Whiskey card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(434,11,'You know what you are looking for, but the trick will be finding it. Pass a <span class="check">Luck (-2) check</span> to search the Unique Item deck for the Livre d''Ivon card.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(435,4,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(435,10,'You try to rouse a man from a coma brought on by a visit to the Black Cave. Awakening, he begins to ramble. If you are luckly, you will be able to make out some of the words before the nurse comes. Gain a number of Clue tokens equal to your Luck.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(435,12,'The rings on a tree stump become a swirling pattern, and you feel a headache coming on. You rub your eyes, then open them to discover that you have been transported &mdash; somehow &mdash; to an entirely different place! Choose another investigator and swap locations with him. You have an encounter in your new location, but he does not.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(435,11,'As you begin to delve into the rare manuscripts, the proprietor of the shop coughs loudly and holds out her hand. You may pay $5 to search the Spell deck for a Spell of your choice.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(436,5,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(436,15,'Finding an unusual book, you read a spell from it. You may move any elder sign token on the board to any unsealed, unstable location. If there is a gate there, it is immediately sealed, and any monsters there are returned to the monster cup. If there are no elder sign tokens on the board, take a Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(436,13,'Ma''s is full to capacity this time of year. Although Ma is known to become cranky with those who steal away her business, you spend some time getting to know the guests, looking especially for those who might be of use in your investigations. You may become <i>Cursed</i> to draw a random Ally.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(436,14,'Father Michael is impressed by your conviction in the fight against the rising evil. You are <i>Blessed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(437,5,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(437,15,'You admire the artifacts donated to the Society over the years. One in particular catches your attention, and as you examine it, your hairs prickle. If there are three or fewer elder sign tokens on the board, draw a Skill. If there are four or more, you are <i>Cursed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(437,13,'A reporter staying at Ma''s announces that he will pay handsomely for tales of the macabre. Take $1 for every elder sign token on the board as you relate your exploits.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(437,14,'Father Michael, sensing that some evil may be afflicting you without your knowledge, suddenly submerges your head in the font of holy water. Make a <span class="check">Luck (-1) check</span>. If you succeed, restore your Sanity to its maximum. If you fail, lose 1 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(438,5,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(438,15,'When you arrive, you discover that the members of the Society are on their monthly outing to Independence Square. The janitor, who''s heading there shortly, offers to give you a lift. You may move to Independence Square and draw two cards, encountering one of your choice, and discarding the other.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(438,13,'It''s mystery meat Monday at Ma''s. As you walk into the kitchen, she shoves a spoonful of the unknown chow into your mouth and directs you to swallow. Make a <span class="check">Luck (-1) check</span>. If you succeed, restore your Stamina to its maximum. If you fail, lose 1 Sanity, and your lunch.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(438,14,'You touch the altar and a bright light flashes. Draw a mythos card and go to the gate location shown. Draw four location cards there and choose one of them to encounter, discarding the others.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(439,5,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(439,15,'A white-haired professor offers to help you if you can prove the legitimacy of your mission. You may spend a gate trophy to take <b>Professor Armitage</b>''s Ally card, or if it''s not available, draw 1 Unique Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(439,13,'It is dinnertime, and Ma has spread all the fixings. You resist the urge to sit down and have a meal, but the same can''t be said of the rest of your party. If you have an Ally, discard it. Fortunately, another willing soul finds the prospect of helping you out exciting. Draw a random Ally. If the Ally deck is empty, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(439,14,'Father Michael directs you to the box for donations and tells you to take what you need. Take $2 or draw a Common Item.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(440,6,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(440,16,'A member of the Lodge ushers you into a side room, where he shows you a magic sphere and explains that it will provide answers to your questions... if you are lucky. Make a <span class="check">Luck (-1) check</span>. If you succeed, take Clue tokens equal to the number of successes you rolled.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(440,54,'A glass orb in this chamber contains a swirling fog. As you handle the sphere, the misty shroud parts to divulge what seems to be the future. Draw the top five cards from the Mythos deck and put them back on top of the deck in any order you choose.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(440,17,'A force from within the house threatens to take over your mind. Pass a <span class="check">Will (-1) check</span> to avoid moving to the nearest monster''s location and then encountering it. If there are no monsters in any street area or location, a monster appears!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(441,6,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(441,16,'A woman fleeing something runs right into you. As you try to help her up, she blindly attacks you. Pass a <span class="check">Fight (-1) check</span> to restrain her; if you succeed, take <b>Ruby Standish</b>''s Ally card, or draw a Unique Item if it''s not available.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(441,54,'A member of the Lodge leads you into the Inner Sanctum and shows you a ring that can be used to fight against evil. As you slip it on, he directs you to concentrate on a target and try to overpower it with your mind. You may spend 1 Stamina to make a <span class="check">Will (-1) check</span>. If you succeed, claim any non-spawn monster on the board as a trophy.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(441,17,'A gate and a monster appear!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(442,6,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(442,16,'Carl Sanford explains that membership in the Silver Twilight Lodge requires sacrifice, and that the Lodge has need of one of your friends. Discard an Ally to take a "Silver Twilight Membership" card and draw a Unique Item. If you can''t or won''t, you are <i>Cursed</i>, and must pass a <span class="check">Fight (-3) check</span> to avoid becoming <i>lost in time and space</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(442,54,'While in the Inner Sanctum, you examine a scroll concering the aspects of gates. Make a <span class="check">Lore (+0) check</span>, rolling one extra die for each open gate. Take a Clue token for each success you roll.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(442,17,'"You will be rewarded according to what you have learned," whispers the voice of a long-dead warlock. Lose 1 Stamina but take a Clue token for each Spell you possess.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(443,6,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(443,16,'As you leave the lodge, a green glow surrounds the door frame. Move to the street. All monsters in the sky immediately go there as well.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(443,54,'A member of the inner circle explains that the Lodge sometimes supports the studies and explorations of the like-minded. Give any other investigator your Clue tokens. You are <i>Blessed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(443,17,'A man motions you over and points to a chalk outline in the atrium of the old house. He directs your attention to a trail of what seems to be green blood. Pass a <span class="check">Lore (-1) check</span> to offer useful assistance; if you do, take <b>Thomas F. Malone</b>''s Ally card, or if it is not available, take 2 Clue tokens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(444,7,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(444,19,'Rocks shift in the strange light. If you have a Lantern, you may move to the first area of any Other World of your choice. Otherwise, if you fail to pass a <span class="check">Luck (-2) check</span>, you are <i>lost in time and space</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(444,18,'You note several items of interest behind the counter and approach the storekeeper, but as you draw near, he disappears into the stock room. After waiting for a few minutes, you decide that he is not coming back. Nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(444,20,'There! Behind the mausoleum you see a swirling vortex of energy. If you''re lucky, perhaps you can turn this to your favor. You may spend a gate trophy to draw and keep four monster trophies at random from the cup.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(445,7,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(445,19,'There''s a growling behind you. Quickening your pace, you fail to notice a gaping pit obscured by the darkness. If you fail to pass a <span class="check">Luck (-1) check</span>, draw the top gate marker, move to the first area of the Other World shown, and discard the gate marker, a process which causes you to become <i>delayed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(445,18,'"Take whatever you want, hon." The storekeeper''s wife is getting back at her husband for a fight they had this morning. You may either take $2, take a Clue token, or draw a Common Item. However, you are <i>delayed</i> by her lengthy tirade about the dangers of marrying young.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(445,20,'With a crack, one of the grave markers &mdash; a beautiful angel &mdash; falls towards you. If you are <i>Cursed</i>, then you are <b>devoured</b>. If not, it slams into the ground next to you and cracks open, revealing something useful. Gain 1 Unique Item.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(446,7,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(446,19,'As you trudge through the darkness, your eye catches a strange glint of blue-black. Stepping closer, you can make out a familiar rune engraved in protruding rock. You place y our hand on it and try to remember how to break the ward. Make a <span class="check">Lore (-2) check</span>. If you pass, draw a Spell. If you fail, you are <i>delayed</i> and lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(446,18,'As you step toward the store, a man in tattered clothing wordlessly hands you a map with strange notations on it. You may move to the Black Cave. If so, gain $2.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(446,20,'The tombs of the dead keep silent as you explore the graveyard. However, you find the remains of something... unnatural. Draw one monster trophy at random from the cup.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(447,7,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(447,19,'A gate and a monster appear!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(447,18,'The storekeeper points out a table containing items that are on sale for today only. You note that most are labeled with their original prices, and bring it to his attention. He apologizes profusely, but proceeds to raise their costs even further! You may search the Common Item deck and buy an Item of your choice for $1 more than its listed price.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(447,20,'An artist has set up his canvas and is preparing to paint. The focus of his piece appears to be an open grave. He remarks that he dislikes its emptiness and asks if you can provide anything to fill the scene. If you spend five toughness worth of monster trophies, he introduces himself as <b>Richard Upton Pickman</b>. Take his Ally card or draw a Spell if it''s not available.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(448,8,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(448,23,'A portrait half-obscured behind a bookshelf catches your eye. There''s somehing strange about it, but you''re in no mood to move the shelf. On the other half, you''d be a fool to ignore the gnawing feeling that the pattern &mdash; which you can just barely make out &mdash; might be important. Make a <span class="check">Lore (-2) [2] check</span>. If you succeed, search the Unique Item deck for an Elder Sign.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(448,22,'You open what seems like the hundredth file whose contents bear no relation either to each other or the drawer where you found them. You are <i>delayed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(448,21,'You jump onto the train just as the cars begin to move. "All aboard for Kingsport Station!" To remain at this location, make a <span class="check">Speed (-1) check</span> to leap off before the train gets up to speed. If you fail, or do not wish to roll, move to the Central Hill streets in Kingsport.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(449,8,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(449,23,'You trip over a stack of books obviously undisturbed for years, if not decades. Make a <span class="check">Lore (-1) check</span>. If you succeed, search the Unique Item deck and take the first <i><b>Tome</b></i> you find.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(449,22,'"Get out!" snarls the surly janitor, shaking a fist at you as he pokes his head into the archive room. "We''re closed!" As he moves off down the hallway, he shouts back over his shoulder, "If I come back here and you''re still here..." Make a <span class="check">Will (-1) check</span>. If you succeed, gain 2 Clue tokens. If you fail, move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(449,21,'A conductor grabs your shoulders as you step onto the train. "This train''s reserved," he rasps. You all but leap back onto the platform as the train begins to chug out of the station, fading from existence before your eyes. Choose a monster on an open gate and return it to the monster cup.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(450,8,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(450,23,'You hear a clatter and a curse. Rushing to the sound, you find Oliver Thomas rubbing a bruised elbow among spilled curios. "Damned rubbish!" he seethes. "Take it away and any that''s not broken is yours!" Make a <span class="check">Luck (-2) check</span>. If you succeed, draw three Unique Item cards and keep any that cost $4 or less. Discard the rest.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(450,22,'You sigh loudly, folding an archive copy of the <i>Advertiser</i> shut, no wiser than when you opened it. The reporter on the other side of the room looks up. "Help you find something?" he asks. "I''ve got nothing but time... for a price." Buy as many Clue tokens you wish for $3 each.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(450,21,'You step into a waiting cab just as a well-dressed traveller does. "I''m headed that way, too," says the other man. "The fare''s on me." Move to any street or Arkham location and have an encounter there.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(451,8,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(451,23,'A man with a crate checks his watch outside the locked shop as you walk up. Seeing you, he turns. "Do you know anyone who might be interested in these? I just want to be rid of them." Turn over the top three Unique Item cards. Any players may buy them for their list prices. If players disagree about who may buy what, you decide.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(451,22,'"Get out!" snarls the surly janitor, shaking a fist at you as he pokes his head into the archive room. "We''re closed!" As he moves off down the hallway, he shouts back over his shoulder, "If I come back here and you''re still here..." Make a <span class="check">Will (-1) check</span>. If you succeed, gain 2 Clue tokens. If you fail, move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(451,21,'"I''ll swap you for one of these." Discard one Common Item or one Unique Item of your choice. Then draw one Item of the type you discarded.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(452,9,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(452,24,'You stand inside the door, surveying the crooks, drunks, and miscreants. Would anyone even be able to notice if a greater evil arose among this scum? The only way to ensure Arkham''s safety is to act now. If you have an Elder Sign, you may discard it to seal this location.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(452,26,'"Haven''t had time to bring him out to the asylum yet," Sheriff Engle explains when he notices you eyeing a straitjacketed lunatic ranting in one of the cells. That''s when you realize what the madman''s saying. You are <i>delayed</i> as you jot notes about his ravings, but gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(452,25,'A mugger emerges from out back, and sees you just as you see him. "Keep it quiet and we''ll split the proceeds," he says, holding out a wallet. Either accept the stolen money and gain $3, or shout for the police and allow karma to reward you with 1 Sanity and 1 Stamina instead.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(453,9,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(453,24,'You look up and everyone''s gone &mdash; you must have falled asleep at the bar. Unnerved by the eerie silence of the previously hopping establishment, you grab the bottle in front of you and skedaddle. Search the Common Item deck for a Whiskey card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(453,26,'You''re sitting in the reception area when Sheriff Engle steps out of the back. He looks at you intently. Make a <span class="check">Will (-1) check</span>. If you succeed, he hands you a pair of handcuffs and says "You look like you could put these to good use." Search the Common Item deck for a Handcuffs card. If you fail, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(453,25,'"You want the regular pie, or the magic pie?" asks Velma, with no apparent trace of irony. You may spend $5 to gain 1 Stamina, 1 Sanity, and become <i>Blessed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(454,9,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(454,24,'"Nothing interesting''s happened here in a week," sighs a bored barfly as you step up to the bar. Taking stock of the mostly empty place, you believe it. As you think better and turn to go, the man takes a cue from the owner''s dirty look and stands to go with you, asking "Where are we headed?" Take <b>Ryan Dean</b>''s Ally card. If it''s not available, draw 2 Common Items instead.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(454,26,'The word "Reward" on a leaflet gets your attention. You may spend one monster trophy with a moon dimensional symbol on it to gain $5.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(454,25,'The diner in the next booth suddenly checks his watch, stands, and rushes out the door. When Velma comes over with his blue-plate special and you explain his absence, she offers it to you, on the house. "No sense throwing it out," she says. Search the Common Item deck for a Food card and take it.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(455,9,6);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(455,24,'"You''re in my seat, friend," says someone behind you. If you succeed in a <span class="check">Will (-1) check</span>, you stare him down and keep your chair. If you fail, his meaty associates toss you in their trunk and dump you somewhere. Draw a mythos card and move to the gate location shown on it, then have an encounter in your new location.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(455,26,'"Sure, Deputy. I''ve got a permit for that. Yeah, that too." You''re lying through your teeth, but if you can sell it, he''ll drop the issue. Make a <span class="check">Will (-1) check</span>. If you fail, you must discard all of your <i><b>Weapon</b></i> cards, and are <i>arrested</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(455,25,'There''s a hideous shriek outside. You may move to the street, where &mdash; if the Sky contains any monsters &mdash; you find some poor fallen soul, still clutching a weapon. Search the Common Item deck and take the first <i><b>Weapon</b></i> you find. Otherwise, nothing happens.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(173,1,0,0,0,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(173,12,'If only one of their onyx-laden caravans should pass by before the blizzard consumes you! Make a <span class="check">Luck (+0) check</span>. Your Stamina is reduced to the number of successes you roll.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(173,8,'Though your mind''s eye closes to that material blackness, your weak flesh yet succumbs. If you have only 1 Stamina, you are <b>devoured</b>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(173,13,'A nightmarish monster appears!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(174,1,0,0,0,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(174,12,'In response to your pitiful knocking, the massive gate of the Castle of Great Old Ones swings wide. Lose 1 Stamina and 1 Sanity. If you are <b>devoured</b> as a result, the Ancient One immediately awakens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(174,8,'Flight! You throw all behind you, lest all be lost! Discard a Spell and a <i><b>Weapon</b></i> or lose 3 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(174,13,'Ten thousand worlds lie arrayed before you; you are <i>delayed</i>.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(175,1,0,0,0,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(175,12,'Your only hope: to avoid the attention of this transgression against the knowable. Pass a <span class="check">Sneak (-2) check</span> or you are reduced to 1 Stamina and 1 Sanity, and are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(175,6,'Exhilarated &mdash; and drenched! &mdash; by sea-spray, it''s an effort of resolve to keep all that you have learned in mind. Pass a <span class="check">Will (-2) check</span> or discard all but four of your Clue tokens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(175,13,'Your travels are endless, packed tight into the space of but a moment. Lose 1 Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(176,1,0,0,0,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(176,12,'A monster appears, as uncaring as the wastes.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(176,7,'Where all worlds coverge, the fibers Atlach-Nacha spins ensnare you even from the cavern where it spins. If Atlach-Nacha is the Ancient One, you must return to the first area of the Plateau of Leng, and are <i>delayed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(176,13,'The weight of worlds presses down on you. Lose 1 Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(177,1,0,0,0,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(177,12,'From atop the peak, you can see nothing, forever. You have no encounter.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(177,7,'Loathe as they are to guide you across these trackless wastes, the tcho-tchos are even less inclined to see you remain. You may spend 3 Stamina to return to Arkham.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(177,13,'In a quiet corner removed from every place and no place at once, you snatch a moment of respite, and have no encounter.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(178,1,0,0,0,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(178,12,'Those things you have tossed aside chew the flesh from your bones. Lose 1 Stamina for each card you possess that is currently exhausted.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(178,6,'"We claim this as our own," the ghouls demand, "or we shall pain you greatly." Discard a <i><b>Tome</b></i> or lose 2 Stamina and 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(178,13,'Crushing tentacles pursue you! Pass a <span class="check">Speed (-1) check</span> or you are reduced to 1 Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(179,1,0,0,0,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(179,12,'Though the whirling blizzard on the night-face of this nightmare peak swirls around you, you grasp tightly to the object of your desires. Make a <span class="check">Will (-1) check</span>. If you fail, lose 1 Sanity and 2 Stamina. If you succeed, draw a Unique Item.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(179,2,'Out of the darkness, a monster appears! If you defeat it, return to Arkham.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(179,13,'If violence is all it understands, then violence it shall have! Pass a <span class="check">Fight (-1) check</span> to take a Clue token.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(180,0,1,0,0,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(180,11,'Tak, the Vampire Prince of Karoth, deems you no threat to him. You have no encounter.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(180,6,'Sensing that fortune favors you, the Sages among Zoog-kind in the Enchanted Wood turn their attention to your troubles. If you are <i>Blessed</i>, gain the <b>Young Zoog</b> Ally card, or take 5 Clue tokens if it''s unavailable.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(180,13,'You reach out and touch a great pillar of darkness, anchoring your lost allies. If there are any investigators <i>lost in time and space</i>, you return to Arkham, and they are moved to the street location nearest you.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(181,0,1,0,0,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(181,11,'How can these winds of change blow so fiercely beneath the earth, where weather itself will not descend? Pass a <span class="check">Will (-2) check</span> or move all of your skill sliders to their leftmost positions.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(181,6,'The Zoog sages warn you that the knowledge they are willing to impart comes at a steep price, and you reconsider. You may become <i>Cursed</i>. If so, take 5 Clue tokens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(181,13,'In this place, where all minds converge, you may trade Clue tokens with other investigators until the end of this phase.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(182,0,1,0,0,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(182,11,'If only your hasty disguise will hold in this city of ghouls! The things you might learn! Pass a <span class="check">Luck (-2) check</span> to gain 1 Clue token, 1 Stamina, 1 Sanity, and return to Arkham.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(182,5,'Knowledge empowers the body and spirit for those who brave the stars to visit this place. Gain 1 Sanity and 1 Stamina for each Spell you possess.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(182,13,'"It is not too late," whispers the voice in the darkness. If the terror level is less than 6, draw a Spell.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(183,0,1,0,0,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(183,11,'Learn what those visions may tell at physical cost? Or flee, sparing your wits? You must choose to either gain 1 Stamina and lose 1 Sanity, or lose 1 Stamina and gain 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(183,7,'The High Priest at the great stone temple demands a sacrifice. Discard your most expensive Unique Item. If several equally expensive items qualify, choose one to discard.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(183,13,'Strength &mdash; and knowledge? &mdash; in numbers. Take a Clue token for every investigator, including you, currently in an Other World.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(184,0,1,0,0,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(184,11,'There it is! The stairway! But you must remain hidden for a while longer from these accursed ghouls... Make a <span class="check">Sneak (-1) check</span>. If you succeed, return to Arkham. If you fail, you are <i>delayed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(184,7,'The campfire-talk of the strange traders with their onyx-wagons proves enlightening and profitable. Either draw a Unique Item or take 2 Clue tokens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(184,13,'You pick up a shock-white feather from the cracked ground, sensing something strange about it. Keep this card. You may discard it to prevent any investigator from losing up to 3 Sanity or Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(185,0,1,0,0,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(185,11,'In the House of Shuggob, many dark secrets are known, and revealed to you. Draw a Spell.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(185,3,'"Gate-portal?" buzzes its mouths, within your head. "All time-places are gate-portals." You grasp at its meaning, the favor of fortune your only defense against an accidental and disastrous misunderstanding. Pass a <span class="check">Luck (-2) check</span> or take this card. While you have it, your difficulty to close gates is increased by 1. Discard this card when you close a gate.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(185,13,'You find a tiny corner of placidity, and remain there for a moment. Gain 1 Stamina and 1 Sanity.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(186,0,1,0,0,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(186,11,'<i>Ia, Ia, Tsathoggua!</i> cry their voices as one. <i>Ia! Ia!</i> If Eihort is the Ancient One, become <i>Cursed</i>, or gain a brood token.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(186,3,'A flash of insight &mdash; the method by which the members of this Great Race project themselves to the future! Choose another investigator and swap locations with him.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(186,13,'You grasp at the thing, but sense that even if you are unable to hold it, the reaching itself will teach you. Make a <span class="check">Luck (-2) check</span>. If you pass, draw a Unique Item. If you fail, take a Clue token.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(187,0,0,1,0,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(187,11,'The entire city whispers and laughs, but the source of the sounds &mdash; if they originate anywhere at all &mdash; remains always beyond the edge of your vision. You must lose 1 Sanity and 1 Stamina for each Clue token you wish to keep; otherwise, discard them all.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(187,4,'The puzzle-shape consumes you. Make a <span class="check">Lore (-1) check</span>. If you succeed, draw a Unique Item. If you fail, you must discard a Spell, a Common Item, a Unique Item, and 2 Clue tokens, or else you are <b>devoured</b>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(187,13,'An unspeakable monster appears!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(188,0,0,1,0,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(188,11,'A monster appears, bursting from the ground itself!');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(188,5,'Before this trove of knowledge, your mind unlocks, for must not all books reflect the singularity of fact here recorded? Roll a die for each <i><b>Tome</b></i> you possess. If you roll any successes, return to Arkham and immediately close this gate, which you may seal normally.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(188,13,'A web of light surrounds the object on the pedestal. You may draw a Unique Item, but if you do, every other investigator loses 1 Sanity and 1 Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(189,0,0,1,0,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(189,11,'Standing before the bas-relief of Nodens in his temple in the Vale of Pnath, the air turns louder and darker at the edges of your perception. Make a <span class="check">Luck (-1) check</span>. If you fail, either lose all of your Clue tokens or roll a die. If you roll a die and get a success, nothing happens. If you roll and fail, you are <b>devoured</b>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(189,2,'Two paths diverge in darkness. Make a <span class="check">Luck (-2) check</span>. If you pass, you are <i>delayed</i> unless you spend a Clue token. If you fail, you are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(189,13,'Dark tendrils grasp you! Pass a <span class="check">Luck (-1) check</span> or be <i>delayed</i>.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(190,0,0,1,0,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(190,11,'Nuguth-Yug demands homage be paid to Nodens, his lord. Discard any number of Clue tokens, then roll that many dice. Your Sanity and Stamina are reduced to the number of successes you roll. If they are reduced to zero, or if you had no Clue tokens to discard, you are <b>devoured</b>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(190,6,'Even mind and memory stumble on such strange ground. Pass a <span class="check">Luck (-1) check</span> or lose a Spell.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(190,13,'The way is shut, and more doors close with each passing eon. If there are four or more elder sign tokens in play, take this card. While you have it, during Upkeep, you must discard a Clue token or 1 Item, if you have either.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(191,0,0,1,0,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(191,11,'You scrabble for the thing briefly after fumbling it, but it spins and bounces from your fingertips, falling away into the faint light radiated by the Throken Peaks themselves. Discard your least expensive <i><b>Weapon</b></i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(191,6,'Even in such a strange locale, banditry is ever the same. Pay $2, or discard your most expensive item. If several equally expensive items qualify, choose one of them to discard.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(191,13,'Stairs wind upward, yet descend downward &mdash; ascend, or fall? Pass a <span class="check">Luck (-1) check</span> or you are <i>lost in time and space</i>.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(192,0,0,1,0,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(192,11,'Obscene fungal growths tower above, but all is silent. Nothing happens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(192,5,'The bargain struck, the strange creature melds into the recesses of your consciousness. Take this card. You may pay the Sanity cost of any Spell by placing a Clue token on this card each time you would otherwise lose 1 Sanity. Discard this card when it has 3 Clue tokens on it.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(192,13,'Riding a spear of light, you flash through a thousand times and places. Pass a <span class="check">Luck (-1) [2] check</span> to return to Arkham. Any monsters in the location you return to are automatically defeated and collected as trophies.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(193,0,0,1,0,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(193,11,'Creeping forward, you see that the black shape near the pool is a mutilated corpse, ripped asunder by God-knows-what! But wait! There''s something clutched among three of the fingers that remain on the right hand! Lose 2 Sanity, but draw 1 Unique Item.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(193,4,'An offering to the green pyramid, their buzzing voices command, lest you be lost for all time. You may discard a Unique Item to return to Arkham. Otherwise, you must discard a Common Item, or else become <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(193,13,'A horrendous monster appears!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(194,0,0,0,1,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(194,12,'Facing its awfulness head-on is the only way to avoid madness. Pass a <span class="check">Will (-2) check</span> or lose 3 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(194,4,'Such travel ''cross the stars, these strange fungi declare, is a service for which they would have good and valuable recompense. Discard a Unique Item worth $5 or more, or else you are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(194,13,'The weight of eons bears down with a literal force. Pass a <span class="check">Luck (-1) check</span> or discard all of your Clue tokens and become <i>lost in time and space</i>.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(195,0,0,0,1,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(195,12,'You advance a pawn, hoping desperately that the Creeping Chaos will not notice your vulnerability. Pass a <span class="check">Luck (-1) check</span> or choose an elder sign token on the board and discard it.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(195,8,'Too slow &mdash; too slow! &mdash; is the fleeing mind encumbered by the thoughts that sane men think in such places. Pass a <span class="check">Speed (-1) check</span> or immediately draw and resolve a mythos card.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(195,13,'Your focus alone will see you through times of confusion. Pass a <span class="check">Will (-2) check</span> or you are <i>delayed</i>.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(196,0,0,0,1,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(196,12,'The onyx Castle of the Great Old Ones looms horrible in the distance. Wisely, you turn away, and have no encounter.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(196,3,'You awaken briefly and stare at your hands, which are the hands of another. Choose another investigator and take all of his Clue tokens. Lose 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(196,13,'Those lands outside the time and space known to men strip king and peasant equally. Discard all of your items, except those for which you either discard a Clue token or pay $3.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(197,0,0,0,1,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(197,12,'Standing before the keep at the Castle of the Great Old Ones, a gong revertebrates below your ability to hear. If you are <i>Cursed</i>, add 2 doom tokens to the Ancient One''s doom track.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(197,8,'Of what use, in such a place, is but a single thread, to suspend such a vital thing as your lucid thinking? Better to surrender than dangle in such precarious state. If you only have 1 Sanity, you are <b>devoured</b>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(197,13,'A monster appears, taking shape from the angle''s curve!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(198,0,0,0,1,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(198,12,'North of where these Dreamlands intersect those of alien reaches, you must make a <span class="check">Luck (+0) check</span>. Your Sanity is reduced to the number of successes rolled.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(198,6,'Their caravan passes into the trackless desert, leaving you lighter of step but wiser. If you wish, you may discard any number of your items, taking a Clue token for each.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(198,13,'Certainly frail mortal creatures like you were not meant to see and hear such things. Lose 1 Sanity.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(199,0,0,0,1,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(199,12,'The great mountain chain shakes, and every corner of your reality with it. Roll one die for each open gate. For every failure, discard either a Clue token or an item.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(199,4,'The strange fungi pour their knowledge into the brain-case where your mind is imprisoned. Take 2 Clue tokens, but you are reduced to 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(199,13,'From living blackness, a monster appears!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(200,0,0,0,1,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(200,12,'Ascending through the great valley, mountainous effigies portend even less knowable encounters ahead. Lose 1 Sanity, then immediately have another encounter here.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(200,6,'"And whosoever perseveres in delving its secrets," reads the faded scripture, "will learn untold mysteries." You are <i>delayed</i>, but take a Clue token.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(200,13,'Ho there, what''s this? Pass a <span class="check">Luck (-1) check</span> to gain a Common Item.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(201,1,0,0,0,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(201,12,'The Steward Who Watches denies you entry. Return to Arkham, but do not take an explored token.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(201,2,'The darkness seethes in pursuit, gaining... gaining... If your Speed is currently 2 or less, you are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(201,13,'Knowledge is power, but more importantly, it is hope and endurance in this prison where you find yourself. Lose 3 Stamina and 3 Sanity, but you may reduce this loss by 1 Stamina and 1 Sanity for each Clue token you discard (to a maximum of three).');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(202,0,1,0,0,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(202,11,'Shuggob will share his secrets, but won''t you sample his fine meats? You may draw a Spell if you wish, but if you do, lose Sanity equal to the drawn Spell''s Sanity cost.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(202,5,'Even a brief visit sees the scales fall from your eyes; every word of recorded knowledge in all places and times is multiplied in your understanding. Take a Clue token for every <i><b>Tome</b></i> you possess.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(202,13,'A window floats by, looking out on... can it be? Home? Pass a <span class="check">Luck (-1) check</span> to return to Arkham.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(203,0,0,1,0,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(203,11,'The Sea of Pitch roils, and your balance shifts as the world spins around you. Pass a <span class="check">Luck (-1) check</span> or you are <i>delayed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(203,2,'You curse your wet matches, knowing for certain that in the light, much would be revealed. Gain 2 Clue tokens if the terror level is 5 or less.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(203,13,'You come upon a cavern filled with human brains. If you were to eat them, maybe you could also consume the knowledge they contain! Make a <span class="check">Lore (-1) check</span>. If you pass, you may lose Sanity to take Clue tokens, at a rate of 2 Sanity each.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(204,0,0,0,1,6);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(204,12,'A monster from the unmapped reaches appears.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(204,3,'"Transcribe for us every knowledge you possess regarding this object," buzzes the conical being. "Disregard these others." Discard a Unique Item of your choice, then draw a Unique Item. If you have no Unique Items, lose all of your Clue tokens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(204,13,'Fortune favors everyone, each according to his station. If you are <i>Cursed</i>, discard all of your items. If you are <i>Blessed</i>, draw a Unique Item.');
