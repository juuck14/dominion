PRAGMA foreign_keys=1;

INSERT INTO "expansion" VALUES(8,'The King in Yellow',1);

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(456,1,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(456,2,'A surprising number of society''s elite have checked in lately, and they need assistants to represent their interests during their "time abroad". Pass a <span class="check">Will (-2) check</span> to gain a Retainer card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(456,1,'The bank offers a special incentive to anyone who opens an account: Take out a loan and get free tickets to the next performance of "The King in Yellow". You may take out a Bank Loan if you don''t already have one, gaining $12 from the loan instead of $10. However, if you do so, you also lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(456,3,'You seee someone battling a monster and rush to help. A monster appears! If you fight and defeat it, you may roll a number of dice equal to its toughness. If you roll a success, you may draw a random Ally. If you do not roll any successes, you may draw a Unique Item.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(457,1,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(457,2,'The more time you spend with them, the more their ramblings make sense. Gain up to 3 Clue tokens, but for every Clue token you take, you lose 2 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(457,1,'The lines of businessmen. The tellers at their alters. The communion of the safety deposit room. In a flash of insight, you realize that a bank is simply another form of church and that whatever god it is consecrated to is <i>watching you</i>. You may spend any or all of your Sanity. After spending the Sanity, roll 1 die for each point you spent. If you roll any successes, you are <i>Blessed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(457,3,'A storm strikes in the midst of rehearsals, and the actors flee for cover, leaving some of their props behind. Pass a <span class="check">Lore (-2) check</span> to realize that one of the props is real, and draw a Unique Item.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(458,1,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(458,2,'You hear a strange singsong voice that says, "The way of an eagle in the air; the way of a serpent upon a rock." Pass a <span class="check">Lore (-1) check</span> to gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(458,1,'You wander past the bank after hours, and see the night watchman convulsing on the floor! Make a <span class="check">Fight (-2) check</span> to restrain him. If you fail, you lose 1 Stamina. If you pass, he begins speaking in tongues, and someone unknown power <i>Blesses</i> you.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(458,3,'Pass a <span class="check">Sneak (-2) check</span> to catch a glimpse of the actors rehearsing for the play, gaining 2 Clue tokens. If you fail, no sooner do they notice you than a monster appears!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(459,1,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(459,2,'Volunteers for art therapy are requested. The inmates'' paintings are a window into their madness. Pass a <span class="check">Will (-1) check</span> to gain 2 Clue tokens. If you fail, lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(459,1,'The bank hosts a fund drive for the arts. If you spend $1 to make a donation, you are entered in a lottery. Pass a <span class="check">Luck (-2) check</span> to draw 1 Unique Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(459,3,'A fluttering yellow leaf falls from the old oak in the center of the square, and you glimpse a design on its surface. Make a <span class="check">Speed (-1) check</span> to catch it before it falls among the other leaves. If you pass, you see that the leaf''s veins form the shape of the Yellow Sign. Gain 1 Clue token.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(460,2,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(460,5,'If you have any <i><b>Tomes</b></i> but no <i><b>Weapons</b></i>, a crew of roustabouts mocks you for your "book learning" and begins to push you around. Lose 2 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(460,6,'A voice &mdash; perhaps the house itself &mdash; begins whispering to you. Make a <span class="check">Will (-2) check</span>. Gain 1 Clue token for each success, but you lose either 1 Stamina or 1 Sanity if you fail.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(460,4,'A monster is attacking a huddled figure in the shadows. If you pass the first <b>Combat check</b> you make against the monster, you may draw a random Ally or Spell.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(461,2,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(461,5,'The leading lady of "The King in Yellow" arrives via a steamer packet from the coast. She confuses you for a porter and hands you her bags to carry. Make a <span class="check">Luck (-1) check</span>. If you pass, she leaves one of them with you as a souvenir. Draw 1 Common Item. If you fail, she accuses you of trying to steal it and you are <i>arrested</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(461,6,'A gleam of metal draws your attention to the fireplace, which suddenly ignites! You may attempt a <span class="check">Speed (-3) check</span> to pull an item from the fire before it is destroyed. If you pass, draw 1 Unique Item. If you attempt it and fail, lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(461,4,'You watch two women walk the island while they speak of the Hyades, Hali, and Lost Carcosa. Gain 1 Clue token, then make a <span class="check">Sneak (-2) check</span>. If you pass, you hear further details, gaining 1 more Clue token. If you fail, they see you and call upon protection. A monster appears!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(462,2,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(462,5,'A crate bobs by the dock. Pass a <span class="check">Fight (-2) check</span> to pull it from the river and draw 1 Common Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(462,6,'As you look out of an upstairs window, you see an unfamiliar cityscape with twin suns setting over strange towers. Gain 1 Clue token, but you must pass a <span class="check">Will (-2) check</span> or lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(462,4,'A monster appears! If you pass a <b>Combat check</b> against it, you find its skin is covered with the scrawl of archaic runes, and may draw 1 Spell.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(463,2,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(463,5,'A shambling heap clambers from the river and engulfs you. If you pass a <span class="check">Fight (-2) check</span>, you find a Common Item in the aftermath. Otherwise, lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(463,6,'A useful weapon sits here in the center of a pentagram. Search the Unique Item deck and look at the first <i><b>Weapon</b></i> you find. You may either keep it and be <i>Cursed</i> or discard it and gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(463,4,'The clouds overhead begin to spiral. Pass a <span class="check">Lore (-1) check</span> to make out the symbol of the Yellow Sign and gain 1 Clue token.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(464,3,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(464,8,'As students start leaving town in fear of their safety, the University begins to offer discounts on tuition and services. You may pay $5 to draw 2 Skills, keeping one and discarding the other.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(464,9,'Some archaeology professors seem to be having a wager, and they call you into the room to have fun at your expense. "Be a good sport, and try to pick out the antique from these fakes we made up, will you?" If you pass a <span class="check">Lore (-1) check</span>, you may draw and keep 1 Unique Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(464,7,'A lab fire breaks out and the students are trapped inside! If you try to force your way in and save them, make a <span class="check">Fight (-2) check</span>. If you pass, you rescue the students and one of them rewards you with a family heirloom. Draw 1 Unique Item. If you fail, lose 2 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(465,3,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(465,8,'Make a <span class="check">Luck (+0) check</span>. If you pass, your request for a stipend came through and you gain $2. If you fail, the processing fees come due, and you lose $1.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(465,9,'You aren''t the only one interested in "The King in Yellow". All Maniacs and Cultists in Arkham, the Sky, and the Outskirts move to your location. You must immediately evade or defeat them.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(465,7,'"It''s a simple transference principle, really," the professor explains. "Simply place an everyday item on this platform..." If you discard a Common Item, you may roll a number of dice equal to the item''s cost. You may draw a number of cards from the Unique Item deck equal to the number of successes rolled, keeping one and discarding the rest.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(466,3,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(466,8,'You are asked to speak to the students regarding Lost Carcosa. Pass a <span class="check">Lore (-1) check</span> to gain $1 for each success you roll.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(466,9,'You check out a book of essays on the infamous "The King in Yellow". Make a <span class="check">Will (+0) check</span>. If you pass, you find a Spell scribbled in the margins. If you fail, you lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(466,7,'When paranoia and fear set in, accidents are more common. Make a <b>Speed check</b> with a penalty equal to the current terror level. If you fail, your Stamina is reduced to 0 in a lab accident.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(467,3,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(467,8,'A professor of the occult pays you to post signs throughout the campus that he claims will ward off danger. However, the signs carry their own danger. Gain $4, but pass a <span class="check">Will (-2) check</span> ot lose 2 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(467,9,'The doors close with a bang! You bolt upright from the book you fell asleep over. The library is closed for the night, and you are locked in. You are <i>delayed</i>. However, you may search the Unique Item deck and take the first <i><b>Tome</b></i> you find.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(467,7,'You watch, disturbed, as two students immerse a live rabbit in fluid, instantly transforming it to marble! Make a <span class="check">Sneak (-1) check</span> to take the fluid before they can do anything dangerous with it. If you pass, search the Unique Item deck for Petrifying Solution and take it. If you fail, they catch you in the act and splash some of the fluid on you. You are <i>delayed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(468,4,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(468,10,'The doctors know that something strange is going on, but don''t have time to talk. If you want to question them, you''ll need to look like you need medical aid. For each point of Stamina you are below your maximum, you may roll 1 die. Gain 1 Clue token for each success.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(468,12,'Yellow-robed actors are re-enacting some sort of battle in the woods... or are they rehearsing for a battle yet to come? Pass a <span class="check">Sneak (-1) check</span> to search the Common Item deck and take the first <i><b>Weapon</b></i> you find. If you fail, you are attacked and lose 2 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(468,11,'Behind a bookshelf, you hear a woman whisper, "I have killed him I loved; the world''s athirst, now let it drink." When you look down that aisle, there''s no one there, but there is an item resting on the floor. Draw 1 Unique Item. You may purchase it for half list price (round up).');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(469,4,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(469,10,'You stumble upon an autopsy room. Make a <span class="check">Will (-2) check</span> to stay calm while you investigate. If you pass, gain 2 Clue tokens. If you fail, lose 1 Stamina as you cut yourself on one of the autopsy implements.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(469,12,'Strange coins have been strewn about the glade, forming an odd symbol that pains you to see. Psas a <span class="check">Will (+0) check</span> to gain $1. You may continue checking until you fail, gaining $1 each time, but with the modifier decreasing by -1 with each check. If you fail, you lose 1 Sanity for every $1 you''ve gained from this encounter.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(469,11,'Miriam Beecher eyes you carefully. "Hmm. If we''re going to survive, I''d better teach you this." Draw 2 Spells, keeping one and discarding the other.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(470,4,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(470,10,'The hospital has a ward for special cases, but it is off-limits to the public. Make a <span class="check">Sneak (-3) check</span> and gain 1 Clue token for each success you roll.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(470,12,'You see a woman pouring blood on a field of flowers. When you move closer, she is gone. Make a <span class="check">Luck (+1) check</span>. If you pass, she left her jewelry among the blood, and you gain $3. If you fail, the strange combination of blood and flowers is toxic and you lose 2 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(470,11,'No one is manning the shop, but an intriguing item is sitting on the counter. Draw 1 Unique Item. You may either discard it, keep it and pay its list price, or keep it without paying for it and be <i>Cursed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(471,4,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(471,10,'Nurse Sharon asks for your help in organizing some records that were accidentally dropped and scattered. Pass a <span class="check">Lore (+0) check</span> to gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(471,12,'An easel and paints have been left here, abandoned by the artist. Not far away is the still life he was painting. Draw a card from the Common Item deck. If it is a <i><b>Weapon</b></i>, discard it. Otherwise, keep it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(471,11,'"Ah, there you are. That item you ordered has come in." Oddly enough, you ordered no such item. If you wish, you may make a <span class="check">Will (-2) check</span> to impersonate the rightful owner. If you pass, you may draw 1 Unique Item. If you fail, you are <i>arrested</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(472,5,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(472,15,'The society''s latest treasure, an ancient cask from Europe, is not altogether harmless. A monster appears when it is opened, attacking you. If you pass a <b>Combat Check</b> against the monster, you find that it was entombed with an ancient scroll. Draw 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(472,13,'You black out somewhere in Southside, and wake up to find yourself in the Boarding House. Regain 1 Stamina, then make a <span class="check">Fight (+1) check</span>. If you fail, you regain another Stamina, but you fall back asleep and are <i>delayed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(472,14,'You admire a new stained glass window from the pews, but if you could peer directly through it, how illuminated life would seem! Make a <span class="check">Fight (-2) check</span> to climb up to it safely. If you pass, gain 1 Sanity. If you fail, lose 2 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(473,5,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(473,15,'An actor from "The King in Yellow" leads a theater course. It''s amazing wht skills an actor needs to master in order to look like the real thing. Pass a <span class="check">Will (-2) check</span> to draw Skill cards equal to the number of successes rolled. Keep one, and discard the rest. If you fail, you learn something you wish you hadn''t in the theater exercises, and are <i>Cursed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(473,13,'You wake up to find your bed burning! Pass a <span class="check">Speed (+0) check</span> to escape. If you fail, you are <i>lost in time and space</i>. In any event, there is no sign of the fire afterwards.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(473,14,'"A strong soul must be willing to make sacrifices," Father Michael says. You may discard a single beneficial Investigator card (a Spell, Item, Ally, etc.) to make a <span class="check">Luck (+1) check</span>. If you pass, you are restored to full Sanity. If you fail, you only gain 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(474,5,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(474,15,'A retired actor, once the favorite of European theater, gestures to you. "Take this, my young friend," he says. "You''ll need it against what''s coming." He hands you a collection of news articles regarding the run of "The King in Yellow" in Paris. Pass a <span class="check">Lore (-1) check</span> to sense an arcane pattern to them and draw a Spell. If you fail, you must discard 2 Clue tokens, if able.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(474,13,'Ma Mathison comments that you look pallid, and suggests some yard work to get you feeling fit. Pass a <span class="check">Sneak (-1) check</span> to sneak a nap in the shed instead and gain 2 Stamina. If you fail, lose 1 Stamina from Ma''s "tough love" prescription.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(474,14,'A man attacks Father Michael as he tends to the grounds! Pass a <span class="check">Fight (-1) check</span> to drive the man off. If you fail, you are <i>Cursed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(475,5,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(475,15,'The Historical Society is holding more educational discussion groups than normal, thanks to the buzz of "The King in Yellow" performances. Make a <span class="check">(+0) check</span> in your lowest current skill. If you pass, draw 1 Skill.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(475,13,'Ma Mathison offers you a free night''s stay so that she doesn''t have open rooms in case "one o'' them actor types looks to board here." You regain 1 Stamina, but pass a <span class="check">Luck (-1) check</span> or you lose 1 Sanity due to bad dreams.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(475,14,'An esteemed organist from the Church of St. Barnabe in France has been haunting South Church, disturbing the flock with his otherwordly playing. Father Michael asks you to convince him to leave. Pass a <span class="check">Fight (-2) check</span> to intimidate him into leaving and gain 2 Sanity. If you fail, he troubles your dreams, and you are reduced to 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(476,6,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(476,16,'"Tut, tut," says Carl Sanford, "A sound mind is essential for membership, I''m afraid." For each point of Sanity you have, you may roll a die. If you roll any successes, you may draw a Twilight Lodge Membership card. For each unsuccessful die you roll, you lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(476,54,'The members are extremely concerned about the celestial bodies being "changed" by some outside force, and ask you to investigate. Make a <span class="check">Lore (-1) check</span>. If you pass, gain 2 Clue tokens and draw a Spell to aid you on your mission.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(476,17,'"What a shame," a voice whispers, "such unused potential." Search the Unique Item deck and take the first <i><b>Tome</b></i> you find. If it requires a skill check to read, then you may immediately make a check to read it, without spending any movement points to do so.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(477,6,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(477,16,'The members are extremely concerned about something regarding the celestial bodies being "changed" by some outside force. Pass a <span class="check">Sneak (-2) check</span> to gain 2 Clue tokens. If you fail, you are pushed out into the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(477,54,'Entering the workroom, you see a smith working on an ancient heirloom. He says "Your piece is finished, you vulture," and throws it at you in disgust. Make a <span class="check">Speed (-2) check</span>. If you pass, you may search the Unique Item deck and take the first <i><b>Weapon</b></i> you find. If you fail, you lose 2 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(477,17,'A woman poses by a window, the dim light revealing the outline of her beautiful figure, but hiding her face. "Will you paint me?" she asks. Make a <span class="check">Luck (-2) check</span>. If you pass, you find a painting of the woman where she was standing. It has a Spell scribed on the back. Draw 1 Spell. If you fail, a monster appears!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(478,6,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(478,16,'A lovely young woman stumbles into you as you''re searching for the library. "Pardon me," she says, "my name is Constance Hawberk. Have you seen my father?" Pass a <span class="check">Luck (-2) check</span> to point her in the right direction. In return, she points you to the library and you gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(478,54,'Membership has its privileges. Pass a <span class="check">Will (-1) check</span> to draw Unique Items equal to the number of successes. You may purchase any of the items drawn, using any combination of money, Clue tokens (1 Clue token = $2), or Spells (1 Spell = $3).');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(478,17,'A muffled cry and some thumping comes from a nearby closet. Pass a <span class="check">Fight (-2) check</span> to open it and rescue whoever is inside, drawing a random Ally. If you fail, whatever trapped him attacks you too: A monster appears.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(479,6,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(479,16,'When you inquire about membership, the lodge members get a gleam in their eyes. If you have an Ally, you may discard it to take both a Silver Twilight Membership card and a Unique Item, but you are <i>Cursed</i>. If you do not have an Ally or do not wish to discard one, pass a <span class="check">Fight (-3) check</span> or you are <i>lost in time and space</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(479,54,'A strange maze-like symbol has been carved in the wall. Do you dare follow it with your eyes? If so, pass a <span class="check">Will (+0) check</span> to gain a Clue token. If you fail, you lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(479,17,'An artist''s address book lies on a table with a list of names: Lizzie Burke, Pinkie McCormick, Tessie. You feel like you now them all, or knew them, and feel a stab of sadness. Gain 1 Clue token, but pass a <span class="check">Will (+0) check</span> or lose 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(480,7,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(480,19,'A collapsed side passage looks like it was once a smugglers'' hideout. Make a <span class="check">Fight (-2) check</span>. If you pass, search the Common Item deck and take the first item with a list price of $4 or more.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(480,18,'Pass a <span class="check">Lore (-2) check</span> to interpret the meaning in the strange stars overhead. If you fail, you must pass a <span class="check">Luck (-2) check</span> or be <i>arrested</i> for loitering. If you pass, you find $1 for each success you rolled.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(480,20,'You see a horrid shape descend from the sky, carrying a body. Pass a <span class="check">Will (-2) check</span> or lose 2 Sanity. If you pass, you watch it descend toward the Black Cave. If you follow it, gain 2 Clue tokens and move to the Black Cave, where you immediately have another encounter.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(481,7,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(481,19,'You come upon the ashes of an old fire. Someone camped here and scrawled runes with the ashes. Pass a <span class="check">Lore (-2) check</span> to decipher them and draw 1 Spell. If you fail, a monster appears.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(481,18,'"The King in Yellow" director is looking for old junk to use as props, and the best junk is in he garbage. Make a <span class="check">Will (+0) check</span>. For each success, draw 1 card from the Common Item deck and note its cost. Then, discard all cards drawn, but gain money equal to the list price of the most expensive item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(481,20,'An old-fashioned horse-drawn hearse creaks past on the road, and you just know that something wicked is coming. All <b>Undead</b> monsters in Arkham, the Outskirts, and the Sky move to this location. You must immediately evade or fight them.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(482,7,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(482,19,'The shopkeeper at the General Store thinks that transients living in the caves are scaring his customers. He asks you to chase them off. Make a <span class="check">Fight (-1) check</span> to intimidate them. If you pass, the shopkeeper gives you a free Common Item. If you fail, they pelt you with rocks, and you lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(482,18,'The shopkeeper opens up the secondhand section of the store. You may sell any Common Items or Unique Items you have for half list price (round up).');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(482,20,'Pass a <span class="check">Sneak (-2) check</span> to catch a glimpse of the actors rehearsing for "The King in Yellow" and gain 2 Clue tokens. If you fail, they notice your hiding spot and you are blinded by a flash of yellow light. You are <i>delayed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(483,7,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(483,19,'You see runes carved on the cave wall, but then... is it a trick of the light, or are the walls dripping silver? Make a <span class="check">Speed (-2) check</span> to copy the runes in time. If you pass, draw a number of Spells equal to the number of successes rolled. You may keep one, and must discard the rest.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(483,18,'The shopkeeper has heard of your recent exploits, and is terrified that you''ll bring bad luck down on his store! Make a <span class="check">Luck (-1) check</span>. If you pass, he throws money from the tin at you, and begs you to leave. Gain $2. If you fail, you are moved to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(483,20,'Walking through the graveyard, you see a faint glow ahead. Following it, you discover an ancient tombstone covered in luminescent wormwood. Reading the tombstone by the light of the strange fungus, you discover an important fact. Gain 1 Clue token.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(484,8,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(484,23,'You never know what you''ll find in the lost and found box. Spend up to $5. For each $1 you pay, draw one card from the Common Item deck. You may keep one card, but you must discard the rest.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(484,22,'"You may be on to something about that new play. See what you can find out." If you do not already have a Retainer card, you may spend a Clue token to gain one.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(484,21,'A porter drops what looks like an ancient relic on the tracks. If you want to try to grab it, make a <span class="check">Speed (-3) check</span>. If you pass, you may draw 1 Unique Item. If you fail, you are reduced to 0 Stamina by the oncoming train.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(485,8,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(485,23,'There are some amusing games at the Shoppe to celebrate the opening night of "The King in Yellow". Correctly guess the cost of the next Common Item in the deck, and you get to keep that item! Otherwise, discard it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(485,22,'They say that there are hidden messages in the newsprint that can only be seen halfway through the printing process. Pass a <span class="check">Sneak (-3) check</span> to catch a glimpse and gain 2 Clue tokens. If you fail, you are <i>arrested</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(485,21,'Make a <span class="check">Fight (-2) [2] check</span> as you help unload the set materials for "The King in Yellow". If you pass, you are rewarded. Draw 1 Unique Item. If you roll only one success, you are given a Common Item. If you fail, you overdo it, and lose 1 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(486,8,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(486,23,'You find a dead cat on the front stoop of the shop. Pass a <span class="check">Luck (-1) check</span> to find the weapon that killed it in the grass nearby. Search the Common Item deck and take the first <i><b>Weapon</b></i> you find.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(486,22,'You''ve experienced some strange things. Doyle Jeffries, the editor, will pay you $5 for an interview. If you accept, you are <i>delayed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(486,21,'The porter went into that train car half an hour ago, and he hasn''t come out. If you investigate, you find his mutilataed corpse clutching an item! Lose 2 Sanity but draw 1 Common Item.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(487,8,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(487,23,'"Free. Help yourself." Make a <span class="check">Lore (-1) check</span> to repair the item you find beneath the sign. If you pass, draw 1 Common Item. If you fail, lose 1 Stamina as you injure yourself.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(487,22,'Good thing you had that camera with you earlier. You may spend 3 toughness worth of monster trophies to gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(487,21,'Pass a <span class="check">Luck (+1) check</span> to find an unlabled crate and draw both 1 Unique Item and 1 Common Item. You must either purchase both of them at list price or discard them both.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(488,9,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(488,24,'A regular needs funds to get out of town, fast. He offers to sell you whatever is in his trunk. Make a <span class="check">Will (+0) check</span> to convince him to show you his best goods. If you pass, draw a number of Common Items equal to the number of successes you rolled, and purchase any that you wish for their list price. Discard the rest.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(488,26,'A protestor was arrested outside a performance of "The King in Yellow", and his ranting can be heard from the cells. Pass a <span class="check">Lore (-1) check</span> to gain a Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(488,25,'You overhear a man threatening a elderly woman with blackmail. He shows her an envelope, smiles, then returns it to his pocket and heads for the door. Make a <span class="check">Sneak (-1) check</span> to lift the envelope from his pocket. If you pass, you may either look inside to gain a Clue token or sell it back to the woman for $1.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(489,9,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(489,24,'The proprietor asks you to clean out the old shed and offers you your choice of money or whatever you find inside. You may either gain $1 or draw 2 Common Items, keeping one and discarding the other.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(489,26,'You''re called in for your expertise in the unusual to help examine a violent man who attacked cast members of "The King in Yellow". Make a <span class="check">Lore (-1) check</span>. If you pass, gain 2 Clue tokens. If you fail, Sheriff Engle demands that you say and help sort out the case. Stay here next turn.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(489,25,'You forget to pay for your meal. Make a <span class="check">Luck (+0) check</span>. If you pass, you realize it later and Velma tells you not to worry about it, so nothing happens. If you fail, she sends Deputy Dingby after you. You are taken to the Police Station and <i>arrested</i>, unless you''re the Deputy.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(490,9,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(490,24,'Make a <span class="check">Speed (-1) check</span> to complete a transaction. If you pass, you make $2 out of the deal. If you fail, someone catches you doing something you shouldn''t, and blackmails you. You either lose $5 or, if you either cannot or will not pay, you are reduced to 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(490,26,'The police department is decommissioning one of its paddy wagons and empties its trunk into the garbage. Pass a <span class="check">Luck (+1) check</span> to draw a number of Common Items equal to the successes rolled. Choose one item to keep and discard the rest.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(490,25,'Velma decides to treat you to a hero''s feast. Roll a die for each gate or monster trophy you have. For each success you roll, gain 1 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(491,9,8);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(491,24,'The only empty seat is next to a strange, diminuitive man. He has no ears, and is missing all of the fingers on his left hand. If you pass a <span class="check">Luck (+0) check</span>, he cackles, says "You did well, though you knew it not," and hands you $2.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(491,26,'Sheriff Engle is training security guards for performances of "The King in Yellow", but the training is rigorous. Make a <span class="check">Fight (-1) check</span> to qualify. If you pass, you may search the Common Item deck and take the first <i><b>Weapon</b></i> you find. If you fail, you lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(491,25,'You bite into a biscuit and find a plump, white grave worm writhing inside! Make a <span class="check">Fight (+1) check</span> to keep your lunch down. If you fail, lose 1 Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(205,1,0,0,0,8);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(205,8,'You tread water, looking for any sign of land, when something brushes against your leg. Spend 1 gate trophy, 5 toughness worth of monster trophies, or 3 Clue tokens. If you cannot, you are <b>devoured</b>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(205,6,'The light of the moon seems to bend and twist the night around you into fearsome shapes. Pass a <span class="check">Will (-2) check</span> or lose 1 Sanity and 1 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(205,13,'For once, fortune is with you. No encounter.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(206,1,0,0,0,8);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(206,8,'The sea laps at the island''s shores, reflecting strange stars above. You can make out a constellation beneath the waves. Pass a <span class="check">Lore (-1) check</span> to gain 1 Clue token.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(206,7,'Something is racing after you! Make a <span class="check">Speed (-2) check</span> or lose 1 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(206,13,'A vortex sweeps you off your feet and into oblivion. Pass a <span class="check">Fight (+0) check</span> or you are <i>lost in time and space</i>.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(207,1,0,0,0,8);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(207,7,'A strange idol looms over the trail. Is it staring at you? Make a <span class="check">Luck (-1) check</span>. If you pass, it was your imagination. If you fail, it''s a monster, and it attacks!');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(207,6,'You end up in a childhood dream, but it now seems dark and cold. Pass a <span class="check">Will (-1) check</span> or lose 2 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(207,13,'You wrestle shadows for what seems like days, only to emerge into a plain of blinding light. Lose either 1 Stamina or 1 Sanity.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(208,1,0,0,0,8);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(208,6,'Staring into the depths of the river, you know that you can go no further today. You are <i>delayed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(208,2,'Something offers you a deal. Either all other investigators lose their choice of 1 Sanity or 1 Stamina, or you are reduced to 1 Sanity and 1 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(208,13,'A monster appears!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(209,1,0,0,0,8);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(209,8,'You find a body floating upon the waves. Can you revive it? Pass a <span class="check">Lore (-2) [2] check</span> to draw a random Ally.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(209,2,'The horror within erupts from your own throat and attempts to choke you. You lose Stamina equal to the number of points of Sanity you are currently short of your maximum.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(209,13,'The tides of time and space collide. You meet your future self, and learn what is in store. Gain 1 Clue token, then pass a <span class="check">Will (+0) check</span> or lose 1 Sanity.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(210,1,0,0,0,8);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(210,7,'It suddenly strikes you that you''ve never been so alone and so lost. It doesn''t seem possible that you''ll ever get back home. Pass a <span class="check">Will (-3) check</span> or lose 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(210,2,'The ground shakes and a crevasse opens beneath you, threatening to swallow you. Pass a <span class="check">Speed (-1) check</span> or you are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(210,13,'A large dog lopes alongside you for a time, warding you from hard. No encounter.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(211,0,1,0,0,8);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(211,5,'You may discard any number of <i><b>Tomes</b></i> in exchange for drawing an equal number of cards from the Unique Item deck.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(211,3,'You find a map of this strange place. The streets are laid out in a horrible pattern! Pass a <span class="check">Will (+1) check</span> or lose 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(211,13,'In some alternate history, you see a United States plunged into dictatorship. Suicide chambers are erected in city parks. This could be the shape of things to come. Gain 2 Clue tokens and lose 1 Sanity.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(212,0,1,0,0,8);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(212,7,'There is something buried in the ice. Pass a <span class="check">Luck (-2) check</span> to pry it free without breaking it. Draw 1 Unique Item.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(212,6,'Hearing an unwholesome flapping from above, you press yourself into the shadows. A nightgaunt flies overhead, not noticing you, and drops a sheet of parchment. Draw 1 Spell.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(212,13,'Exhausted, you lay down and sleep for awhile. You are <i>delayed</i>.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(213,0,1,0,0,8);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(213,7,'The cold chills your soul and steals your memories instead of your warmth. Pass a <span class="check">Fight (-1) check</span> or discard 2 Clue tokens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(213,5,'You find a strange, distorted mirror, and looking inside, see the visage of a fellow investigator! If another player agrees, your investigators may switch locations.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(213,13,'The shadows of men''s thoughts lengthen in the afternoon. Pass a <span class="check">Lore (-2) check</span> to gain Clue tokens equal to the number of successes you roll.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(214,0,1,0,0,8);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(214,6,'Others'' nightmares are not meant to be witnessed, even indirectly. Lose either 2 Sanity or 1 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(214,3,'All cities are but a reflection of Carcosa. Make a <span class="check">Lore (-2) check</span> to remember the street''s patterns from "The King in Yellow". If you pass, you immediately return to Arkham. If you fail, you are <i>delayed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(214,13,'Black stars shine upon you, and reality is reversed. If you were <i>Cursed</i>, you are now <i>Blessed</i>. If you were <i>Blessed</i>, you are now <i>Cursed</i>.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(215,0,1,0,0,8);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(215,7,'Someone has taught the locals to read ancient tongues. If you appease them by discarding a <i><b>Tome</b></i>, they offer you food and shelter: gain 2 Stamina. If you do not, you lose 1 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(215,3,'In this alien place, mundane objects serve to remind you that Earth still exists, somewhere, somewhen. Pass a <span class="check">Will (-3) check</span> to gain 2 Sanity. You gain +1 bonus to the check for each Common Item you have.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(215,13,'Along the shore, the cloud waves break. Pass a <span class="check">Fight (+1) check</span> to gain 1 Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(216,0,1,0,0,8);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(216,5,'Pass a <span class="check">Will (-3) check</span> to be allowed to leave the library, or you are <i>delayed</i>. You gain a +1 bonus to the check for each Spell you have.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(216,6,'You drift through tranquil fields that others have created as they sleep. Pass a <span class="check">Sneak (-1) check</span> to gain a Clue token.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(216,13,'"Is that you, Camilla?" a voice calls to you in the darkness. If you flee, lose 1 Stamina. If you answer, pass a <span class="check">Will (-2) check</span> or lose 1 Sanity.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(217,0,0,1,0,8);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(217,4,'The mi-go offer to take your brain on a journey to the far reachs of space... but your body will have to stay here. If you accept, gain 3 Clue tokens, but you are <i>delayed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(217,6,'You stop to smell an unusual flower in the woods, only to feel your memories fading. You must pass a <span class="check">Will (+0) check</span> or discard all of your Clue tokens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(217,13,'A strange being pays you a visit, and tests you. Make a <span class="check">Will (-2) check</span>. If you fail, you lose 1 Sanity and 1 Stamina. If you pass, you gain 3 Clue tokens.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(218,0,0,1,0,8);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(218,2,'The icy wind howls through the endless tunnels with no sign of relief. Pass a <span class="check">Will (-1) check</span> or lose 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(218,5,'You feel that all the answers are here, if only you can find them. Gain 2 Clue tokens, but you are <i>delayed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(218,13,'A horrible shadow falls across you. Roll a die. On a 1, either lose 5 Clue tokens or you are <i>devoured</i>.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(219,0,0,1,0,8);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(219,4,'A dark creeping fungus flows randomly across the ground. Pass a <span class="check">Luck (-2) check</span> or lose 2 Stamina and set your Speed slider to its lowest possible value.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(219,5,'The librarians are nowhere to be seen. Pass a <span class="check">Speed (-1) check</span> to draw Unique Items equal to your successes, keeping any <i><b>Tomes</b></i> that you draw and discarding the result.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(219,13,'A tree, covered in blood and waving in the wind, stands before you. If you pass a <span class="check">Luck (-1) check</span>, it is just a tree. If you fail, it attacks you! Lose 1 Sanity and 2 Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(220,0,0,1,0,8);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(220,5,'You stumble upon a discussion of the Ancient Ones. If you continue on your way, nothing happens. If you stop to listen, pass a <span class="check">Lore (-3) [2] check</span> or lose 4 Sanity. If you pass, take this card. If the Ancient One awakens, you may discard this card to cancel its attack for one turn.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(220,6,'You are reunited with your relatives in a pleasant dream. Regain your choice of either 1 Sanity or 1 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(220,13,'A monster appears!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(221,0,0,1,0,8);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(221,4,'You open a door, and quickly discover that the atmosphere outside cannot sustain human life! Pass a <span class="check">Speed (+0) check</span> to seal the door again or lose 3 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(221,2,'The air becomes viscous and toxic. Pass a <span class="check">Fight (+0) check</span> to push your way free. If you fail, lose 1 Stamina and make the check again. Continue making the check until you are free or you are knocked unconscious.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(221,13,'Eerie purple lights beging wending their way towards you. Pass a <span class="check">Will (+0) check</span> or you are drawn to them and <i>delayed</i>.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(222,0,0,1,0,8);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(222,6,'The man in the corner asks you for a match. You can tell right away, he''s not ordinary. Pass a <span class="check">Will (-2) check</span> to be <i>Blessed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(222,2,'Tentacles pull your body in an infinite number of directions... or is that your mind they are shattering, instead? Either your Sanity is reduced to 1 or your Stamina is reduced to 1.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(222,13,'If you have a Unique Item, nothing happens this turn. If you do not have one, the winds seem to taunt you, mocking your helplessness. Lose 2 Sanity.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(223,0,0,0,1,8);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(223,8,'You plunge into the icy waters. Even drowning is better than seeing that terrible form again. If your Stamina is 3 or less, you are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(223,3,'Alone and far from home, you''ve struggled. Pass a <span class="check">Will (-2) check</span> or lose 2 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(223,13,'"I am demoiselle Jeanne d''Ys," she says, her beautiful eyes piercing your heart. If you stay with her, gain 1 Stamina and 1 Sanity, but you are <i>delayed</i>. If you leave her, pass a <span class="check">Luck (-1) check</span> or lose 1 Stamina and 1 Sanity.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(224,0,0,0,1,8);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(224,3,'Coming to, you find yourself strapped down to a table. One of the strange beings picks up a sharp metal instrument and brings it towards your eye. You are <i>delayed</i> and lose 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(224,4,'As you stare up at the unfamiliar sky, you hum a song that your mother used to sing to you, and it helps to hold the madness at bay. No encounter.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(224,13,'The creature demands a toll. Discard a <i><b>Tome</b></i> or lose all of your Clue tokens and you are <i>delayed</i>.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(225,0,0,0,1,8);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(225,8,'Great Cthulhu spares the faithful. If you wish, you may attempt a <span class="check">Lore (-3) check</span>. If you fail, you are <b>devoured</b>. If you pass, take this card. Discard this card the next time you would be <b>devoured</b> to instead be reduced to 1 Sanity and 1 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(225,6,'A caat brushes against your leg and meows. Regain 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(225,13,'In each facet of the gem is a monstrosity waiting to be born. Make a <span class="check">Luck (+0) check</span>. If you fail, a monster appears!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(226,0,0,0,1,8);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(226,6,'Make a <span class="check">Will (-2) check</span> to whisper to a sleeper in his dreams. If you pass, one investigator in Arkham of your choice gains Clue tokens equal to the number of successes you roll.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(226,3,'The bells ring ten, eleven, then midnight. But what does time mean, here? If your Sanity is 3 or less, you are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(226,13,'You hear the call of a hunting creature in the sky above. Pass a <span class="check">Sneak (-2) check</span> or you become its prey and lose 1 Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(227,0,0,0,1,8);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(227,4,'The mi-go question you about the Dynasty of America, ruled by "Emperor Castaigne". You must lose 2 Sanity or be <i>delayed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(227,6,'You see a young man weeping over a marble statue of a beautiful young woman. The curses he cries out against the gods chill your bones. Lose 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(227,13,'You pick up a chestnut, and it begins to writhe in your hands. Pass a <span class="check">Speed (-1) check</span> to fling it away. If you fail, the grub inside bursts forth, grows to impossible size, and attacks you. A monster appears!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(228,0,0,0,1,8);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(228,8,'A steamer ship looks out of the fog. If you jump on board, return to Arkham on the gate you entered and place an explored marker on it. Then make a <span class="check">Luck (-3) check</span>. If you fail, they end up being pirates, and you lose all of your money and items.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(228,4,'The mi-go have transported you to Yuggoth! Pass a <span class="check">Lore (+0) check</span> to gain 1 Clue token but lose 1 Sanity. If you fail, nothing happens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(228,13,'Have you seen the Yellow Sign? Pass a <span class="check">Speed (+0) check</span> to avert your eyes. If you fail, you are reduced to 1 Sanity.');
