PRAGMA foreign_keys=1;

INSERT INTO "expansion" VALUES(3,'The Black Goat of the Woods',1);

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(214,7,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(214,19,'You''ve stumbled upon the Cult of the Black Goat! You may join them if you wish. To do so, you must discard at least 2 toughness worth of monster trophies, lose 3 Stamina, or an Ally. Take a "One of the Thousand" Cult Membership card. If you cannot or choose not to join, pass a <span class="check">Speed (-2) check</span> or lose 2 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(214,18,'You try talking to the elderly locals gathered around the potbellied stove playing checkers, but you gain nothing but stares and a few befuddled grunts for your trouble. Apparently they don''t like outsiders. No encounter.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(214,20,'You get caught in an unexpected downpour of freezing rain. Make a <span class="check">Speed (+0) check</span> to find shelter or lose 1 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(215,7,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(215,19,'A monster appears!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(215,18,'"Care for a pickled egg?" If you accept the shopkeeper''s offer, make a <span class="check">Luck (+1) check</span>. Gain 1 Stamina per success. If you do not roll any successes, lose 2 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(215,20,'Someone was here the night before and left behind smoldering ashes, candles, and a few drops of blood. If you pass a <span class="check">Luck (-2) check</span> you stumble upon something important and may draw 1 Unique Item.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(216,7,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(216,19,'You are attacked by a shadowy being, but a large man leaps out of the darkness and drives it off. He introduces himself as <b>Tom "Mountain" Murphy</b>. Make a <span class="check">Luck (-2) check</span>, or discard a Whiskey card to pass it automatically. If you pass, he joins your investigation. Take his Ally card if it''s available, otherwise he gives you something to protect yourself with. Search the Common Item deck and take the first <b><i>Weapon</i></b> you find. If you fail, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(216,18,'The shopkeeper opens a fresh barrel of flour only to have thousands of beetles crawl out and quickly cover the floor. Pass a <span class="check">Will (+0) check</span> or lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(216,20,'A gate and a monster appear!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(217,7,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(217,19,'You feel the darkness pulling at your very soul. Resist the effects by passing a <span class="check">Will (-1) check</span> or draw a Corruption card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(217,18,'The shopkeeper notices one of the items you''re carrying and his face lights up. "Say, I''ve been looking for one of those. You wouldn''t mind parting with it, would ya? I can pay well." You may sell any one of your Common Items for twice its listed price.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(217,20,'You find the half-buried corpse of a strange being. Draw a monster from the cup and take it as a monster trophy, even if it has the <b>Endless</b> ability.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(218,6,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(218,16,'From the darkest shadows, a monster appears!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(218,54,'An executive at the Bank of Arkham is also a member and offers to pull a few strings. You may choose any one player who currently has a Bank Loan and discard it without paying.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(218,17,'You find a terrible collection of human remains within the walls. Pass a <span class="check">Will (-1) check</span> or lose 2 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(219,6,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(219,16,'The wind has pinned an odd piece of paper against the fence surrounding the Lodge. Gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(219,54,'The Lodge has decided to clean up the town. Choose one dimension symbol other than the moon and return all non-Spawn monsters in Arkham with that symbol to the monster cup.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(219,17,'"Excuse me, stranger, but have you ever seen this symbol before?" A man standing near the house holds up an occult symbol. Make a <span class="check">Lore (-1) check</span>. If you pass, the man introduces himself as <b>Thomas F. Malone</b>, a police detective visiting Arkham on a case. He''s impressed with you and offers to join you. Take his Ally card. If it''s not available, he tells you some valuable information instead. Gain 2 Clue tokens. If you fail, nothing happens');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(220,6,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(220,16,'"Care to join the Order?" Carl Sanford and several of his henchmen ask. If you accept, pay $3 and take a Silver Twilight Membership. If you decline, pass a <span class="check">Will (-1) check</span> or lose 3 Stamina as the henchmen assist you out the door. Whether you pass or not, move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(220,54,'If you currently possess a "One of the Thousand" Cult Membership, the Inner Sanctum has found out about your double life! You must immediately lose either your Inner Sanctum or "One of the Thousand" card. Either way you lose 2 Stamina. If you are not One of the Thousand, you have no encounter.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(220,17,'On the front lawn a group of children hold hands and circle around a dead birrd, chanting words you don''t recognize. Make a <span class="check">Lore (-2) check</span>. If you pass, draw 1 Spell.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(221,6,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(221,16,'The Lodge has a strange and compelling oil painting on display. Its alien landscape bopth fascinates and nauseates you. Pass a <span class="check">Will (+0) check</span> or lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(221,54,'A fellow Lodge member helps you perform a ritual designed to protect you and your friends. Make a <span class="check">Lore (+0) check</span>. Every investigator regains 1 Sanity for each success you roll.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(221,17,'Someone has left their mathematics homework lying on the dining room table. Pass a <span class="check">Lore (-1) check</span> to see the deeper meanings. Gain 1 Clue token for each success.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(222,5,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(222,15,'A representative of the society is visiting a historic Arkham home to pick up old photos od the neighbourhoods and invites you to tag along. If you accept, move to The Unnamable and draw 2 cards, encountering one card of your choice and discarding the other.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(222,13,'Ma asks you to give her a hand moving a piano into the house. If you agree to help making a <span class="check">Fight (-1) check</span>. If you pass, Ma gratefully tucks $3 into your pocket. If you fail, you lose 1 Stamina and are <i>delayed</i> by the frustrating struggle.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(222,14,'The Cult of the Black Goat has vandalized the church, and Father Michael asks for your help in painting over the blasphemous graffiti and cleaning up the damage. If you wish to help, you are <i>delayed</i> by the effort, but Father Michael <i>Blesses</i> you for your hard work.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(223,5,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(223,15,'A monster appears and attacks as you approach the front door!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(223,13,'Ma sends you up to tell Mr. Ahrens that supper is ready. His door is ajar and as you push it open, you find that he has tied a noose to the rafters and taken his own life. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(223,14,'A terrified young man staggers into the church seeking sanctuary. He tries to explain what has traumatized him, but it is difficult to interpret his ravings. Pass a <span class="check">Lore (-1) check</span> to gain 1 Clue token.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(224,5,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(224,15,'The diary of an early immigrant settler in Arkham mentions a band of pagans that resided in the Woods, worshipping a vile Black Goat. If you currently possess a "One of the Thousand" Cult Membership, gain 3 Clue tokens and lose 1 Sanity. If not, you simply gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(224,13,'An elderly woman walks up to the porch and strikes up a conversation with you. She tells you that this had been her home during a very difficult time in her life. You spend the afternoon in nostalgic conversation about Arkham history. Gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(224,14,'The church is having a bake sale! Everything smells delicious. Spend $1 on treats to regain 1 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(225,5,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(225,15,'A large stone disc is on display which bears ancient pictograms. As you examine it, the room seems to fill with whispering voices. Pass a <span class="check">Will (-1) check</span> to resist being overcome by its power or you are <i>lost in time and space</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(225,13,'You recognize the man asking after a room as a wanted murderer. Pass a <span class="check">Speed (-2) check</span> to stop him from getting away and to collect a $5 reward from the police. If you fail, he fights his way free and you lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(225,14,'You light a candle in prayers for those souls believed to be lost. You may choose one Ally card that has been returned to the box and reshuffle it back into the Ally deck. If no Ally cards have been returned to the box, gain 1 Sanity instead.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(226,1,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(226,2,'Doctor Mintz says that one of the patients has been specifically asking for you. The lunatic calmly offers to put you in touch with unearthly power in exchange for information. For each Clue token you spend, you may draw 1 Spell. Choose 1 Spell to keep from among those you draw and discard the others.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(226,1,'A man approaches you with a business proposition. "The Bank won''t give me any money, but I know I can make us a fortune!" If you''re interested in investing, give him $5 and take a Retainer card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(226,3,'You meet <b>Anna Kaslow</b>, a fortune teller who may have some useful insight into your investigation. Make a <span class="check">Will (-1) check</span>. If you pass, you persuade her to help you. Take her Ally card if it is available. Otherwise, gain 2 Clue tokens. If you fail, nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(227,1,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(227,2,'An inmate confides in you that he is actually a reporter, investigating the conditions at the asylum. He fears he will not keep his sanity much longer and begs you to smuggle his notes to Editor Doyle Jeffries. Pass a <span class="check">Sneak (-1) check</span> to receive $3 for your troubles. If not, the nursing staff confiscates the notes and burns them. You must move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(227,1,'A group of women are collecting charitable donations on behalf of orphans and widows. If you contribute $3, regain 1 Sanity as they thank you profusely.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(227,3,'As you pass by a game of horseshoes, a bad throw sends one straight at you. Pass a <span class="check">Speed (+0) check</span> or lose 1 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(228,1,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(228,2,'You discover two men struggling, each claiming that he is a doctor and that the other is an inmate. Make a <span class="check">Luck (-2) check</span>. If you succeed, you assist the real doctor in subduing the patient and regain 2 Sanity as you reaffirm your ability to discern between the rational and the mad. If you do not succeed, lose 2 Stamina as the real maniac stabs you in the back.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(228,1,'The bank guard starts making friendly conversation with you about the people he sees every day. Make a <span class="check">Luck (+0) check</span>. If you pass, gain 1 Clue token. If you fail, his manager interrupts him before he can share anything useful.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(228,3,'A gate and a monster appear!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(229,1,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(229,2,'A voice on the other side of a locked door sounds familiar. It seems like someone from your childhood, maybe a teacher or a friend of your parents. The voice calls out your name and promises you a slow, painful death. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(229,1,'The strange events have prompted a mob of people to empty out their accounts and leave town. Pass a <span class="check">Will (-2) check</span> to change their minds or the bank closes for the rest of the game. Move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(229,3,'You find the remains of a small fire. Among the ashes you find a few scraps of paper that didn''t completely burn. Make a <span class="check">Luck (+0) check</span> and consult the chart below:<br /><br />Successes:<br /><table><tr><td>0)</td><td>You are <i>Cursed</i>.</td></tr><tr><td>1)</td><td>Gain 1 Clue token.</td></tr><tr><td>2+)</td><td>Gain 1 Spell.</td></tr></table>');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(230,8,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(230,23,'There''s an inscription on the back of this mirror! If you spend $3 to purchase it, you can attempt to translate it. Pass a <span class="check">Lore (-1) check</span> and draw 1 Spell if you pass.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(230,22,'Editor Doyle Jeffries is ready to publish what he knows about what''s really going on in Arkham. Pass a <span class="check">Will (-2) check</span> to talk him out of it. If you are unsuccessful, raise the Terror level by 1.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(230,21,'You overhear the engineer talking. "I swear to you we hit something just outside of town. Something unnatural. And it weren''t dead when we left it!" Draw a monster and place it in the Outskirts.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(231,8,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(231,23,'A sale takes place. All players may participate. Turn over the top 2 Common Item cards and the top 2 Unique Item cards. Any player may buy one or more of these cards for their list price. If there is a disagreement over who gets to buy a certain card, you decide. Any items not sold are discarded.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(231,22,'There are some real bargains in the classified ads. You may draw a Common Item and purchase it at half price, rounding up.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(231,21,'You bump into a friend who''s returned from London with his fianc&eacute;e. They''ve brought back the most delightful souvenirs! Draw 3 Unique Items, keep 1, and discard the others.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(232,8,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(232,23,'You don''t see anyone in the shop, and yet a small army of wind-up toys wheel their way across the floor toward you. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(232,22,'A staff protographer pulls you aside and offers to sell you some pictures he took that the paper won''t publish. Spend $3 to gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(232,21,'Bill Washington moves the last of the baggage from his cart onto a truck and offers you a ride as he opens the driver''s door. If you accept, move to any location or street area in Arkham. If you move to a location, immediately have an encounter there.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(233,8,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(233,23,'Examining a fragile vase, it slips out of your hands. Pass a <span class="check">Speed (-1) check</span> to catch it or Oliver Thomas makes you buy it for $3. If you fail to catch it and don''t have $3, move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(233,22,'Editor Doyle Jeffries offers you a Retainer in exchange for your cool stories, bro. Take a Retainer card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(233,21,'There''s been a rash of pickpocketing in the train station. Pass a <span class="check">Luck (-1) check</span> or lose all your money!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(234,9,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(234,24,'"So, what''s your story, friend?" A smiling man inquires about your adventures over a glass of gin. You tell him your story. If you spend 3 Clue tokens, he introduces himself as <b>Ryan Dean</b> and asks to join you. Take his Ally card. If it''s not available, he gives you some useful items instead. Draw 2 Common Items.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(234,26,'A brawl breaks out at the front desk and you get swept up into the fray. Make a <span class="check">Fight (+0) check</span> or lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(234,25,'Whoever is sitting at the table behind you is having a fascinating conversation. Pass a <span class="check">Sneak (-1) check</span> to eavesdrop, gaining one Clue token for each success.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(235,9,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(235,24,'An old-timer sits down next to you and offers to teach you a trick in exchange for a drink. If you agree, gain 1 Spell for the price of $3.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(235,26,'The police are desperate for leads and are offering a reward for information. Gain $1 for each Clue token in your possession.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(235,25,'You don''t notice right away, but Velma has accidentally given you too much change. Gain $1.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(236,9,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(236,24,'You find that tipping well gets the proprietor talking. For every $1 you spend, gain 1 Clue token, to a maximum of $3.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(236,26,'On the wall is a map of the city with pins marking the places where incidents have occurred. Imagining lines between these points, an unnerving symbol is revealed to you. Pass a <span class="check">Will (-1) check</span> or lose 2 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(236,25,'While eating your pork chops, a pale stranger comes out from the kitchen and whispers in your ear what you are actually eating. The stranger disappears into the night and your lose 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(237,9,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(237,24,'A horrible monster appears!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(237,26,'Sheriff Engle listens to your tale. He''s ready to take action, assuming that he believes you. Pass a <span class="check">Will (-3) check</span> to convince him. If you do, choose one location or street area and return all monsters in it to the cup as armed law enforcement officers storm in.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(237,25,'An old man sitting alone starts choking on his meatloaf. Pass a <span class="check">Speed (-1) check</span> to slap him on the back and dislodge the food in time. If you succeed, he tearfully thanks you and offers you his fondest possession as a reward. Draw 1 Unique Item. If you fail, lose 1 Sanity as you watch him pass away.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(238,2,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(238,5,'A young man is anxiously trying to arrange passage out of the city. Upon questioning him, he admits to horrific and revealing dreams of an impending doom. Gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(238,6,'A hideous monster appears!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(238,4,'The fog fills your lungs, trying to change you. Pass a <span class="check">Will (-1) check</span> to resist or gain one Corruption card.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(239,2,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(239,5,'An unruly gang has descended upon Abner Weems, the town drunk. Pass a <span class="check">Fight (-1) check</span> to chase them off. If you succeed, Abner gives you the object that he took which got him in trouble in the first place. Gain 1 Common Item. If you do not succeed, lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(239,6,'The door slams shut behind you! Spend a turn <i>delayed</i> as you search for another way out.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(239,4,'You''ve stumbled upon the Cult of the Black Goat! You may join them if you wish. To do so, you must discard at least 2 toughness worth of monster trophies, lose 3 Stamina, or an Ally. Take a "One of the Thousand" Cult Membership card. If you cannot or choose not to join, pass a <span class="check">Speed (-2) check</span> or lose 2 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(240,2,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(240,5,'A woman stands on the docks waiting for her husband to return, six years after his boat sank. As she tells you her sad tale, she hears her name called out by a familiar voice. Her husband has survived and returned at last! She calls you her lucky charm and <i>Blesses</i> you from the bottom of her heart.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(240,6,'A stranger approaches and struggles to explain the nature of the creature inside the house. Pass a <span class="check">Lore (+0) check</span> to understand his words and gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(240,4,'Pass a <span class="check">Luck (-1) check</span> to notice an unusual shape in the reeds. Gain 1 Common Item.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(241,2,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(241,5,'Rising from the watery depths, the corpse of a murder victim floats to the surface. Lose 1 Sanity, but gain $3 from the grateful police who are working on the case.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(241,6,'You are attacked by some unseen force. Lose 2 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(241,4,'You come across a man examining some old bones. Pass a <span class="check">Sneak (-1) check</span> t get close enough to see what he''s doing. He finally notices you and is impressed with your skills, introducing himself as <b>John Legrasse</b>. Take his Ally card if it''s available, otherwise he shares a meal with you. Restore your Sanity and Stamina to their maximum values.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(242,3,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(242,8,'A familiar name appears as you pore over the student files. Make a <span class="check">Lore (-2) check</span> and gain 1 Clue token for each success.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(242,9,'You spy a suspicious-looking man attempting to sneak a rare book out of the building. Make a <span class="check">Fight (+1) check</span> to stop him. If you succeed, a grateful Abigail Foreman offers you $3 as a reward. If you fail, lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(242,7,'An experiment on dogs has gone horribly awry and now a student is willing to pay to get rid of the evidence. If you agree to help, pass a <span class="check">Sneak (+0) check</span> to gain $3.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(243,3,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(243,8,'You find it difficult to navigate the University''s bureaucracy. You are <i>delayed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(243,9,'Engrossed in your reading, you suddenly notice the Library is locking up for the evening. Make a <span class="check">Speed (+0) check</span>. If you succeed, move to the street. If not, you are <i>delayed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(243,7,'Despite your sense of larger forces influencing your actions, more rational minds convince you that there is no such thing as blessings or curses. Discard any <i>Blessing</i> or <i>Curse</i> cards you have.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(244,3,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(244,8,'Pass a <span class="check">Will (-1) check</i> to get the Dean to offer you a retainer to write a manuscript for the college. Gain a Retainer card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(244,9,'The text you are reading is accompanied by a gruesome collection of medieval illustrations. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(244,7,'You discover a mutilated corpse, the victim of some creature that seems to have escaped. Lose 1 Sanity, and a monster appears in the Miskatonic U. street!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(245,3,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(245,8,'The University is hosting their annual fundraising gala. It costs $3 to attend. If you do, make a <span class="check">Luck (+0) check</span> and consult the chart below:<br /><br />Successes:<br /><table><tr><td>0)</td><td>A pleasant, but uneventful evening.</td></tr><tr><td>1)</td><td>The Head of the Anthropology Dept. is feeling chatty. Gain 1 Clue token as he elaborates on his recent work.</td></tr><tr><td>2+)</td><td>You''ve won a door prize! Draw a Common Item.</td></tr></table>');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(245,9,'Abigail Foreman set aside a book for you, but someone seems to have moved it. You are <i>delayed</i> while she searches for it. Search the Unique Item deck and take the first <i><b>Tome</b></i> you find.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(245,7,'The professors are willing to try some radical procedures for your condition. For every $3 you spend you may return one of your Corruption cards to the box.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(246,4,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(246,10,'The cafeteria food, while tasteless, is quite nutritious. Gain 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(246,12,'The sound of chanting fills the night air, poisoning your soul. You may resist the effects by passing a <span class="check">Will (-1) check</span>. If you fail, draw a Corruption card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(246,11,'A smiling man greets you warmly. "It''s nice to see you again!" You believe he has you mistaken for someone else, but he responds. "Nonsense! I''ve been meaning to return this to you." He hands you a package and leaves. Gain 1 Common Item.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(247,4,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(247,10,'You enter the chapel, unnoticed by a stranger who prays aloud for the health of her husband. Some of her words contain shocking information. Pass a <span class="check">Sneak (-1) check</span> to gain 1 Clue token for each success.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(247,12,'A gate and a monster appear!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(247,11,'Miriam Beecher claims to have a healing salve in stock and offers to sell you some. You may spend $3 to recover up to 2 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(248,4,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(248,10,'You scrounge up some painkillers. Regain 2 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(248,12,'You''ve stumbled upon the Cult of the Black Goat! You may join them if you wish. To do so, you must discard at least 2 toughness worth of monster trophies, lose 3 Stamina, or an Ally. Take a "One of the Thousand" Cult Membership card. If you cannot or choose not to join, pass a <span class="check">Speed (-2) check</span> or lose 2 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(248,11,'A famous occultist is in town giving a lecture. As part of his demonstration he offers to place you in a trance. If you agree, make a <span class="check">Will (-2) check</span>. Gain 1 Clue token for each success. If you fail the check, lose 1 Sanity as you are assailed by traumatic visions from your subconscious.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(249,4,3);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(249,10,'Someone has left a package unattended in the waiting room. Pass a <span class="check">Luck (-2) check</span> to draw one Unique Item before the hospital staff finds it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(249,12,'You''ve stumbled upon the Cult of the Black Goat! You may join them if you wish. To do so, you must discard at least 2 toughness worth of monster trophies, lose 3 Stamina, or an Ally. Take a "One of the Thousand" Cult Membership card. If you cannot or choose not to join, pass a <span class="check">Speed (-2) check</span> or lose 2 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(249,11,'Miriam Beecher offers to teach you the spell you need. You may pay $5 to search the Spell deck and take any one Spell you want. If you turn down her offer, nothing happens.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(109,1,0,0,0,3);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(109,7,'You examine the frescoes and find them both informative and repellent. Make a <span class="check">Lore (-2) check</span> and gain 1 Clue token per success. After that, lose 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(109,6,'Time passes differently in the Dreamlands, and you''ve needed to learn a few things to survive. Draw 1 Skill.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(109,13,'A terrible monster appears!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(110,1,0,0,0,3);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(110,2,'You discover a large chamber filled with hideous creatures, in numbers too vast to count. Your only hope is to pass undetected. Pass a <span class="check">Sneak (+1) check</span> or be devoured.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(110,7,'Something is here, frozen beneath the snow. Draw a monster from the cup and take it as a monster trophy, even if it has the <b>Endless</b> ability.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(110,13,'A strange rash has appeared on your skin, and you''ve developed a harsh, rattling cough. Lose 1 Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(111,1,0,0,0,3);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(111,8,'You hear distant chants. You feel you may learn more if you stop to listen. If you wish, you may gain 1 Spell, but you will be <i>delayed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(111,7,'The icy weather has damaged one of your items beyond repair. Discard 1 Common or 1 Unique Item of your choice. If you have no items, lose 1 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(111,13,'A crazed, half-dead explorer attacks you. Pass a <span class="check">Fight (+2) check</span> to overcome him. If you succeed, take 1 Common Item and lose 1 Sanity as you contemplate this poor soul''s fate. If you fail, lose 1 Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(112,1,0,0,0,3);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(112,8,'You stand before the massive citadel and feel baleful forces inspecting you. Make a <span class="check">Lore (-2) check</span>. If you roll no successes you have been <i>Cursed</i>!');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(112,6,'You must face the guardian to claim your prize. A Monster appears! If you defeat it, you do not collect it as a monster trophy, but you do gain 1 Unique Item.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(112,13,'You find a fresh water source that replenishes you. Gain 1 Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(113,1,0,0,0,3);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(113,8,'As you stare out across the waters, a monster appears!');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(113,2,'It is the little things that comfort you in your darkest hour. You think fondly of the mundane joys of your life. Regain 1 Sanity for each Common Item you possess.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(113,13,'A mysterious woman warns you that you would be able to see all that you need to know if your mind were not clouded by the unnatural. Discard 2 Spells to gain 5 Clue tokens. If you can''t or choose not to, gain 1 Sanity.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(114,1,0,0,0,3);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(114,2,'You can feel bleak despair taking over your mind. Make a <span class="check">Will (-2) check</span>. If you pass, regain 1 Sanity. If you do not, you leap blindly into the yawning darkness and are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(114,6,'Ghouls have feasted here and left behind a grisly mess. Pass a <span class="check">Will (-2) check</span> or lose 2 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(114,13,'The air here is too noxious. You don''t think you can make it. Pass a <span class="check">Speed (-1) check</span> or lose 1 Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(115,0,1,0,0,3);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(115,6,'Your zebra has run off without you. Now, you are <i>delayed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(115,7,'One of the villagers has a prized possession of unknown origins. Pass a <span class="check">Sneak (+1) check</span> to successfully claim it as he sleeps. Draw 1 Common Item.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(115,13,'A wounded beast snarls at you, but it cna''t move. You don''t think it''s going to live much longer. If you want to wait around, you are <i>delayed</i>, but you may draw a monster from the cup and take it as a monster trophy, even if it has the <b>Endless</b> ability.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(116,0,1,0,0,3);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(116,6,'You have inadvertently stumbled into a dangerous area. From the shadows, a monster appears!');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(116,5,'A book that you thought contained useful information has suddenly turned into a vivid description of methods of tortune. Lose 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(116,13,'It''s a dead end! You are <i>delayed</i> as you must retrace your path and try something different.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(117,0,1,0,0,3);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(117,6,'You find yourself reliving a moment in your past that you have always regretted, only this time everything goes as well as you could ever hope. Gain 2 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(117,3,'These creatures don''t want you to leave just yet. Pass a <span class="check">Sneak (-3) check</span> or be <i>delayed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(117,13,'At the top of a hill is an old stone well. You may toss $1 inside and pass a <span class="check">Luck (-2) check</span> to be <i>Blessed</i>. If you fail, nothing happens.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(118,0,1,0,0,3);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(118,3,'You read a detailed description of humanity''s extinction. Pass a <span class="check">Will (-1) check</span> or lose 2 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(118,7,'A monster appears from the shadows.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(118,13,'In the dark, you stumble into a deep hole! Looking up, you see a gravestone bearing your name. Pass a <span class="check">Speed (-2) check</span> to scramble out or lose 2 Sanity and be <i>delayed</i>.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(119,0,1,0,0,3);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(119,3,'You feel other minds trying to contact you and warn you of something. Gain 2 Clue tokens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(119,5,'A lurking monster appears!');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(119,13,'A ghostly ship captain offers you passage home, for a price. Return to Arkham, but you are <i>Cursed</i>.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(120,0,1,0,0,3);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(120,7,'The villagers offer you a little sustenance. Gain 1 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(120,5,'It is recommended to you to simply open a book at random to find the answeres you seek. If you would like to give it a try, make a <span class="check">Luck (-2) check</span>. If you pass, gain 2 Clue tokens. If not, you still gain 2 Clue tokens but you are <i>delayed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(120,13,'You are not safe here. A monster appears!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(121,0,0,1,0,3);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(121,4,'You see the faint glimmer of an object poised on a precipice. Pass a <span class="check">Fight (-2) check</span> to climb your way out of it to safety. If you succeed, draw one Unique Item. If you fail, the precipice crumbles and you are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(121,5,'You discover a copy of your favourite childhood story book. Gain 2 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(121,13,'Your feet begin to sink into a repulsive goo. Pass a <span class="check">Fight (-2) check</span> to pull yourself out. If you fail, you are sucked into the unknown and are <i>lost in time and space</i>!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(122,0,0,1,0,3);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(122,6,'King Kuranes would like a souvenir. If you have a Common Item, you may trade it to him for 2 Clue tokens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(122,4,'A horrid monster appears!');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(122,13,'On the horizon, you see the hazy silhouette of the Ancient One. Pass a <span class="check">Will (-2) check</span> or lose all your Sanity.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(123,0,0,1,0,3);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(123,2,'Your journey through the darkness is slow but restful. You are restored to your maximum Stamina, but are <i>delayed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(123,5,'You''ve found a most amazing book, filled with everything you could ever want to know &mdash; provided you can endure reading it. For each point of Sanity you are willing to lose, you may draw a Spell; choose one to keep and discard the others.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(123,13,'You take careful notes of all of your experiences. You are certain they will come in handy later. Gain 1 Clue token.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(124,0,0,1,0,3);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(124,6,'You have inadvertently stumbled into a dangerous area. From the shadows, a monster appears!');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(124,2,'The darkness claws at your mind, obscuring what was once so clear to you. Make a <span class="check">Will (-1) check</span>. For each success you roll, you may keep 1 Clue token, losing the others.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(124,13,'You encounter a stranger who looks like a much older version of yourself. You are told, "Press on, you will succeed." Gain 2 Sanity.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(125,0,0,1,0,3);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(125,2,'A monster appears!');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(125,4,'Stumbling around in the dark, you tumble down a sheer cliff. Pass a <span class="check">Speed (-1) check</span> to avoid losing 1 Common or Unique Item of your choosing.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(125,13,'An enormous stone marker covered with arcane markings stands before you. Its true purpose is unclear, but you think you may be able to translate a small portion. Pass a <span class="check">Lore (-1) check</span> to gain 1 Spell.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(126,0,0,1,0,3);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(126,6,'A strange man in a turban tells you, "In Dylath-Leen, they will exchange anything for a ruby such as this." If you take the ruby, search the Unique Item deck for a card of your choice, but then you lose 3 Sanity and are <i>Cursed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(126,5,'A strangely dressed man accuses you of trying to steal his book. Make a <span class="check">Fight (-2) check</span>. If you succeed, you can take his book away. Take the first <i><b>Tome</b></i> in the Unique Item deck. If you fail, lose 1 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(126,13,'A revolting monster appears!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(127,0,0,0,1,3);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(127,8,'You hear a monstrous roar behind you and a voice within tells you to run and not look back. Pass a <span class="check">Will (-2) check</span> to do exactly that. Otherwise you give into temptation and glance back at the creature, losing 2 Sanity and becoming <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(127,4,'<p>The sun is so far away.</p><p>Everything seems hopeless.</p><p>Lose 1 Sanity.</p>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(127,13,'A ghastly monster appears!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(128,0,0,0,1,3);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(128,8,'A massive wave crashes over you and washes one of your items out to sea. Choose one of your Common or Unique Items and discard it. If you have none, nothing happens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(128,3,'One of the strange creatures wants to take one of your items. Pass a <span class="check">Fight (-2) check</span> to hold onto it. If you do not, choose 1 Common or Unique Item and discard it.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(128,13,'You find a small gem that you plan on selling when you get the chance. Gain $3.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(129,0,0,0,1,3);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(129,8,'To your horror, the unearthly geometry of the place is starting to make sense. Take a number of Clue tokens equal to the difference between your current Sanity score and your maximum.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(129,6,'A terrible storm strikes the ship which carries you. Pass a <span class="check">Fight (-2) check</span> or lose 2 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(129,13,'You feel a powerful pulse of malevolent intelligence. It wants to tell you secrets. For each point of Sanity you sacrifice, you may gain 1 Clue token.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(130,0,0,0,1,3);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(130,4,'The Mi-Go abruptly abandon their pursuit of you. Something has scared them off. You don''t plan on waiting around to find out what it is. Pass a <span class="check">Speed (+1) check</span> or be <b>devoured</b>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(130,6,'You stumble across a hidden pocket of lava. Pass a <span class="check">Speed (-2) check</span> or lose 2 Stamina from the burns.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(130,13,'This area is filled with discarded antiques from Earth. Most of it is junk, but some of it might be worth something. Gain $3.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(131,0,0,0,1,3);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(131,3,'You examine strange glyphs and begin to understand their purpose. Pass a <span class="check">Lore (-2) check</span> to gain 1 Spell.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(131,4,'You might be smarter than the Mi-Go realize. They''ve left you alone with some alien documents. Pass a <span class="check">Lore (-2) check</span> to gain a Spell.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(131,13,'Your path ends at two identical doors. Make a <span class="check">Luck (+0) check</span>. If you succeed, return to Arkham. If not, you are <i>lost in time and space</i>.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(132,0,0,0,1,3);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(132,3,'The conical creatures wish you to return an item to your own world. They have no need of it. Gain $3.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(132,6,'Looking over the Lake of Yath and taking in the fragrant air, you find yourself comforted. Gain 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(132,13,'You are unsure if you are back in Arkham or not. Make a <span class="check">Will (-2) check</span>. If you succeed, return to Arkham. If not, lose 2 Sanity as the landscape twists and warps in a nightmarish way.');

INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(1,3,'No Turning Back','Your quickened heartbeat and the drone of chanting voices create a strange rhythm as you approach the stone altar. You hesitate, then step into its long shadow and feel a bit of your humanity slip away.','Draw a Corruption card.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(2,3,'Startling Revelation','You bump into a pair of cloaked figures conversing in the darkness and are shocked that you recognize them both!','Return 2 Allies from the Ally deck to the box. They have joined the "One of the Thousand" Cult!');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(3,3,'Birthing Chant','I&auml;! I&auml;! Shub-Niggurath! The Black Goat of the Woods with a Thousand Young!','Out of the darkness, a grotesque monster appears!');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(4,3,'Teetering Sanity','The reality of the situation suddenly slaps you in the face. Questioning your motives, you wonder when all of this became so compelling...','Lose 2 Sanity.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(5,3,'Dance of the Chosen','Deranged figures gyrate around the bonfire, beseeching the Black Goat for power.','You may draw 2 Spells, choose one to keep, and discard the other. If you do, draw a Corruption card. Otherwise, move to the street.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(6,3,'Dance of the Chosen','Deranged figures gyrate around the bonfire, beseeching the Black Goat for power.','You may draw 2 Spells, choose one to keep, and discard the other. If you do, draw a Corruption card. Otherwise, move to the street.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(7,3,'Curious Endowment','A shadowy figure reveals two strange items and whispers "Choose wisely, friend."','You may draw 2 Unique Items, choose one to keep, and discard the other. If you do, draw a Corruption card. Otherwise, move to the street.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(8,3,'A Simple Choice','"These tools are for the collective good."','Draw 1 Common Item, then either discard a different item or draw a Corruption card.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(9,3,'A Simple Choice','"These tools are for the collective good."','Draw 1 Common Item, then either discard a different item or draw a Corruption card.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(10,3,'Watching and Waiting','Cautious subterfuge earns you a glimpse at things to come, yet there is truth in the old adage about the bliss of ignorance.','You may either gain 1 Clue token, or 3 Clue tokens and a Corruption card.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(11,3,'Watching and Waiting','Cautious subterfuge earns you a glimpse at things to come, yet there is truth in the old adage about the bliss of ignorance.','You may either gain 1 Clue token, or 3 Clue tokens and a Corruption card.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(12,3,'Unbreakable Oath','The Mother''s milk is her most sacred gift. Drink deeply.','You may search the Unique Item deck for the Milk of Shub-Niggurath card, if it is available. If you do, draw a Corruption card. Otherwise, move to the street.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(13,3,'Whispers in Shadows','Take this to help with your cause, friend.','You may either gain $3 and draw a Corruption card, or move to the street.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(14,3,'Whispers in Shadows','Take this to help with your cause, friend.','You may either gain $3 and draw a Corruption card, or move to the street.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(15,3,'Questioned Loyalty','"New members often struggle with total commitment," says a senior cult member. "But, a few honest answers about your recent activities should reassure us."','Discard 2 Clue tokens, if able. You may reduce this loss by 1 for each Corruption card you have. If you cannot or will not, lose 2 Stamina and move to the street.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(16,3,'The Chosen One','You stand before the stone altar, knife in hand. Will it be another''s blood, or your own that you shed?','You must either draw 2 Corruption cards and add 1 doom token to the doom track, or remove 1 doom token from the doom track and be <b>devoured</b>.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(17,3,'Tithes That Bind','"We require a small donation."','Spend $3 (or discard items worth at least $3) to gain 2 Clue tokens and a Corruption card. If you cannot or will not, discard your Cult Membership and move to the street.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(18,3,'Tithes That Bind','"We require a small donation."','Spend $3 (or discard items worth at least $3) to gain 2 Clue tokens and a Corruption card. If you cannot or will not, discard your Cult Membership and move to the street.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(19,3,'Temptations of Power','"The Black Goat favors you."','You may search the Spell deck for a card of your choice, then lose 1 Sanity and draw a Corruption card. If you choose not to do so, discard your Cult Membership and move to the street.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(20,3,'Baptized in Blood','"Kneel and receive the Mother''s blessing!"','You may choose to be <i>Blessed</i>, then lose 2 Sanity and draw a Corruption card. If you choose not to do so, you are <i>Cursed</i> and must discard your Cult Membership, then move to the street.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(21,3,'Blood Offering','"Service demands sacrifice."','Either discard 1 Ally, discard 2 toughness worth of monster trophies, or lose 3 Stamina. If you cannot or will not do any of those things, discard your Cult Membership and move to the street.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(22,3,'Blood-Drenched Altar','The chanting process seems to echo through the trees and in your mind as the circle leader makes a series of ritual cuts in the beast''s flesh.','Raise the terror level by 1.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(23,3,'No Turning Back','Your quickened heartbeat and the drone of chanting voices create a strange rhythm as you approach the stone altar. You hesitate, then step into its long shadow and feel a bit of your humanity slip away.','Draw a Corruption card.');
INSERT INTO "cultencountercard"(_id, expansionid, title, flavourtext, description) VALUES(24,3,'Calling Forth the Darkness','Hooded figures kneel before a stone altar and begin a blasphemous ritual that draws power from a dark and malevolent source.','If you participate in the ceremony, each investigator must draw a Corruption card. If you choose not to do so, a monster surge occurs.');
