PRAGMA foreign_keys=1;

INSERT INTO "expansion" VALUES(1,'Base',1);

INSERT INTO "board"(_id, title, expansionid) VALUES(1,'Arkham',1);

INSERT INTO "neighbourhood" VALUES(1,1,'Downtown');
INSERT INTO "neighbourhood" VALUES(2,1,'Merchant District');
INSERT INTO "neighbourhood" VALUES(3,1,'Miskatonic U.');
INSERT INTO "neighbourhood" VALUES(4,1,'Uptown');
INSERT INTO "neighbourhood" VALUES(5,1,'Southside');
INSERT INTO "neighbourhood" VALUES(6,1,'French Hill');
INSERT INTO "neighbourhood" VALUES(7,1,'Rivertown');
INSERT INTO "neighbourhood" VALUES(8,1,'Northside');
INSERT INTO "neighbourhood" VALUES(9,1,'Easttown');

INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(2,1,'Arkham Asylum','Arkham Asylum');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(1,1,'Bank of Arkham','Bank of Arkham');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(3,1,'Independence Square','Independence Square');

INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(5,2,'River Docks','River Docks');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(6,2,'The Unnamable','Unnamable');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(4,2,'Unvisited Isle','Unvisited Isle');

INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(8,3,'Administration','Administration');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(9,3,'Library','Library');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(7,3,'Science Building','Science Building');

INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(10,4,'St. Mary''s Hospital','St. Mary''s Hospital');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(12,4,'Woods','Woods');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(11,4,'Ye Olde Magick Shoppe','Ye Olde Magick Shoppe');

INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(15,5,'Historical Society','Historical Society');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(13,5,'Ma''s Boarding House','Ma''s Boarding House');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(14,5,'South Church','South Church');

INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(16,6,'Silver Twilight Lodge','Silver Twilight Lodge');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(54,6,'Inner Sanctum','Silver Twilight Lodge Inner Sanctum');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(17,6,'The Witch House','Witch House');

INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(19,7,'Black Cave','Black Cave');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(18,7,'General Store','General Store');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(20,7,'Graveyard','Graveyard');

INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(23,8,'Curiositie Shoppe','Curiositie Shoppe');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(22,8,'Newspaper','Newspaper');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(21,8,'Train Station','Train Station');

INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(24,9,'Hibb''s Roadhouse','Hibb''s Roadhouse');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(26,9,'Police Station','Police Station');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(25,9,'Velma''s Diner','Velma''s Diner');

INSERT INTO "otherworld"(_id, title, sort_title, red, green, blue, yellow, expansionid) VALUES(1,'Another Dimension','Another Dimension',1,1,1,1,1);
INSERT INTO "otherworld"(_id, title, sort_title, red, green, blue, yellow, expansionid) VALUES(2,'Abyss','Abyss',1,0,1,0,1);
INSERT INTO "otherworld"(_id, title, sort_title, red, green, blue, yellow, expansionid) VALUES(3,'City of the Great Race','City of the Great Race',0,1,0,1,1);
INSERT INTO "otherworld"(_id, title, sort_title, red, green, blue, yellow, expansionid) VALUES(4,'Yuggoth','Yuggoth',0,0,1,1,1);
INSERT INTO "otherworld"(_id, title, sort_title, red, green, blue, yellow, expansionid) VALUES(5,'Great Hall of Celeano','Great Hall of Celeano',0,1,1,0,1);
INSERT INTO "otherworld"(_id, title, sort_title, red, green, blue, yellow, expansionid) VALUES(6,'The Dreamlands','Dreamlands',1,1,1,1,1);
INSERT INTO "otherworld"(_id, title, sort_title, red, green, blue, yellow, expansionid) VALUES(7,'Plateau of Leng','Plateau of Leng',1,1,0,0,1);
INSERT INTO "otherworld"(_id, title, sort_title, red, green, blue, yellow, expansionid) VALUES(8,'R''lyeh','R''lyeh',1,0,0,1,1);
INSERT INTO "otherworld"(_id, title, sort_title, red, green, blue, yellow, expansionid) VALUES(13,'Other','Other',0,0,0,0,1);

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(46,7,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(46,19,'You are in a maze of twisty passages, all alike. Pass a <span class="check">Lore (-2) check</span> or become lost. If you fail, lose 1 Stamina and stay here next turn.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(46,18,'Make a <span class="check">Will (-2) check</span>. If you pass, you gain the ear of the shopkeeper. Seeing your valiant cause, he takes you into the back room and offers you some special equipment. Draw 3 Common Items. You may take 1 of them for free as a gift to help thwart the evil in Arkham! Discard the other 2. If you fail, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(46,20,'Pass a <span class="check">Luck (-2) check</span> to find a valuable clue within your tombstone rubbings. Gain 2 Clue tokens and you may move to any location or street area in Arkham. If you move to a location, immediately have an encounter there.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(47,7,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(47,19,'You are attacked by a shadowy being, but a large man leaps out of the darkness and drives it off. He introduces himself as <b>Tom "Mountain" Murphy</b>. Make a <span class="check">Luck (-2) check</span>, or discard a Whiskey card to pass it automatically. If you pass, he joins your investigation. Take his Ally card if it''s available, otherwise he gives you something to protect yourself with. Search the Common Item deck and take the first <b><i>Weapon</i></b> you find. If you fail, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(47,18,'A jar on the counter bears a sign proclaiming "Guess how many marbles are in the jar and win a prize! $1 entry fee." If you want, you may pay $1 to make a <span class="check">Lore (-2) check</span>. If you pass, you gain $5. If you fail, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(47,20,'Entering a stone crypt, you are surprised to find a beautiful fresco and some inspirational words upon the wall. There is an almost magical peace within the chamber. Gain 2 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(48,7,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(48,19,'Bats! Hundreds of them! Pass a <span class="check">Speed (-1) check</span> to get out of the cave safely. If you fail, lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(48,18,'The shopkeeper notices one of the items you''re carrying and his face lights up. "Say, I''ve been looking for one of those. You wouldn''t mind parting with it, would ya? I can pay well." You may sell any one of your Common Items for twice its listed price.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(48,20,'Descending into a dark mausoleum, you discover a vampire rising to feed. You quickly find yourself fighting for your life. Make a <span class="check">Combat (-2) check</span>. If you pass, you defeat the vampire, gaining 1 Clue token and drawing 1 Unique Item. If you fail, roll a die and lose that much Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(49,7,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(49,19,'The moaning winds in the cave whisper your name. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(49,18,'You try talking to the elderly locals gathered around the potbellied stove playing checkers, but you gain nothing but stares and a few befuddled grunts for your trouble. Apparently they don''t like outsiders. No encounter.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(49,20,'"Testifying" Cooter Falwell latches onto you and rambles on about his spiritual beliefs. Make a <span class="check">Lore (-1) check</span>. If you pass, then somewhere in Cooter''s words you find a clue to the Mythos threat. Gain 1 Clue token, but lose 1 Sanity. If you fail, move to the street while you listen to Cooter ramble on about pure nonsense.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(50,7,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(50,19,'In the darkness you happen upon the remains of a previous spelunker. Make a <span class="check">Luck (+0) check</span> and consult the chart below:<br /><br />Successes:<br /><table><tr><td>0)</td><td>The body begins to bloat and splits open, releasing the horror within! Lose 1 Sanity and a monster appears!</td></tr><tr><td>1)</td><td>The body has been ripped apart as if shredded by a powerful monster. Lose 1 Sanity.</td></tr><tr><td>2+)</td><td>Searching the body you find something interesting. Draw 1 Common Item.</td></tr></table>');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(50,18,'Noticing a glint on the floor, you discover a silver dollar someone must have dropped. Gain $1.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(50,20,'A monster appears!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(51,7,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(51,19,'A monster appears!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(51,18,'You notice that some of the locals have an odd, fish-like quality to them that sets your teeth on edge. The shopkeeper notices your gaze and nods, "Marsh stock, from over in Innsmouth. Watch yourself around them." Shivering, you lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(51,20,'You find a man painting a picture of one of the horrible gargoyles lining the walls of the graveyard. Seeing you, he introduces himself as <b>Richard Upton Pickman</b>, a painter visiting from Boston. If you spend monster trophies that have a total of 5 toughness, Pickman takes a liking to you. Take his Ally card. If it is not available, he teaches you an incantation instead. Draw 1 Spell.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(52,7,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(52,19,'You find an old book. If you read it, make a <span class="check">Luck (+0) check</span> and consult the chart below:<br /><br />Successes:<br /><table><tr><td>0)</td><td>Evil forces assault you. Lose 1 Sanity and 1 Stamina.</td></tr><tr><td>1)</td><td>You find the diary of a lost soul who died in the caves long ago. Lose 1 Sanity and gain 1 Clue token as you read his horrible tale.</td></tr><tr><td>2+)</td><td>The book is a spellbook. Take the first <b></i>Tome</i></b> from the Unique Item deck.</td></tr></table>');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(52,18,'"Hey, you dropped this!" A young street urchin hands you an item and then scampers off. You don''t recognize the item, but the boy is already gone. Gain 1 Common Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(52,20,'You find the half-buried corpse of a strange being. Draw a monster from the cup and take it as a monster trophy, even if it has the <b>Endless</b> ability.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(53,6,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(53,16,'"Care to join the Order?" Carl Sanford and several of his henchmen ask. If you accept, pay $3 and take a Silver Twilight Membership. If you decline, pass a <span class="check">Will (-1) check</span> or lose 3 Stamina as the henchmen assist you out the door. Whether you pass or not, move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(53,54,'Pay your monthly dues of $3 or lose 2 Sanity from strange dreams sent to you by Carl Sanford when he kicks you out of the Order. If you are kicked out, lose your Silver Twilight Membership.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(53,17,'You feel the house actually breathe and speak your name. Lose 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(54,6,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(54,16,'Make a <span class="check">Sneak (-2) check</span>. If you pass, you slip into the temple area of the Lodge and find 2 items of interest. Roll a die for each item. On a success, draw a Unique Item, otherwise draw a Common Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(54,54,'You''re invited to take part in a Gating ceremony. If you agree, spend 2 Clue tokens and 1 Sanity to make a <span class="check">Lore (-2) check</span>. If you pass, close one gate of your choice. If you fail, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(54,17,'You are overcome by the echoing changes of the long-gone witches who have lived and died here &mdash; you pass out. Make a <span class="check">Will (-2) check</span>. If you pass, you learn an ancient spell in your dreams. Draw 1 Spell. If you fail, you are missing half your items when you wake up. Discard half of your items (your choice, round down).');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(55,6,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(55,16,'You find an old parchment in the study. Pass a <span class="check">Lore (-1) check<b> to draw 2 Spells and keep one of your choice.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(55,54,'You are allowed into the vault of Silver Secrets. Pass a <span class="check">Luck (-2) check</span> to steal a very unusual item. Search the Unique Item deck and take any one Unique Item you want.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(55,17,'"Excuse me, stranger, but have you ever seen this symbol before?" A man standing near the house holds up an occult symbol. Make a <span class="check">Lore (-1) check</span>. If you pass, the man introduces himself as <b>Thomas F. Malone</b>, a police detective visiting Arkham on a case. He''s impressed with you and offers to join you. Take his Ally card. If it''s not available, he tells you some valuable information instead. Gain 2 Clue tokens. If you fail, nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(56,6,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(56,16,'"Care to join the Order?" Carl Sanford and several of his henchmen ask. If you accept, pay $3 and take a Silver Twilight Membership. If you decline, pass a <span class="check">Will (-1) check</span> or lose 3 Stamina as the henchmen assist you out the door. Whether you pass or not, move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(56,54,'You attend a ceremony in which the Order opens a gate and a monster bursts out of it before the gate closes once more. A monster appears!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(56,17,'In an old journal you learn some horrible eldritch secrets. Roll a die. Lose that much Sanity and gain that many Clue tokens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(57,6,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(57,16,'Brushing up against a strange object in the hall, you feel stretched and thin, like your skin is too tight. Pass a <span class="check">Luck (-1) check</span> or you are <i>Cursed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(57,54,'Participating in the monthly ceremony, you witness great power and great evil. Lose up to 3 Sanity and gain that many Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(57,17,'You find a banquet laid out in the dining room and feel compelled to sit down and eat. Make a <span class="check">Luck (+0) check</span> and consult the following chart:<br /><br />Successes:<br /><table><tr><td>0)</td><td>You suddenly realize what you''ve been eating. Lose 3 Sanity.</td></tr><tr><td>1)</td><td>You gorge yourself, unable to stop eating. Stay here next turn.</td></tr><tr><td>2)</td><td>The food makes you feel sick. Lose 1 Stamina.</td></tr><tr><td>3+)</td><td>The meal refreshes you. Gain 3 Stamina.</td></tr></table>');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(58,6,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(58,16,'You hear the quiet sounds of an intruder. If you investigate, you find a woman dressed in black. She attacks you as soon as she sees you. Pass a <span class="check">Fight (-1) check</span> to subdue her long enough to explain your investigation. You find out that her name is <b>Ruby Standish</b> and that she was robbing the Lodge. However, upon hearing your tale, she agrees to join you. Take her Ally card. If it is not available, draw a Unique Item instead.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(58,54,'The Order of the Silver Twilight casts a banishment spell in their monthly ceremony. Spend 1 Sanity to make a <span class="check">Luck (-1) check</span>. If you pass, claim any one monster on the board as a trophy. If you fail, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(58,17,'Pass a <span class="check">Luck (-1) check</span> to find an odd-looking item in an old dusty display case. Draw 1 Unique Item.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(59,6,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(59,16,'Carl Sanford draws you into the study to talk and you feel the cold creep of dread listening to him. Make a <span class="check">Lore (-1) check</span>. If you pass, your willpower stands up to the test of the ancient wizard and you even learn something of value. Gain 3 Clue tokens. If you fail, his hypnotic tones lull you into a trance. The conversation seems short, but when you leave the study, much time has passed and your thoughts are confused. Lose all of your Clue tokens and move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(59,54,'Carl Sanford does not trust you and at the climax of the monthly ceremony spits a spell at you. Pass a <span class="check">Luck (-2) check</span> or you are <i>Cursed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(59,17,'A gate and a monster appear!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(60,5,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(60,15,'Perusing the county records, you discover something horrifying about your family tree. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(60,13,'The last guest to stay in your room had to leave in a hurry and left something behind. Draw 1 Common Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(60,14,'You enter the confessional. "Bless me, Father, for I have sinned." Make a <span class="check">Luck (+0) check</span> and consult the chart below:<br /><br />Successes:<br /><table><tr><td>0)</td><td>"Father? Are you there?" You hear a scream in the next compartment! Lose 3 Sanity and move to the street.</td></tr><tr><td>1)</td><td>"Father?" There is no answer. Sighing, you leave. Move to the street.</td></tr><tr><td>2+)</td><td>"I don''t remember my last confession." Raise your Sanity to its maximum value.</td></tr></table>');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(61,5,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(61,15,'Pay a $3 fee to gain access to the private library. If you refuse, move to the street. If you pay, make a <span class="check">Luck (-1) check</span>. If you pass, you learn an ancient spell from a dusty ledger. Draw 1 Spell. If you fail, you doze off and enter The Dreamlands. Have one encounter there, then immediately return here.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(61,13,'You find a poorly boarded-up passage in the basement that opens into a winding tunnel. If you venture into it, you exit in the Silver Twilight Lodge. Draw 2 cards and encounter one card of your choice, discarding the other.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(61,14,'Knowing that you are engaged in God''s work, Father Michael <i>Blesses</i> you.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(62,5,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(62,15,'The Society members are bird watching in the woods. The janitor offers you a ride there. If you accept, move to the Woods and draw 2 cards, encountering one card of your choice and discarding the other.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(62,13,'Staring at a painting in one of the rooms, you find yourself drawn into it. Make a <span class="check">Luck (+0) check</span>. If you pass, move to The Dreamlands. Have one encounter there and immediately return here. If you fail, move to The Abyss. Have one encounter there and immediately return here.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(62,14,'You could swear a drain pipe gargoyle moved. Lose 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(63,5,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(63,15,'You meet Cindy Fleming, a young geology professor at The University. She offers to show you some interesting formations at the Black Cave. If you accept, move to the Black Cave and draw 2 cards, encountering one card of your choice and discarding the other.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(63,13,'Ma Mathison tells you that the best room in the house is available for the night. If you want, pay $4 to spend the night there. Gain 4 points split between Sanity and Stamina however you choose.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(63,14,'Upon entering the church, you are attacked by Father Michael with a giant cross, who for some reason believes you to be in league with the devil. Make a <span class="check">Speed (-1) check</span>. If you pass, you escape. If you fail, lose 2 Stamina. In either case, move to the street.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(64,5,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(64,15,'You encounter a friendly old professor from Miskatonic University. If you spend 1 gate trophy, he introduces himself as <b>Professor Armitage</b> and offers to join forces with you. Take his Ally card if it is available, otherwise draw 1 Unique item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(64,13,'Chanting neighbours keep you up all night. Pass a <span class="check">Luck (-1) check</span> or lose your choice of 1 Stamina or 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(64,14,'You join in the morning mass. Spend 1 Clue token to ask for heavenly aid. If you do so, roll a die. On a success, your prayers are answered. Remove 1 doom token from the Ancient One''s doom track.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(65,5,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(65,15,'You notice a creepy man watching you as you peruse the books. With a feeling of dread you try to slip out without being followed. Make a <span class="check">Sneak (-1) check</span>. If you pass, you lose the man, gaining 1 Sanity in the process. If you fail, you are accosted by the man in the street. He is a wizard and he casts a dark spell on you as you flee. Lose 2 Stamina, move to the street, and you are <i>Cursed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(65,13,'Ma Mathison serves her special soup at supper. Roll a die and gain that much Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(65,14,'Father Michael convinces you that there are members of his congregation in greater need than you. Donate either half your money (rounded up) or half your items (your choice, rounded up) to the poor.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(66,5,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(66,15,'Pass a <span class="check">Luck (-1) [2] check</span> to gain insight into a skill while studying the old volumes of books. Draw 1 Skill, but stay here next turn.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(66,13,'After supper while sitting on the porch you strike up a conversation with another guest: Ryan Dean, a traveling salesman. You may make a <span class="check">Will (+0) check</span> if you want. If you pass, Ryan has a deal for you. You may draw either 1 Common or 1 Unique Item and purchase it at list price. If you fail, stay here next turn listening to bawdy stories and tall tales.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(66,14,'Noticing you eying the holy water, Father Michael tells you, "Take what you need, my child." You may search the Unique Item deck for a Holy Water card and take it.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(67,4,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(67,10,'You sneak a peek at the medical records for a recent admission who was involved in a cult ritual. Pass a <span class="check">Lore (+0) check</span> to learn something about the cult''s methods. Gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(67,12,'You meet an old wise man in the grove who offers to share his wisdom with you. If you accept, lose your next turn and make a <span class="check">Lore (-2) check</span>. If you pass, you may draw 1 Skill, or draw 2 Spells, or gain 4 Clue tokens. If you fail, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(67,11,'Miriam Beecher, the shopkeeper, peers closely at your face, then screams, "They''ve marked you! Get out! Get out!" and throws you out. Move to the street and lose 1 Sanity from this unsettling incident.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(68,4,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(68,10,'You agree to undergo an experimental treatment. Roll a die. On a 1-3, gain that many Stamina. On a 4-6, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(68,12,'You find a sleeping Sheldon Gang member near the still. Make a <span class="check">Sneak (-2) check</span> to try to swipe the shotgun he has dropped on the ground. If you pass, take a Shotgun from the Common Item deck if there is one. If you fail, the guard awakens. You are caught and beaten, losing 2 Stamina, but you escape with your life. Move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(68,11,'There is an old, locked trunk for sale for $5. If you buy it, make a <span class="check">Luck (+0) check</span> and consult the chart below:<br /><br />Successes:<br /><table><tr><td>0)</td><td>Empty!</td></tr><tr><td>1)</td><td>Gold coins! Roll 2 dice, add them together, and gain that much money.</td></tr><tr><td>2+)</td><td>Jackpot! Draw 2 Unique Items!</td></tr></table>');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(69,4,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(69,10,'Nurse Sharon slips something into your hand when the doctor isn''t looking. Pass a <span class="check">Sneak (-1) check</span> to keep anyone else from noticing. If you do, you later examine the object and find it to be an old parchment with a spell scratched on it. Draw 1 Spell. If you fail, an orderly takes it away from you and you gain nothing.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(69,12,'You come across a cringing dog. Pass a <span class="check">Speed (-2) check</span> to catch and calm him. If you have <i>Food</i>, you can discard that to automatically pass the check instead of rolling. You see by his collar that he is named <b>Duke</b>. Take his Ally card. If it isn''t available, gain $3 as a reward for returning him to his owner, instead.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(69,11,'Miriam Beecher talks to you for awhile, explaining some very interesting theories she has concerning the Mythos. Gain 1 Clue token.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(70,4,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(70,10,'The Doctor escorts you behind a curtain where the body of some other unfortunate investigator has been laid. The corpse has been torn to shreds. Pass a <span class="check">Will (-1) check</span> or lose 1 Sanity. If you pass, you may also search the body and find a helpful item. Draw 1 Unique Item. If you fail, you run away screaming. Move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(70,12,'A gate and a monster appear!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(70,11,'Pass a <span class="check">Lore (-1) check</span> to recognize an item that Miriam Beecher has underpriced. If you do so, draw 1 Unique Item. You may purchase it for half its list price (rounded up).');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(71,4,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(71,10,'The corpse you are examining isn''t quite dead yet. It reaches out and grabs you by the throat. Lose 1 Sanity. Then, you must fight the corpse. If you pass a <span class="check">Combat (-1) check</span>, you defeat it and gain 1 Clue token. Otherwise, move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(71,12,'You have stumbled onto a still owned by the Sheldon Gang. Make a <span class="check">Sneak (-1) check</span>. If you pass, skulk away without being seen. If you fail, lose 2 Stamina as the Sheldon Gang works you over while escorting you from the woods. In either case, move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(71,11,'Looking into a glass ball, you receive a vision of things to come. Turn the top card of one location deck of your choice face up. The next investigator to have an encounter at that location draws that encounter card.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(72,4,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(72,10,'One of the staff physicians talks some sense into you. You are disabused of certain crazy but accurate notions. Lose 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(72,12,'You trip over an object which turns out to be a rusty lockbox. If you open it, make a <span class="check">Luck (+0) check</span> and consult the following chart:<br /><br />Successes:<br /><table><tr><td>0)</td><td>A rotted human foot. Lose 1 Sanity.</td></tr><tr><td>1)</td><td>Draw 1 Common Item.</td></tr><tr><td>2)</td><td>Draw 1 Unique Item.</td></tr><tr><td>3+)</td><td>$10 in jewelry.</td></tr></table>');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(72,11,'Looking closely at a mummified head in the shop, you are horrified to find it looking back at you! Lose 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(73,4,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(73,10,'Make a <span class="check">Luck (-1) check</span>. If you pass, you realize that Dr. Mortimore is sneaking up behind you with a hypodermic needle filled with a phosphorescent gel. You avoid his experiment and subdue the mad doctor. The city awards you $3 and you gain 2 Sanity in the process. If you fail, lose 2 Sanity, then you are dumped in the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(73,12,'You are bushwhacked by the Sheldon Gang. Pass a <span class="check">Luck (-1) check</span> to avoid their trap. If you fail, lose 2 items of your choice and 2 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(73,11,'You see an interesting book sitting open on Miriam Beecher''s desk. Pass a <span class="check">Lore (-1) check</span> or you peer closely at its pages only to realize that the book is <i>Cursed</i>... and now, so are you.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(74,3,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(74,8,'The Dean introduces you to an anthropology professor who gives you some insight into your investigation. Gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(74,9,'Make a <span class="check">Will (+0) check</span> and consult the chart below:<br /><br />Successes:<br /><table><tr><td>0)</td><td>Abigail tosses you out. Move to the street.</td></tr><tr><td>1)</td><td>Abigail lets you into a private section of the library where you find an ancient tome. Draw 2 Spells and keep whichever of them you want.</td></tr><tr><td>2+)</td><td>Abigail loans you one of the strange items in the library''s display case. Draw 1 Unique Item.</td></tr></table>');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(74,7,'Assisting a professor in his research, you find a valuable Spell. Draw 1 Spell. However, you must pass a <span class="check">Fight (-1) check</span> or some sticky-fingered student steals one of your items. Lose 1 item of your choice.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(75,3,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(75,8,'A student mistakes you for the bursar. If you want to carry on the deception, make a <span class="check">Will (-2) check</span>. If you pass, gain $8 in ill-gotten tuition money. If you fail, you''re arrested and taken to the Police Station.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(75,9,'Pass a <span class="check">Luck (-2) check</span> to find $5 someone was using as a bookmark.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(75,7,'You find a student pounding on a strange device that he has hooked up to massive machinery. He states that it is a dimensional beam machine. If you offer to help him, make a <span class="check">Lore (-2) check</span>. If you pass, beams shoot out in all directions, disrupting the gates throughout the board. Roll a die for each open gate one at a time. On a success the gate is closed. Howeer, you may not take it as a trophy, but instead return it to the pile of gate markers. If you fail, the machinery overheats and explodes. Roll a die and lose that much Stamina, then move to St. Mary''s Hospital.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(76,3,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(76,8,'Pass a <span class="check">Will (-1) check</span> to get the Dean to offer you a retainer to write a manuscript for the college. Gain a Retainer card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(76,9,'You find an unusual book that radiates evil at the touch. You begin to read and are drawn into it. Make a <span class="check">Lore (-2) check</span>. If you pass, you obtain vast knowledge of the eldritch threat. Roll a die and gain that many Clue tokens. If you fail, the book consumes you &mdash; mind and soul &mdash; lose 2 Sanity and 2 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(76,7,'An archaeology professor shows you an item he recovered in an Egyptian pyramid. If you have 2 or fewer Spells, it glows in your hands and you find yourself outside, still holding it. Not wanting to confront the professor again, you decide to keep it. Gain 1 Unique Item and move to the street. If you have more than 2 Spells, nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(77,3,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(77,8,'You may choose to help an anthropology professor and his students decipher an ancient stone tablet. If so, make a <span class="check">Lore (-2) check</span>. If you pass, you correctly interpret it, draw 1 Spell. If you fail, you mispronounce a word and are <i>Cursed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(77,9,'You doze off and enter The Dreamlands. Have an encounter there, then immediately return here.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(77,7,'You find a muscular, bored-looking man who challenges you to an arm wrestling match. Lose 2 Stamina if you accept. If this does not knock you unconscious, <b>Sir William Brinton</b> laughs and slaps your shoulder, offering to join your investigation. Take his Ally card. If it is not available, gain $5 instead.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(78,3,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(78,8,'Discuss the opportunity to sell a monograph with the President of the University. Pass a <span class="check">Lore (-1) check</span> to make the sale and gain $5.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(78,9,'You look up to see Abigail Foreman leaning over you with hands on hips and a frustrated look on her face. Make a <span class="check">Will (-1) check</span>. If you pass, she helps you find the book you were looking for. Take the first <b><i>Tome</i></b> from the Unique Item deck. If you fail, you''ve made too much noise. She escorts you out of the library. Move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(78,7,'As you enter the Department of Alchemy, a professor looks up in horror. He grabs an ancient artifact from a locked drawer in his desk and holds it up before your face, chanting and making symbolic motions with the item. If you are <i>Cursed</i>, discard the Curse. If you are not <i>Cursed</i>, then you are <i>Blessed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(79,3,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(79,8,'Discuss the opportunity to sell a monograph with the President of the University. Pass a <span class="check">Lore (-1) check</span> to make the sale and gain $5.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(79,9,'Overdue book fines of $4! Pay up, or move to the street!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(79,7,'A professor of the occult asks you to hold a hideous statue that he believes to have strange powers while he reads a scroll. Energy shoots through your body. Make a <span class="check">Luck (-1) check</span>. If you pass, your spirit rises from your body and you feel that you have the power to switch bodies with another investigator. You may choose another investigator from the pile of unused investigators and bring it into play as a new character, discarding your current investigator (along with all of his items, skills, trophies, etc.). If you fail, nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(80,3,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(80,8,'Your discussions on the Mythos lead campus security to conclude that you are off your rocker, and they escort you off campus. Move to Arkham Asylum and immediately have an encounter there.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(80,9,'A book in a shadowy corner of the library begins to whisper terrible things to you. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(80,7,'A chemical brew bubbles on a nearby Bunsen burner. It smells delicious. If you drink it, make a <span class="check">Luck (+0) check</span>. If you pass, the strange liquid fortifies you. Roll a die and gain that many points, split between your Stamina and Sanity however you like. If you fail, the liquid turns out to be coffee. Gain 1 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(81,2,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(81,5,'You open some crates on the dock. Inside you find some useful things. Draw 2 Common Items. Next, make a <span class="check">Luck (-1) check</span>. If you pass, you get awat without being seen. If you fail, you are arrested and taken to the Police Station.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(81,6,'In a dusty and decaying roll-top desk, you find a mysterious manuscript. If you read it, make a <span class="check">Lore (-1) check</span>. If you pass, draw 1 Spell. If you fail, the manuscript is nothing but the insane babbling of a previous renter. Stay here next turn reading it, but gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(81,4,'You come across a man examining some old bones. Pass a <span class="check">Sneak (-1) check</span> to get close enough to see what he''s doing. He finally notices you and is impressed with your skills, introducing himself as <b>John Legrasse</b>. Take his Ally card if it''s available, otherwise he shares a meal with you. Restore your Sanity and Stamina to their maximum values.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(82,2,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(82,5,'You bump into Abner Weems, the local drunk. You help him find a place to sleep for the night, and he mumbles something to you over and over. Make a <span class="check">Luck (-1) check</span>. If you pass, his mumbling is a magical chant. Draw 1 Spell. If you fail, it''s gibberish. Nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(82,6,'You bump into <b>Eric Colt</b>. He tells you a horrible tale of the Mythos to test your nerve. If you listen, lose 2 Sanity. If this doesn''t drive you insane, take his Ally card if it is available. If it is not available, you may pump him for information instead. Gain 3 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(82,4,'You come across a large pile of human bones under the boughs of one of the willows on the isle. Lose 1 Sanity, but find a scroll among the bones. Draw 1 Spell.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(83,2,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(83,5,'You notice a piece of wood floating in the water; carved into it is the name of a ship long since sunk. As you touch it, visions of the drowning passengers'' last moments of life flood through your mind. Pass a <span class="check">Speed (-1) check</span> to hurl it away from you. If you fail, you fall to the ground with a cry. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(83,6,'You notice a glint of light in a crevice. If you reach in, make a <span class="check">Luck (-1) check</span>. If you pass, draw 1 Unique Item. If you fail, you feel a sharp pain as teeth clamp down on your hand. You manage to pull free, but you lose 2 Stamina and 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(83,4,'The willows sway in a wind that you cannot hear or feel, and for a moment, the hatred of these ancient trees for the invader who has come to their island drives you to your knees. Pass a <span class="check">Will (-2) check</span> or lose 3 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(84,2,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(84,5,'Walking along the dock you see something floating in the water near the edge of the dock. You reach for it &mdash; make a <span class="check">Luck (-1) check</span>. If you pass, you dredge up something useful. Draw 1 Common Item. If you fail, you pull to the surface a tentacle that immediately wraps around your neck and drags you under the water and out to sea. Lose 1 Sanity and 3 Stamina before you can break free.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(84,6,'Pass a <span class="check">Luck (-1) check</span> to find a hidden cache concealed in the wall of an upstairs bedroom. Draw 1 Unique item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(84,4,'A group of hooded cultists are having a meeting among the standing stones on the island. Pass a <span class="check">Sneak (-1) check</span> to overhear some of what they have to say. Gain 2 Clue tokens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(85,2,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(85,5,'A horrific stench draws your attention to the body of some bizarre marine creature, rotting on the edge of the docks. As you move towards it, an uneasy feeling grows in the pit of your stomach, as though you are meddling with something best left alone. Make a <span class="check">Will (-1) check</span>. If you pass, lose 1 Sanity. If you fail, lose 2 Sanity. In either event, if you are not reduced to 0 Sanity, you find something clutched in its webbed hands. Draw 1 Unique Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(85,6,'The ceiling beam suddenly buckles. Make a <span class="check">Speed (-1) check</span>. If you pass, move to the street. If you fail, lose 2 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(85,4,'As you start to climb back into your canoe and row to shore, you see a huge, shadowy shape disturb the water near the island. Waves of intense dread grip you, and you must pass a <span class="check">Will (-1) check</span> or be <i>Cursed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(86,2,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(86,5,'The dock workers are short-handed and offer you a job as a stevedore for the day. Make a <span class="check">Fight (+0) check</span>. If you pass, gain $3 for every success you rolled. If you fail, the boss gets tired of your lollygagging and throws you out. Lose 1 Stamina and move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(86,6,'A monster and gate appear!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(86,4,'A silent man brushes past you on the trail. Your arm goes numb with cold from the brief contact, and you whirl around to look at him, but he has disappeared. Lose 1 Stamina and pass a <span class="check">Will (-1) check</span> or lose 1 Sanity as well.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(87,2,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(87,5,'As you look out across the waves, you feel strangely compelled to throw yourself into the ocean''s watery embrace. Pass a <span class="check">Will (+1) check</span> or you are <i>lost in time and space</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(87,6,'You hear the scurrying and squeaking of a horde of rats from inside the walls. Abruptly, you realize that they are moving to surround you. Pass a <span class="check">Speed (-1) check</span> to make it to the front door first. If you fail, you are <i>lost in time and space</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(87,4,'Looking up at the night sky from the island, you see constellations that you''ve never seen before. The entire night sky is different here! Lose 1 Sanity and gain 1 Clue token.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(88,1,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(88,2,'You hear screaming. When you open the heavy cell door to investigate, a dark shape leaps out at you! It''s an insane man in a straightjacket babbling about invisible horrors. Make a <span class="check">Lore (-2) check</span> to glean some useful information from him. If you pass, gain 2 Clue tokens. If you fail, lose 1 Stamina as he attacks you.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(88,1,'A little old lady stands in front of you in line counting out a bag of pennies to deposit. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(88,3,'There are gypsies camped in the park. Make a <span class="check">Luck (-1) check</span> if you wish to interact with them. If you pass, an old man has spread several items on a blanket for sale. Draw 1 Unique Item and you may buy it for $1 less than the list price. If you fail, a hag comes up to you and tells you that death shadows you. You scoff at her and she cuts the side of your face with her fingernail, drawing blood. Lose 1 Stamina and you are <i>Cursed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(89,1,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(89,2,'The guards of the sanitarium are aware that there is an intruder. Make a <span class="check">Sneak (-1) check</span> to escape. If you pass, move to the street. If you fail, you are arrested and taken to the Police Station.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(89,1,'"This is a stick-up, see? Nobody move!" Three men armed with tommy guns rob the bank while you''re standing in line. Make a <span class="check">Combat (-1) check</span>. If you pass, you drive them off. Nothing happens. If you fail, lose all of your money.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(89,3,'A shadow falls across you from no apparent source and you shiver with more than just cold. Pass a <span class="check">Will (-1) check</span> or lose 1 Stamina and 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(90,1,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(90,2,'You are mistaken for an inmate. Doctor Mintz has the guards subdue you and conducts an experiment. Make a <span class="check">Will (-1) [2] check</span> to discover the results. If you pass, the injections seem to increase your capacity for learning. Draw 1 Skill. If you fail, his memory drug fails miserably, resulting in lost knowledge. You must discard one of the following (your choice) if able: 4 Clue tokens, or 2 Spells, or 1 Skill.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(90,1,'You see a richly dressed man making a large withdrawal. On the way out, he lights his cigar with a piece of green paper which he then drops on the ground. Pass a <span class="check">Speed (-1) check</span> to stub it out with your toe before it burns up. You discover it to be a slightly singed two dollar bill. Gain $2.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(90,3,'Pass a <span class="check">Fight (-1) check</span> to intimidate a policeman or he rousts you from the park. Move to the street.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(91,1,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(91,2,'Nurse Heather accidentally injects you with a sleeping draught. You may make a <span class="check">Fight (-2) check</span> to resist. If you fail or choose not to resist, lose your next turn and gain 2 Sanity from the prolonged rest. If you pass, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(91,1,'A teller you''ve never seen before insists she just saw you come in and make a deposit the day before. She proves it by showing you your signature. Gain $5, but lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(91,3,'You touch Founder''s Rock. Make a <span class="check">Luck (-1) check</span>. If you pass, there is an electrifying shock that opens your mind to the elder things of eons past. Lose 1 Stamina, but gain 2 Clue tokens and draw 1 Spell. If you fail, you find a strange carving. As you finger the grooves, a gate opens here and you are drawn through it.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(92,1,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(92,2,'You find some strange medicine labeled "Dream Enhancers" in a dusty cabinet. If you choose to take it, make a <span class="check">Lore (-1) check</span>. If you pass, your visions show you how to perform a ritual. Draw 1 Spell. Otherwise, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(92,1,'You find a penny with a strange sigil carved into it. Amused, you flip it in the air, then gasp as you feel the sudden gathering of magical forces around you. Make a <span class="check">Luck (-2) check</span>. If you pass, the penny comes up heads. You are <i>Blessed</i>. If you fail, it comes up tails. You are <i>Cursed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(92,3,'There are gypsies camped in the park. They are master thieves and you are their target. Pass a <span class="check">Luck (-2) check</span> or lose 1 item of your choice.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(93,1,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(93,2,'Nurse Heather is coming! Make a <span class="check">Speed (-1) check</span> to hide in time. If you pass, you see her drop something as she walks by. Draw 1 Unique Item. If you fail, she throws you out. Move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(93,1,'A man wearing dirty and tattered clothing is loitering outside the bank. He offers to sell you his last possession to get some food money for him and his family. If you accept, pay $2 and make a <span class="check">Luck (-1) check</span>. If you pass, draw 1 Unique Item. If you fail, draw 1 Common Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(93,3,'Make a <span class="check">Will (-1) check</span>. If you pass it, <b>Anna Kaslow</b> the fortune teller offers her help in your investigation. Take her Ally card if it is still available. Otherwise, gain 2 Clue tokens. If you fail, nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(94,1,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(94,2,'In the Doctor''s study, you find a book of helpful notes gathered from inmate interviews. Make a <span class="check">Lore (+0) check</span> and consult the following chart:<br /><br />Successes:<br /><table><tr><td>0)</td><td>Their stories fill you with horror even as you learn a few bits of knowledge. Lose 1 Sanity and gain 1 Clue token.</td></tr><tr><td class="nowrap">1-2)</td><td>You find several pieces of useful information. Gain 2 Clue tokens.</td></tr><tr><td>3+)</td><td>One of the interviews contains vital information. Gain 3 Clue tokens.</td></tr></table>');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(94,1,'One of the other customers in the bank recognizes you and offers you a lift. Move to any location or street area in Arkham. If you move to a location, immediately have an encounter there.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(94,3,'A pair of friendly picknickers share their lunch with you. Gain 1 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(95,8,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(95,23,'A pulsing void gapes behind a bookshelf, sending out waves of heat. Pass a <span class="check">Fight (-1) check</span> or it sucks you in, hurling you into the Abyss. Have one encounter there, then immediately return.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(95,22,'Earn $5 for a story.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(95,21,'A well-dressed man is standing on the platform. He turns and greets you by name. Although he seems oddly familiar, you don''t remember ever meeting him before. Then he steps off the platform into the path of a speeding train. Make a <span class="check">Speed (-2) check</span>. If you pass, he vanishes as you leap right through him. On the ground, you find yourself clutching a scrap of paper. Gain 1 Spell. If you fail, he is obliterated before your eyes. Roll a die and lose that much Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(96,8,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(96,23,'Jackpot! You find just what you''ve been looking for. Search either the Common or Unique Item deck and purchase any one item of your choice at list price.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(96,22,'Editor Doyle Jeffries offers you a Retainer in return for your cool stories, bro. Take a Retainer card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(96,21,'The old train hand Bill Washington sits on the train platform playing his guitar as he awaits the next train. As you listen to his singing you feel yourself healing inside. Gain 2 points divided between Stamina and Sanity however you choose.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(97,8,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(97,23,'As you wander into the back of the shop, you hear a noise. Pass a <span class="check">Speed (-1) check</span> or you look up just in time to see a descending club. Everything goes black. When you awaken, you are somewhere else. Draw a mythos card and move to the gate location shown on it, then immediately have an encounter there.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(97,22,'You accidentally tip over a bottle of ink and are aghast at the pattern the ink forms on the newsroom floor. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(97,21,'A stranger in a turban steps off the Boston local train with a crazed look on his face. Make a <span class="check">Luck (-1) check</span>. If you pass, the main pulls a strange object from beneath his cloak and gives it to you. Draw 1 Unique Item. If you fail, he pulls a poisoned blade out of his cloak and stabs you. Roll a die and lose that much Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(98,8,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(98,23,'Pass a <span class="check">Luck (-1) check</span> or you accidentally drop an item. Discard 1 item of your choice. If you have no items to drop, then draw again for a different encounter.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(98,22,'Editor Doyle Jeffries offers you a Retainer in return for your cool stories, bro. Take a Retainer card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(98,21,'Joey "The Rat" is huddled in the shadows of the train station and motions for you to come over. He has an item for sale. Draw the top Common Item card and pay $1 more than list price if you wish to purchase it.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(99,8,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(99,23,'You examine an obscene statue. Pass a <span class="check">Luck (-2) check</span> or else you feel a cold dread spread through your body as you hold it. You are <i>Cursed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(99,22,'You earn a hefty fee for a story and get a ride with Doyle Jeffries, the editor. Gain $2 and move to any location or street area in Arkham. If you move to a location, immediately have an encounter there.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(99,21,'On the loading dock you investigate a large crate with strange markings. Make a <span class="check">Sneak (-1) check</span>. If you pass, you find a very unusual item in the create. Gain 1 Unique Item. If you fail, Deputy Dingby catches you breaking it open. You are arrested and taken to the Police Station.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(100,8,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(100,23,'You weed through piles of junk looking for something useful. Make a <span class="check">Luck (-1) check</span> to see what you find. If you pass, your search has resulted in success. You may look at the top cards of both the Common and Unique Item decks. You may purchase one, both, or neither at list price. If you fail, there is little of interest here, but you may look at the top card of the Common Item deck and purchase it for list price.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(100,22,'Pass a <span class="check">Luck (-1) check</span> to find an article that a local citizen told you would shed light on the recent strange activities. Gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(100,21,'Pay $3 at the Railroad Office to claim an item left in Lost and Found. If you do so, make a <span class="check">Luck (-2) check</span>. If you pass, draw a Unique Item. If you fail, draw a Common Item.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(101,8,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(101,23,'A sale takes place. All players may participate. Turn over the top 3 Common Item cards and the top Unique Item card. Any player may buy one or more of these cards for their list price. If there is a disagreement over who gets to buy a certain card, you decide. Any items not sold are discarded.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(101,22,'Flipping through the early edition, you are surprised to see that one of the classified ads begins with your name. Reading it, you realize that it contains several coded clues to the nature of the threat that faces Arkham. Pass a <span class="check">Lore (-1) check</span> to gain 3 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(101,21,'Bill Washington moves the last of the baggage from his cart onto a truck and offers you a ride as he opens the driver''s door. If you accept, move to any location or street area in Arkham. If you move to a location, immediately have an encounter there.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(102,9,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(102,24,'Joey "The Rat" Vigil slips into an empty chair at your table and whispers, "Psssst! Wanna buy something?" Look at the top 3 cards of the Common Item deck. You may purchase any or all of them for $1 above list price. "Hey, I''ve got overhead!" The Rat explains.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(102,26,'If you succeed at a <span class="check">Luck (-1) check</span>, then Deputy Dingby absentmindedly leaves you holding his gun. You may search the Common Item deck for a .45 Revolver card and take it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(102,25,'You spot a rat leaving the kitchen. Pass a <span class="check">Will (-2) check</span> to convince Velma to bribe you $5 not to tell anyone.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(103,9,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(103,24,'You enter a "friendly" card game. Make a <span class="check">Luck (-1) check</span>. If you pass, you win $5. If you fail, you lose $3. If you lose and can''t pay, the boys rough you up and throw you outside. Lose 1 Stamina and move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(103,26,'Deputy Dingby, excitedly cleaning his gun, fires a bullet from the chamber in your direction. Pass a <span class="check">Luck (-1) check</span> to avoid getting shot. If you fail, lose 2 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(103,25,'Velma comments on how skinny you look and gives you a sandwich on the house. You may search the Common Item deck for a Food card and take it.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(104,9,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(104,24,'A horrible monster appears!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(104,26,'Sherriff Engle notes that you''re carrying an awful lot of weapons. Either pay him $5 or discard all of your <b><i>Weapons</i></b>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(104,25,'Velma reads the tea leaves left in your cup. Make a <span class="check">Luck (-1) check</span>. If you pass, the formation of the leaves indicates hope, you are <i>Blessed</i>. If you fail, the future looks bleak, you are <i>Cursed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(105,9,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(105,24,'"So, what''s your story, friend?" A smiling man inquires about your adventures over a glass of gin. You tell him your story. If you spend 3 Clue tokens, he introduces himself as <b>Ryan Dean</b> and asks to join you. Take his Ally card. If it''s not available, he gives you some useful items instead. Draw 2 Common Items.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(105,26,'One of the men in the holding cells tries to intimidate you with stories about the things that he''s seen. Make a <span class="check">Will (-1) check</span>. If you pass, gain 1 Clue token. If you fail, move to the street and lose 1 Sanity as the man laughs at you retreating back.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(105,25,'"What''ll it be, hon?" Velma takes your order. Pay up to $6 to gain that many points split between Sanity and Stamina however you like.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(106,9,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(106,24,'Prohibition failed to influence the proprietor of Hibb''s. You drink heavily while quizzing the locals about the strange goings-on in Arkham. Make a <span class="check">Will (-1) check</span>. If you pass, you hold your liquor and learn something. Gain 2 Clue tokens. If you fail, you pass out. Move to the street and either have 1 item (your choice) or all of your money stolen.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(106,26,'Sherriff Engle trusts you and asks you to step into his office to discuss the recent strange events. Pass a <span class="check">Luck (-2) check</span> to convince him to take you into his confidence and give you something to help you out. Draw 1 Unique Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(106,25,'You get food poisoning! Pass a <span class="check">Luck (-1) check</span> or lose 2 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(107,9,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(107,24,'A stranger buys you a drink. You may search the Common Item deck for a Whiskey card and take it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(107,26,'Pass a <span class="check">Will (-1) check</span> to convince Deputy Dingby to share some files with you that are very interesting. Gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(107,25,'"This must be where pies go when they die." If you want, pay $1 to enjoy a fine slice of cherry pie. If you do, gain 2 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(108,9,1);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(108,24,'Pass a <span class="check">Luck (-1) check</span> or a pickpocket cleans you out! Lose all your money.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(108,26,'Deputy Dingby accidentally drops a case file as he makes his way past you. Pass a <span class="check">Sneak (+0) check</span> to search the Common Item deck for a Research Materials card and take it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(108,25,'You find some money on the floor under the back booth. If you take it, make a <span class="check">Sneak (-1) check</span>. If you pass, roll a die and gain that much money. If you fail, Velma sees you pick up the money. She comes over and swipes it out of your hands, screaming, "Stealing my tips!" so loudly that you flee the diner. Move to the street.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(28,0,0,0,1,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(28,8,'You run for the boat. Pass a <span class="check">Speed (-1) [2] check</span> to reach it in time. If you do, you escape with vital information. Gain 5 Clue tokens. If you fail, stay here next turn, hiding from your pursuer.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(28,4,'Breathing hard, you stay huddled against the rock until the sounds of pursuit fade into the distance. No encounter.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(28,13,'Your mind is flooded with knowledge. Make a <span class="check">Lore (-2) check</span>. If you pass it, draw 1 Spell, but lose 1 Sanity.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(29,0,0,0,1,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(29,4,'Fear grabs you as the buzzing entities approach. Pass a <span class="check">Will (-1) check</span> or lose 2 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(29,6,'You see the mountains move. Lose 1 Sanity from terror.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(29,13,'A ripple in the air passes over you. Pass a <span class="check">Lore (-1) check</span> or lose 1 Spell of your choice as it is burned from your mind.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(30,0,0,0,1,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(30,8,'The city is filled with unnerving alien angles. Pass a <span class="check">Speed (-1) check</span> to avoid touching them or lose 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(30,4,'A strange creature stares at you with burning eyes. It is as if its gaze were stealing your soul. Pass a <span class="check">Luck (-1) check</span> or roll a die and subtract 2 from it (minimum 0), then lose that much Stamina and Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(30,13,'You are not safe here. A monster appears!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(31,0,0,0,1,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(31,8,'The night stars change and the brazen temple doors open, pouring forth a vast, black corpulence. Roll a die and lose that much Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(31,3,'The hideous whistling fills your ears. Pass a <span class="check">Will (-1) check</span> or lose 2 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(31,13,'The sky is spinning. Pass a <span class="check">Will (-2) check</span> or pass out and stay here next turn.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(32,0,0,0,1,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(32,8,'A horrible visage captures your gaze. Pass a <span class="check">Will (+0) check</span> to look away or lose 1 Stamina and stay here next turn.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(32,6,'Pass a <span class="check">Luck (+0) check</span> or stumble into a spider''s web. Lose 2 Sanity and stay here next turn while struggling to get free.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(32,13,'Suddenly, the things you''ve seen make sense! Gain 1 Clue token.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(33,0,0,0,1,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(33,3,'The odd plant has you in its clutches. Pass a <span class="check">Fight (-1) check</span> to break free. If you fail, lose 1 Stamina and 1 Sanity as it partially digests you.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(33,4,'An alien mind forces its way into your body. Pass a <span class="check">Luck (-2) check</span> to drive it out, gaining 2 Clue tokens in the process, or else stay here next turn, serving as its host body.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(33,13,'A glimmer of gold catches your eye. Gain $2.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(34,0,0,0,1,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(34,8,'The stink of this place is unbearable. Pass a <span class="check">Will (-1) check</span> or lose 1 Stamina, 1 Sanity, and your lunch.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(34,3,'In a flash of insight, you realize the purpose of the bladed artifact. Shivering, you put it back where you found it. Lose 1 Sanity but gain 1 Clue token.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(34,13,'Time and space bend around you. Make a <span class="check">Luck (-1) check</span>. If you pass, return to Arkham. If you fail, stay here next turn.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(35,0,0,0,1,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(35,3,'The buzzing language of your captors begins to make sense to you. Gain 2 Clue tokens. Then you must pass a <span class="check">Luck (-1) check</span> to avoid hearing about the origins of mankind and thereby losing 2 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(35,4,'The cylindered head mocks your hopes. "You''ll never return home!" it cackles. Pass a <span class="check">Will (-2) check</span> or lose 2 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(35,13,'A monster appears!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(36,0,0,0,1,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(36,4,'Your only hope is to steal a byakhee and some space mead! Pass a <span class="check">Sneak (-2) check</span> to escape. Return to Arkham and gain 2 Clue tokens. If you fail, you are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(36,6,'The golden city of your dreams is threatening to become an obsession. Pass a <span class="check">Luck (-1) check</span> or stay here next turn to hunt for it.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(36,13,'You stare into the face of madness. Roll 1 die for each point of Sanity you have. Lose 1 Sanity for each die that does not roll a success. If you do not go insane, gain 1 Clue token for each die that rolled a success.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(37,0,0,0,1,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(37,3,'Glancing behind you, you see that the beasts are still chasing you. Pass a <span class="check">Speed (-1) check</span> or be <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(37,6,'The stone face reveals to you one of the deepest secrets of the Dreamlands. Pass a <span class="check">Lore (-1) [2] check</span> to gain 4 Clue tokens. If you fail the check, however, the sight claims your last shred of sanity. Lose all your Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(37,13,'Suddenly you notice something that you had previously missed. Gain 1 Clue token.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(38,0,0,0,1,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(38,3,'You wander the empty streets of the city. No encounter.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(38,6,'You come across an abandoned onyx quarry whose chiselled vacancies are so vast that it staggers your mind. Pass a <span class="check">Lore (-1) check</span> to avoid awakening anything here, or else lose 3 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(38,13,'The unending blackness terrifies you. Pass a <span class="check">Will (-1) check</span> or lose 1 Sanity and 1 Stamina from fear and exhaustion.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(39,0,0,0,1,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(39,8,'You trip over a stone outcropping that shouldn''t be there. Pass a <span class="check">Speed (-1) check</span> or you are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(39,6,'The meeping of the ghouls in the tunnels echoes in your ears. Pass a <span class="check">Will (-2) check</span> or lose 2 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(39,13,'A monster appears from the shadows!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(40,0,1,0,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(40,3,'You must have that device if you are to escape from this accursed city. Pass a <span class="check">Sneak (-1) [2] check</span> to draw 1 Unique Item and return to Arkham. If you fail, your captors are none too kind. Lose 3 Sanity and 1 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(40,7,'The hooved, wide-mouthed traders of this land are wealthy, but dangerous. You may make a <span class="check">Lore (-2) check</span> to trade with them. If you pass, gain $6. If you fail, you are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(40,13,'Pass a <span class="check">Luck (-1) check</span> to discover a vital document. Gain 2 Clue tokens.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(41,0,1,0,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(41,6,'Pass a <span class="check">Luck (-1) check</span> to come across a riding zebra and save some traveling time. If you are in the first area of The Dreamlands, move to the second area. If you are in the second area, return to Arkham.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(41,7,'The rickety bridge collapses as you cross it. Pass a <span class="check">Fight (-1) check</span> to hang on, finding the relic on the other side. Draw 1 Unique Item. If you fail, you plummet into darkness. You are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(41,13,'You come across a slaughtered creature. Pass a <span class="check">Luck (-1) check</span> to claim a monster trophy from the cup (even if it is <b>Endless</b>) and gain 2 Clue tokens.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(42,0,1,0,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(42,6,'Touring the perfumed jungles of Kied, you come across an ancient ivory palace. Pass a <span class="check">Luck (-1) check</span> to explore it without getting caught. Draw 1 Spell. If you fail the check, lose 1 item of your choice.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(42,3,'Sometimes, violence <b>is</b> the answer. Pass a <span class="check">Fight (-1) check</span> to break free of your captors and return to Arkham.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(42,13,'Carefully, you avoid the gaze of a gigantic eye watching an alter. You may try to pass a <span class="check">Sneak (-1) check</span> to steal a cross from the dais. Draw 1 Spell. If you fail, you are wracked by pain and lose 3 Sanity.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(43,0,1,0,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(43,3,'You find yourself in an ancient and abandoned temple. Pass a <span class="check">Luck (-1) check</span> to find a golden statue worth $10. However, if you take it, you are <i>Cursed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(43,5,'Your red-eyed reflection in the mirror captures your attention. Stay here next turn.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(43,13,'The rope seems to extend upwards forever, but it''s the only way out of the crevasse you find yourself in. Pass a <span class="check">Fight (-1) check</span> to climb it and return to Arkham. If you fail, you fall, losing 2 Stamina and staying here next turn.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(44,0,1,0,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(44,6,'Make a <span class="check">Luck (-1) check</span>. If you pass, then, waving goodbye, the happy villagers bestow a gift upon you. Draw 1 Common Item.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(44,5,'Pass a <span class="check">Luck (-2) check</span> to find a book small enough to carry. Search the Unique Item deck and take the first <b><i>Tome</i></b> you find.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(44,13,'You find a quiet spot to rest and recuperate. Gain 1 Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(45,0,1,0,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(45,6,'Pass a <span class="check">Luck (-1) check</span> to chance across one of the little red singing birds of Celephais. Its song brings solace and strength to your heart. Restore your Sanity and Stamina to their maximum values.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(45,5,'You come across a wizened old creature who debates with you for some time. If you pass a <span class="check">Lore (-1) check</span>, the creature is amused by your discussion and you are <i>Blessed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(45,13,'Pass a <span class="check">Fight (-2) check</span> to pry open a grate you find built into the wall. Inside, you find something fascinating. Draw 1 Unique Item.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(46,0,1,0,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(46,7,'Your mind and body are toughened by your experiences. Pass a <span class="check">Will (+0) [2] check</span> to draw 1 Skill.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(46,5,'Pass a <span class="check">Luck (-2) check</span> to find a valuable book. If so, search the Unique Item deck and take the first <b><i>Tome</i></b> you find.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(46,13,'Wedged between a fallen stone is a scroll. Draw 1 Spell.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(47,0,1,0,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(47,3,'The conical entity tries to teach you some magic. Pass a <span class="check">Lore (-2) [2] check</span> to draw 2 Spells.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(47,5,'You find secret lore hidden in the mosaics on the wall. Make a <span class="check">Lore (+2) check</span> and gain Clue tokens equal to your successes.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(47,13,'You find some valuable items that you can sell back in Arkham. Gain $3.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(48,0,1,0,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(48,3,'You may choose to try to infiltrate one of the angled structures. If so, make a <span class="check">Sneak (-1) check</span>. If you pass, draw 2 Unique Items and keep 1 of them. If you fail, you are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(48,7,'Your peril clears your mind. Pass a <span class="check">Will (+0) check</span> to restore your Sanity to its maximum value.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(48,13,'You are beginning to understand the strange creatures. Gain 1 Clue token.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(49,0,1,0,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(49,6,'Pass a <span class="check">Will (-1) check</span> to convince the Rulers of Rokol to share their wealth with you. If so, roll two dice and add them together. Gain that much money.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(49,7,'Pass a <span class="check">Luck (-2) check</span> to find some useful things among the bones. If so, draw 1 Common Item and 1 Spell.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(49,13,'Pass a <span class="check">Luck (-1) check</span> to find the gate back. If so, immediately return to Arkham.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(50,0,1,0,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(50,6,'You encounter the talking cats of Ulthar. Pass a <span class="check">Will (+0) check</span> to draw 1 Spell.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(50,3,'Pass a <span class="check">Luck (-1) check</span> to find something useful among the incomprehensible artifacts. If so, draw 1 Unique Item.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(50,13,'A glimpse of home gives you hope. Gain 1 Sanity.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(51,0,1,0,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(51,7,'You wander the frozen wastes. No encounter.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(51,5,'An old professor from Earth teaches you a thing or two. Pass a <span class="check">Luck (-1) [2] check</span> to draw 1 Skill.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(51,13,'You come across a sleeping horror with a tentacle draped across a small gold idol. Silence is of the essence as you attempt to gently ease the idol out from under the creature''s pseudopod. Make a <span class="check">Sneak (-1) check</span>. If you pass, gain $3. If you fail, lose 2 Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(52,1,1,1,1,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(52,13,'<p><center><b>The Stars are Right</b></center></p>Shuffle the Gate deck and keep drawing until you get an encounter of the right color.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(53,1,0,0,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(53,8,'Slip on wet stones and slide into a pit. Pass a <span class="check">Luck (+0) check</span> to climb out. If you fail, lose 1 Sanity and stay here next turn.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(53,7,'A vast stirring rumbles through the plateau. Pass a <span class="check">Sneak (+0) check</span> or roll a die and lose that much Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(53,13,'There is nothing here but barren wastes. No encounter.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(54,1,0,0,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(54,2,'You are disturbed by unsettling echoes. Pass a <span class="check">Sneak (-1) check</span> to quiet them or lose 2 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(54,7,'The loathsome villagers send out their strongest warrior to fight you in unarmed combat. Pass a <span class="check">Fight (-1) [2] check</span> to defeat him and draw 1 Unique Item and gain 1 Clue token. Otherwise lose 1 Sanity and 2 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(54,13,'You push yourself to the limit. Roll 1 die for each point of Stamina you have. Lose 1 Stamina for each die that does not roll a success. If you do not fall unconscious, gain 1 Clue token for each die that rolled a success.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(55,1,0,0,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(55,7,'While you are climbing a high cliff, you begin to slip. Pass a <span class="check">Speed (-1) check</span> or crash down the mountain, losing 2 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(55,6,'Avalanche! Pass a <span class="check">Speed (-1) check</span> or lose 3 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(55,13,'The shadowy entity gives up the chase. Lose 1 Stamina from exhaustion.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(56,1,0,0,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(56,8,'You become tangled in the damp seaweed. Pass a <span class="check">Luck (-1) check</span> to pull free before something finds you while you''re helpless. If you fail, roll a die and lose that much Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(56,7,'You are taken to a prehistoric monastery, where a high priest in a yellow silken mask questions you. Pass a <span class="check">Lore (-2) check</span> to answer him to his satisfaction. Gain your freedom and 1 Spell. Otherwise, you are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(56,13,'Pass a <span class="check">Luck (-1) check</span> to discover a useful object in your wanderings. Draw 1 Unique Item.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(57,1,0,0,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(57,8,'Pass a <span class="check">Speed (-1) check</span> or you slip and slide down a barnacled surface, slashing your skin to ribbons. Lose 3 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(57,2,'Pass a <span class="check">Luck (-1) check</span> or you are faced with an enormous mountain with a strange symbol carved into it, as if by the claw of a gigantic reature. The world swims around you and you lose 3 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(57,13,'The obsidian door refuses to open. Pass a <span class="check">Fight (-1) check</span> or stay here next turn, struggling with it.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(58,1,0,0,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(58,7,'The villagers leap around a bonfire on the hoary plain. Pass a <span class="check">Sneak (-1) check</span> or you are captured and subjected to terrible rites. Lose 3 Sanity and 3 Stamina, then stay here next turn.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(58,6,'In the valley of Pnoth, where the dholes crawl and burrow nastily, you hear a slithering among the mountains of bone. Make a <span class="check">Sneak (-1) check</span>. If you fail, you are <b>devoured</b>. If you pass, gain 3 Clue tokens and return immediately to Arkham.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(58,13,'Pass a <span class="check">Speed (-1) check</span> to grab the carving before it falls. Draw 1 Spell.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(59,1,0,0,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(59,2,'A monster appears!');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(59,6,'The shantak claws at you as it swoops past overhead. Pass a <span class="check">Speed (-2) check</span> or lose 2 Stamina as its claws rake your chest.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(59,13,'You sleep, fitfully, and awaken to the sound of your own voice, chanting something. Make a <span class="check">Luck (-2) check</span>. If you pass, you are able to retain what you are saying. Draw 1 Spell and gain 2 Clue tokens. If you fail, the chant attracts something unsavory. A monster appears!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(60,1,0,0,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(60,8,'Hurricane winds smash you against the cyclopean stones. Pass a <span class="check">Fight (-1) check</span> or lose 3 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(60,6,'The wind increases, and you feel your feet go numb. Pass a <span class="check">Fight (-1) check</span> or lose 2 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(60,13,'A lurking monster appears!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(61,1,0,0,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(61,8,'The shadow tries to force its way between your lips. Pass a <span class="check">Fight (-2) check</span> or lose 2 Stamina and stay here next turn.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(61,6,'While wandering the phosphorescent woods, you are surrounded by hungry zoogs! Make a <span class="check">Luck (-2) check</span>. If you pass, they take a liking to you and give you a gourd of moon-tree wine. Gain 1 Sanity and 1 Clue token. If you fail, the zoogs close in around you, their teeth gleaming. You are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(61,13,'Pass a <span class="check">Luck (-1) check</span> to find a quiet spot to rest. Gain 2 Stamina and 2 Sanity.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(62,1,0,0,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(62,8,'A slimy monster appears!');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(62,2,'Pass a <span class="check">Speed (-1) check</span> to avoid a monstrous mass. If you fail, you are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(62,13,'The colors are blinding. Pass a <span class="check">Lore (-1) check</span> or stay here next turn.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(63,1,0,0,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(63,2,'The stone arch breaks! Pass a <span class="check">Speed (-1) check</span> to dive out of the way or roll a die and lose that much Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(63,6,'The ice bridge begins to crack. Pass a <span class="check">Luck (-1) check</span> or fall into the icy depths. If you fall, you are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(63,13,'The humidity and heat is exhausting. Lose 1 Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(64,1,0,0,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(64,2,'Starving, you consider eating some of the glowing mushrooms. If you decide to do so, make a <span class="check">Luck (-1) check</span>. If you fail, roll a die and lose that much Stamina. If you succeed, roll a die and gain that much Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(64,7,'A monster appears from the shadows!');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(64,13,'The pinkish rays nearly get you. Pass a <span class="check">Sneak (+0) check</span> or lose 2 Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(65,0,0,1,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(65,2,'You are bewildered. Pass a <span class="check">Lore (-1) check</span> or stay here next turn.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(65,4,'Pass a <span class="check">Sneak (-1) check</span> or the creatures capture and experiment on you. Lose half your items, then immediately return to Arkham with no memory of the experiments.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(65,13,'The insanity of this place finally hits you. Lose 1 Sanity.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(66,0,0,1,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(66,4,'A monster appears from the darkness!');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(66,5,'Pass a <span class="check">Luck (-1) check</span> or the book is a prison. If you fail, roll a die. On a failure, a monster appears from the book. On a success, you are drawn into the book for a time. Stay here next turn.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(66,13,'Pass a <span class="check">Luck (-1) check</span> to find something to defend yourself with. Take the first <b><i>Weapon</i></b> from the Common Item deck.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(67,0,0,1,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(67,6,'As you are climbing the cliffs in the underworld, your pocket gets caught and tears open. Pass a <span class="check">Speed (-1) check</span> or lose all your money.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(67,5,'As you read the page, you realize that you have stumbled into a written trap. Pass a <span class="check">Lore (-1) check</span> or you are <i>Cursed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(67,13,'A hideous monster appears!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(68,0,0,1,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(68,6,'A thief attempts to rob you. Pass a <span class="check">Sneak (+0) check</span> to notice him. If you fail, lose half your items (your choice) and half your money (rounded up).');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(68,4,'You''re dizzy from the strange ray. Pass a <span class="check">Will (-2) check</span> or lose 1 item of your choice.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(68,13,'The strain is too much for your mind. Lose 1 Sanity.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(69,0,0,1,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(69,2,'The feeble glow and warmth of the candle is enough to restore you a bit. Gain 1 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(69,4,'The creature''s grip is like steel! Pass a <span class="check">Fight (-2) check</span> to break free and escape. If you fail, the creature''s grip tightens with a sickening pop. You are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(69,13,'You''ve completed your task, but now you must escape before the portal closes! Pass a <span class="check">Speed (-2) check</span> to return to Arkham. If you fail, you are <i>lost in time and space</i>. In either event, you automatically close the gate you entered through.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(70,0,0,1,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(70,6,'At the south gates of Thran, you are stopped by a red-robed sentry until you can tell three dreams beyond belief. Pass a <span class="check">Luck (-1) check</span> to tour the golden spires of Thran, gaining 2 Clue tokens in the process. If you fail, stay here next turn.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(70,5,'The symbol above the doorway glows. Make a <span class="check">Luck (-1) check</span>. If you pass, gain 2 Stamina and 2 Sanity. If you fail, discard 2 items of your choice.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(70,13,'Pass a <span class="check">Fight (-2) check</span> to lever back the lid of the stone chest. Inside, you find $8. If you fail, lose 1 Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(71,0,0,1,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(71,6,'You wander the frozen wastes. No encounter.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(71,2,'You rest a bit beside the small, glowing pool filled with black, blind fish. Pass a <span class="check">Luck (-1) check</span> to notice an unusual object in the water. Fishing it out, you draw 1 Unique Item and gain $3.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(71,13,'Pass a <span class="check">Luck (-1) check</span> to discover a cache of ancient papers containing valuable information about the Mythos. Gain 1 Clue token for every success you rolled on your Luck check.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(72,0,0,1,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(72,2,'A glowing light ahead draws you towards it. Make a <span class="check">Luck (-1) check</span>. If you pass, the glow is a way home. Return to Arkham. If you fail, the light is a trap set by one of the creatures that lives here. A monster appears!');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(72,5,'That''s it! That''s the document you need! Quietly, you reach for it, trying not to disturb its guardian. Make a <span class="check">Sneak (-2) check</span>. If you pass, search the Spell deck and take 1 Spell of your choice. If you fail, lose 2 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(72,13,'Pass a <span class="check">Fight (-1) check</span> to hang on to your prize despite the wind. Draw 1 Spell.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(73,0,0,1,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(73,2,'The caverns split. Make a <span class="check">Luck (+1) check and consult the chart below:<br /><br />Successes:<br /><table><tr><td class="nowrap">0-1)</td><td>Move to the Black Cave.</td></tr><tr><td>2)</td><td>Move to The Dreamlands.</td></tr><tr><td>3+)</td><td>You enter a dark temple. Pass a <span class="check">Luck (-1) check</span> to draw a Unique Item.</td></tr></table>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(73,5,'The huge book opens noiselessly at your approach. If you choose, you may read it, in which case you must pass a <span class="check">Fight (-1) [2] check</span> to defeat its guardian. If you do, draw 3 Spells and keep 2 of them. If you fail, lose 3 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(73,13,'A monster appears!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(74,0,0,1,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(74,6,'You drink impure water from the River Kra. Pass a <span class="check">Luck (-1) check</span> or lose 1 Stamina and stay here next turn due to illness.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(74,2,'You are lost in the darkness. Pass a <span class="check">Luck (-2) check</span> or lose 1 Sanity and stay here next turn.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(74,13,'You are lost in a labyrinth of high walls. Pass a <span class="check">Lore (-1) check</span> or stay here next turn.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(75,0,0,1,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(75,4,'Exposure and fear weaken your mind. Pass a <span class="check">Will (-2) check</span> or you must either lose 2 Spells of your choice or lose 2 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(75,5,'A lurking monster appears!');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(75,13,'Monsters lurk everywhere! Pass a <span class="check">Sneak (-2) check</span> or stay here next turn.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(76,0,0,1,0,1);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(76,6,'Pass a <span class="check">Lore (+0) check</span> to fight off your desire to sleep. If you fail, you freeze in the night. You are <i>lost in time and space</i>. If you succeed, return to Arkham.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(76,4,'The stone creature pursues you. Pass a <span class="check">Speed (-1) check</span> to escape with the statue, gaining $5 and 2 Clue tokens. If you fail, the creatures smashes you off the cliff. You are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(76,13,'Luck is with you. You stumble on a cache of supplies. Draw 1 Common Item.');
