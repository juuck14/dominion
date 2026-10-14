PRAGMA foreign_keys=1;

INSERT INTO "expansion" VALUES(4,'Innsmouth Horror',1);

INSERT INTO "board"(_id, title, expansionid) VALUES(3,'Innsmouth',4);

INSERT INTO "neighbourhood" VALUES(14,3,'Factory District');
INSERT INTO "neighbourhood" VALUES(15,3,'Church Green');
INSERT INTO "neighbourhood" VALUES(16,3,'Innsmouth Shore');

INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(36,14,'First National Grocery','First National Grocery');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(37,14,'Gilman House Hotel','Gilman House Hotel');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(38,14,'Marsh Refinery','Marsh Refinery');

INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(39,15,'Esoteric Order of Dagon','Esoteric Order of Dagon');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(40,15,'Innsmouth Jail','Innsmouth Jail');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(41,15,'Jail Cell','Innsmouth Jail Cell');

INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(42,16,'Falcon Point','Falcon Point');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(43,16,'Devil Reef','Devil Reef');
INSERT INTO "location"(_id, neighbourhoodid, title, sort_title) VALUES(44,16,'Y''ha-nthlei','Y''ha-nthlei');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(250,14,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(250,36,'Brian Burnham, the young manager of the store, offers you a bargain. Draw 1 Common Item &mdash; you may purchase it for $1 less than its list price.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(250,37,'Not only have you not been provided with a key to your door, but the deadbolt has been removed. Pass a <span class="check">Sneak (-1) check</span> to find somewhere else to sleep and move to the street. If you fail, you are <i>delayed</i> and lose 2 Stamina and 2 Sanity when they come for you...');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(250,38,'A monster appears!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(251,14,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(251,36,'Pass a <span class="check">Sneak (-1) check</span> or you accidentally knock over a tower of soup cans. Blushing, you flee to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(251,37,'Heavy footsteps come charging up the stairs towards your room during the night. Pass a <span class="check">Luck (-1) check</span> to climb down the drainpipe on the outside of the building and move to the street. If you fail, you are <i>arrested</i> by Chief Constable Andrew Martin for unclear reasons and taken to <b>Innsmouth Jail</b>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(251,38,'In the small office''s library, you discover the <i>Sumatra Queen''s</i> log. Reading it, you learn about Captain Obed Marsh''s travels to the South Pacific and his contact with the strange creatures that live beneath the waves. Make a <span class="check">Lore (-2) check</span> and gain a Clue token for each success.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(252,14,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(252,36,'As you browse the aisles, you notice something not quite right for sale in the butcher''s section. Pass a <span class="check">Will (-1) check</span> or lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(252,37,'Your inquiries have attracted the attention of some locals. Pass a <span class="check">Will (-2) check</span> to calm them down, or add an uprising token to the Deep Ones Rising track.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(252,38,'A priest from the Esoteric Order of Dagon is here, picking through a collection of strange foreign jewelry. The conspiracy begins to take shape in your mind... Gain 1 Clue token, then pass a <span class="check">Sneak (-2) check</span> or move to the street.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(253,14,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(253,36,'The First National delivery truck is about to leave. If you wish, a little fast-talking and $3 will get you a ride to any location in Arkham. Immediately have an encounter at your destination.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(253,37,'When you open the wardrobe in your room, you discover a message written on the inside of the door. It warns of threats against your life and tells you how to avoid them. Take the Stealth card from the Skill deck if it is available. If not, gain a Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(253,38,'A polished mirror of some submarine material leans against the wall here. You gaze into it and make a <span class="check">Luck (-1) check</span>. If you pass, the distorted world you see within grants you 1 Clue token. If you fail, draw one Innsmouth Look card as an awful truth becomes evident.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(254,14,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(254,36,'The First National Grocery is well-stocked today. You may spend up to $3, gaining 1 Stamina for each $1 you spend.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(254,37,'Before going to sleep, you decide to barricade the door with some of the room''s furniture, just to be safe. Pass a <span class="check">Fight (-1) check</span> or lose 1 Stamina in the process.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(254,38,'The gold bars are still searing hot, but no one else is around. You may lose up to 3 Stamina. Gain $2 for every 1 Stamina you lose.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(255,14,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(255,36,'Some of this food doesn''t seem very wholesome... Pass a <span class="check">Luck (+0) check</span> or lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(255,37,'Another traveller starts up a cheery conversation with you. Gain 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(255,38,'You find a curious collection of loathsome and alien jewelry. Could this be what the refined gold is derived from? If you choose to investigate more closely, make a <span class="check">Lore (-2) check</span>. If you pass, draw 1 Unique Item. If you fail, you are <i>Cursed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(256,14,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(256,36,'"I''ve noticed some odd things about Innsmouth," says Brian Burnham, the teenaged manager of the store. You chat with him for awhile. Gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(256,37,'As you sleep, you dream of vast underwater spaces filled with strange, horrific creatures. Draw one Innsmouth Look card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(256,38,'Jacob Marsh greets you warmly. "Of course I know you! My aunt is your grandmother!" Draw two Innsmouth Look cards.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(257,14,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(257,36,'Since there are no other customers in the store, the teenaged manager, who introduces himself as Brian Burnham, shares his lunch and passes an hour in pleasant conversation with you. Gain 1 Stamina and 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(257,37,'Joe Sargent''s bus is waiting. You may spend $1 to hitch a ride to any Arkham location and have an encounter there.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(257,38,'You find your way into the office of Jacob Marsh and begin examining his accounts. Pass a <span class="check">Lore (-2) check</span> to gain 2 Clue tokens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(258,14,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(258,36,'The young manager, Brian Burnham, seems like he might believe your story. Make a <span class="check">Will (-2) check</span> to convince him. If you succeed, you use his telephone to call the authorities. Gain a Clue token and place it on any one space of your choice on the Feds Raid Innsmouth track.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(258,37,'"Oh, no sir. The bus won''t be leaving today &mdash; mechanical difficulties. You''ll have to spend the night." Do they know that you know? A sleepless night robs you of 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(258,38,'From the catwalk above, you have a clear view of the assembly line and the shambling, monstrous workers. Make a <span class="check">Lore (-1) check</span> to realize what they really are. If you pass, gain 1 Clue token and lose 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(259,14,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(259,36,'As you step into the grocery, glass crunches beneath your feet. The lights are out. Advancing cautiously, you find the young manager''s corpse behind the counter with a note: "Too many questions." Move to the street and lose 1 Sanity. <b>First National Grocery</b> is closed for the rest of the game.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(259,37,'Despite all the horrible stories you''ve heard, the desk clerk seems genuinely pleased to see you. "Welcome to Innsmouth," he says. "Welcome home." Draw two Innsmouth Look cards.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(259,38,'Thick-looking men catch you where you don''t belong. They work you over and toss you into the street. Lose 1 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(260,14,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(260,36,'The amount of fresh fish for sale is frankly suspicious. You can spend $2 to bring some samples outside, where careful investigation yields as many Clue tokens as you gain successes on a <span class="check">Lore (-1) check</span>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(260,37,'Your door is locked from the outside! You are <i>delayed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(260,38,'You''re not alone in here. Pass a <span class="check">Sneak (-2) check</span> or a monster appears! If you pass the check or defeat the monster, gain $5 as you discover a cache of gold.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(261,14,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(261,36,'A conversation with the teenaged manager gives you a much better grasp of the lay of the land. Search the Common Item deck for a Map of Arkham.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(261,37,'Joe Sargent is willing to give you a ride to Arkham in his bus, provided you haven''t learned too much. If you have 3 or fewer Clue tokens, you may move to any location in Arkham and immediately have an encounter there.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(261,38,'Rotting floorboards give way beneath you. Make a <span class="check">Speed (-2) check</span> or lose 1 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(262,14,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(262,36,'As you''re leaving the grocery, you are set upon by a gang of local toughs. Make a <span class="check">Speed (-1) check</span> to move safely to the street. If you fail, lose 1 Stamina and remain where you are.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(262,37,'"Oh dear," remarks the desk clerk, with a slight smile and a shake of her head. "Someone must have taken your bag by mistake. We''ll try to get that cleared up as soon as possible." Discard one Common or Unique Item of your choice.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(262,38,'Furtively, you pocket some processed gold. Make a <span class="check">Sneak (-2) check</span> and gain $1 per success. If you get no successes, you are discovered and tossed out into the street.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(263,14,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(263,36,'"Are you visiting family in town?" asks the clerk. Draw one Innsmouth Look card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(263,37,'The desk clerk stops you as you go by. "This just came in for you." He hands you a telegram that reads "GET OUT OF INNSMOUTH STOP YOU KNOW TOO MUCH STOP." If you heed the telegram, move immediately to the <b>Train Station</b>. If you ignore it, further investigation yields 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(263,38,'Your studies of the Innsmouth threat so far enable you to quickly pick the most relevant item from the crowd of artifacts and jewelry awaiting processing. You may spend 3 Clue tokens to draw 2 Unique Items, keeping one of your choice and discarding the other.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(264,15,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(264,39,'"Do you seek the blessing of Dagon?" If you do, draw two Innsmouth Look cards and become <i>Blessed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(264,40,'Constable Ropes "doesn''t like the look of ya." Pass a <span class="check">Fight (+1) check</span> or lose 1 Stamina as he throws you out of the building. Regardless of the result, move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(264,41,'Pretending to be asleep, you listen to Constable Ropes and the other guards talk. Gain 2 Clue tokens, and you are <i>delayed</i>, even if you are normally immune to being <i>delayed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(265,15,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(265,39,'Mingling with the congregation proves easier than you thought it would. Draw one Innsmouth Look card and make a <span class="check">Sneak (+0) check</span>. If you pass, gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(265,40,'Constable Ropes has turned his back while the weapons locker is unlocked. If you wish to try covertly arming yourself, make a <span class="check">Sneak (-2) check</span>. If you pass, search the Common Item deck and take the first <i><b>Weapon</b></i> you find. If you fail, you are <i>arrested</i> as you try to explain yourself.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(265,41,'During the night, a harsh voice says, "Bring the prisoner." You are dragged from your cell to a disused house near the docks with a hole in the floor. Looking into it, you see a horrible shapeless mass that murmurs, "Tekeli-li! Tekeli-li!" Gasping, you barely have time to scream as the guard pushes you down into the hole. You are <b>devoured</b>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(266,15,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(266,39,'"Do you seek the blessing of Dagon?" If you do, draw two Innsmouth Look cards and become <i>Blessed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(266,40,'In a dark, disused corner of the jail, you find something that might come in handy. Draw 1 Common Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(266,41,'A black hood is thrown over your head, and you are taken to the docks, where you are placed on a small rowboat. After some time, your bonds are removed, and you are pushed roughly out of the boat and onto the ground. "Have fun!" the guards say, laughing. Pulling off your hood, you find yourself far out to sea on top of a reef. Move to <b>Devil Reef</b> and have an encounter.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(267,15,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(267,39,'The priest''s back is turned! Now''s your chance! Make a <span class="check">Speed (-1) check</span>. If you pass, gain 2 Clue tokens. If you fail, you are moved to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(267,40,'You walk in on a grisly sight. The constables are dragging a brutally beaten figure out of a cell. "A tragic suicide," they explain. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(267,41,'A black hood is thrown over your head, and you are taken to the docks, where you are placed on a small rowboat. After some time, your bonds are removed, and you are pushed roughly out of the boat and onto the ground. "Have fun!" the guards say, laughing. Pulling off your hood, you find yourself far out to sea on top of a reef. Move to <b>Devil Reef</b> and have an encounter.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(268,15,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(268,39,'The Head of the Order, Robert Marsh, has caught you snooping around! Make a <span class="check">Will (-1) check</span>. If you pass, you endure the encounter unharmed. If not, you are <i>Cursed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(268,40,'Inside one of the cells, an emaciated old man calls out to you. "I know I won''t survive the night. But you might still escape! Take this and leave Innsmouth forever." He reaches into his shoe and pulls out some money. Gain $5.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(268,41,'During the night, a harsh voice says, "Bring the prisoner." You are dragged from your cell to a disused house near the docks with a hole in the floor. Looking into it, you see a horrible shapeless mass that murmurs, "Tekeli-li! Tekeli-li!" Gasping, you barely have time to scream as the guard pushes you down into the hole. You are <b>devoured</b>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(269,15,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(269,39,'Pass a <span class="check">Luck (-2) check</span> to find a small amulet that seems out of place. If you take it, you are <i>Blessed</i>, but must move to the street and add one uprising token to the Deep Ones Rising track as one of the worshippers spots you and shouts an alarm. If you leave it, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(269,40,'The constables take a keen interest in one of your more unusual possessions and are willing to trade information for it. If you discard one Unique Item of your choice, you may gain 3 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(269,41,'Constable Ropes enters your cell with a wooden baton. Some time later, he wearies of his sport and leaves you laying on the floor. Lose 1 Sanity and 1 Stamina. You are <i>delayed</i>, even if you are normally immune to being <i>delayed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(270,15,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(270,39,'Although you can''t tell from where, the Hall is filled with the sound of chanting. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(270,40,'You overhear Constable Ropes speaking to someone on the phone. Although you only get one half of the conversation, you think you can fill in the details. Gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(270,41,'During the night, a harsh voice says, "Bring the prisoner." You are dragged from your cell to a disused house near the docks with a hole in the floor. Looking into it, you see a horrible shapeless mass that murmurs, "Tekeli-li! Tekeli-li!" Gasping, you barely have time to scream as the guard pushes you down into the hole. You are <b>devoured</b>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(271,15,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(271,39,'The people in the building regard you strangely. If you are <i>Blessed</i>, they hiss and flee from you, leaving a Unique Item behind. If you are <i>Cursed</i>, they welcome you as one of their own. Draw one Innsmouth Look card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(271,40,'Near the cells, you find a small medical kit. It appears as if it''s never been opened. Gain 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(271,41,'Constable Ropes enters your cell with a wooden baton. Some time later, he wearies of his sport and leaves you laying on the floor. Lose 1 Sanity and 1 Stamina. You are <i>delayed</i>, even if you are normally immune to being <i>delayed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(272,15,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(272,39,'You are invited to take the first Oath of Dagon. If you refuse, lose 1 Stamina and move to the street. If you accept, lose 2 Sanity and make a <span class="check">Lore (-1) check</span>, gaining a Clue token for each success.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(272,40,'Some prisoner from decades gone by has scrawled something on the wall. Make a <span class="check">Lore (-2) check</span> to decipher it. If you succeed, gain a Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(272,41,'The guards leave you alone for awhile, so you examine your cell wall. Pushing aside some loose stones, you crawl out the tight opening to freedom and then replace the stones. Move to <b>Sawbone Alley</b>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(273,15,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(273,39,'A gate opens suddenly and pulls you into a strange landscape. Move immediately to <b>Y''ha-nthlei</b> and have an encounter there.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(273,40,'Constable Ropes has turned his back while the weapons locker is unlocked. If you wish to try covertly arming yourself, make a <span class="check">Sneak (-2) check</span>. If you pass, search the Common Item deck and take the first <i><b>Weapon</b></i> you find. If you fail, you are <i>arrested</i> as you try to explain yourself.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(273,41,'The guards leave you alone for awhile, so you examine your cell wall. Pushing aside some loose stones, you crawl out the tight opening to freedom and then replace the stones. Move to <b>Sawbone Alley</b>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(274,15,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(274,39,'The door to the basement seems unattended. You may attempt a <span class="check">Sneak (-2) check</span> to try to investigate. If you pass, you find your way to the worship area and draw 1 Unique Item. If not, lose 1 Stamina and move to the street, as you are escorted outside by robed figures.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(274,40,'As Chief Constable Martin asks you "just a few routine questions," you become unnerved by his hoarse voice and unblinking gaze. Pass a <span class="check">Will (-2) check</span> or lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(274,41,'The guards leave you alone for awhile, so you examine your cell wall. Pushing aside some loose stones, you crawl out the tight opening to freedom and then replace the stones. Move to <b>Sawbone Alley</b>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(275,15,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(275,39,'You catch a glimpse of a tall, robed figure wearing an unearthly golden tiara. Something about the figure haunts you, but you try to block it from your mind... Pass a <span class="check">Will (+1) check</span> or lose 1 Sanity and gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(275,40,'A pungent odor is emanating from the filthy jail cells. Pass a <span class="check">Will (-1) check</span> or lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(275,41,'The guards leave you alone for awhile, so you examine your cell wall. Pushing aside some loose stones, you crawl out the tight opening to freedom and then replace the stones. Move to <b>Sawbone Alley</b>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(276,15,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(276,39,'Hissing and croaking, the barely-human congregation surrounds you. If you have an Elder Sign card, you may discard it to drive them back and seal this location. If not, you lose 1 Stamina and 1 Sanity and are moved to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(276,40,'The constables take a keen interest in one of your more unusual possessions and are willing to trade information for it. If you discard one Unique Item of your choice, you may gain 3 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(276,41,'Pretending to be asleep, you listen to Constable Ropes and the other guards talk. Gain 2 Clue tokens, and you are <i>delayed</i>, even if you are normally immune to being <i>delayed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(277,15,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(277,39,'Accidentally, you find yourself face to face with the altar of Dagon. You are <i>Cursed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(277,40,'You discover a yellowing edition of the <i>Innsmouth Courier</i> from 1846. It is quite fragile and requires delicate handling to read. If you do so, you are <i>delayed</i>, but you gain 2 Clue tokens for your effort.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(277,41,'In the middle of the night, a voice says, "Hold the prisoner still." You struggle in the darkness, but a pungent liquid is forced down your throat, making your head swim. "That should do it," you hear, just before passing out. The next morning, you awaken in Sawbone Alley with a strange headache. Move to <b>Sawbone Alley</b> and draw three Innsmouth Look cards.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(278,16,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(278,42,'"Weather''s changin''," says an old salt. Draw mythos cards until you find an <i><b>Environment (Weather)</b></i> card. Place that card directly into play, ignoring the gate and monster movement information on that card. Discard the other mythos cards you''ve drawn.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(278,43,'A young man from Falcon Point has been snooping out here, but now finds himself struggling to stay afloat just off the reef. Make a <span class="check">Fight (+0) check</span> to pull him out of the water. If successful, gain 1 Sanity as you drag him to safety. If not, lose 2 Sanity as the man disappears beneath the waves.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(278,44,'You feel as though being in these underground caves is reinvigorating you. Gain 1 Stamina and draw one Innsmouth Look card.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(279,16,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(279,42,'A local fisherman has left his boat just for a second. Pass a <span class="check">Sneak (-1) check</span> to sneak aboard and pilot yourself to the aquatic location of your choice and have an encounter there.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(279,43,'Horrible man-shaped forms in the water are making a trade with the dark figures standing on the reef. You may attempt a <span class="check">Fight (-1) check</span> to drive them off. If you pass, gain 1 Unique Item. If you fail, lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(279,44,'The air-filled cavern you''re in begins to fill with water as the tide shifts. You lose 1 Stamina and are <i>delayed</i> as you wait it out.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(280,16,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(280,42,'The cold winds coming off the ocean are taking a toll on your health. Pass a <span class="check">Will (-1) check</span> or lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(280,43,'These rocks are slick with slime and seawater. Make a <span class="check">Speed (-1) check</span> to keep your balance. If you fail, lose 1 Stamina, move to <b>Y''ha-nthlei</b>, and have an encounter there.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(280,44,'On the far side of this cavern is a glittering idol that you''re certain is important, if only you can reach it. Make a <span class="check">Sneak (-2) check</span>. If you pass, you may take your choice of 1 Unique Item or 3 Clue tokens. If you fail, you lose 1 Sanity and 1 Stamina, move to the first area of <b>R''lyeh</b>, and are <i>delayed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(281,16,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(281,42,'"Fish teem in the waters past Devil Reef, but off Falcon Point? Barely any!" The old man spits. Pass a <span class="check">Will (-1) check</span> to keep him talking and gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(281,43,'The stars above the water appear larger than you''ve ever seen them before. The skyscape seems strangely alien and threatening. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(281,44,'You find an abandoned temple. At the front, resting on an alter is a copy of the <i>Ponape Scripture</i>. Pass a <span class="check">Lore (-2) check</span> to gain some useful insight from the book. If you succeed, you may close one gate to <b>R''lyeh</b> anywhere on the board. Keep the gate trophy and remove monsters with the matching dimensional symbol as normal.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(282,16,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(282,42,'You''ve accepted a fisherman''s offer of a boat ride, but in the middle of the trip, the craft suddenly capsizes! Pass a <span class="check">Fight (-2) check</span> to swim safely to shore, or be <i>delayed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(282,43,'You come across a deserted boat. Make a <span class="check">Luck (+0) check</span>. If you succeed, you may travel to any aquatic location and have an encounter there. If you fail, the boat was abandoned for a reason. You sink beneath the waves to <b>Y''ha-nthlei</b>. Move there and immediately have an encounter.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(282,44,'You desperately flee from pursuing deep ones and, with no other choice, leap into a dark, unexplored cavern. Make a <span class="check">Luck (-1) check</span>. If you pass, move to <b>Devil Reef</b>. If you fail, you are <i>lost in time and space</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(283,16,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(283,42,'Gazing at Devil Reef on the horizon, you are disturbed by the strange hopping of many silhouetted figures. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(283,43,'You hide in a hollow of the rock to eavesdrop on the horrible croaking conversation of the Innsmouth folk and their strange allies. Pass a <span class="check">Sneak (-2) check</span> to gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(283,44,'Move quickly, or you''ll be surrounded before you can escape with your prize! Pass a <span class="check">Speed (-1) check</span> to draw a Unique Item. If you fail, you are <b>devoured</b>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(284,16,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(284,42,'You negotiate with a salty old fisherman to get word to the outside. Spend $4 to gain a Clue token and place it on the space of your choice on the Feds Raid Innsmouth track.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(284,43,'You find yourself strangely compelled to leap into the water. Draw one Innsmouth Look card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(284,44,'A strange series of glyphs lines the walls. If you try to interpret them, make a <span class="check">Lore (-1) check</span> and gain a Clue token for each success. If you don''t roll any successes, you are <i>Cursed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(285,16,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(285,42,'You find a foorlocker washed up on the shore. Make a <span class="check">Luck (-1) check</span> as you open it and consult the chart below.<br /><br />Successes:<br /><table><tr><td>0)</td><td>The aquatic horror within is still alive! With a fishy stench and a revolting aspect, it oozes into the water and vanishes. Lose 1 Sanity.</td></tr><tr><td class="nowrap">1-2)</td><td>Gain a Common Item.</td></tr><tr><td>3+)</td><td>Gain $5.</td></tr></table>');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(285,43,'An empty rowboat drifts past. Wondering at its missing occupants, you decide that you have to act now. You may move to <b>Falcon Point</b> and immediately have an encounter there.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(285,44,'The walls are covered with strange luminescent moss and lichens. You feel prolonged exposure to them is having a bad effect on you. Lose 1 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(286,16,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(286,42,'The fishermen at the tavern are happy to tell some tales, provided you''re picking up the tab. You may discard a Whiskey card or spend $5 to gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(286,43,'High winds and higher waves buffet you as you struggle to cling to the reef. You are <i>delayed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(286,44,'Deep ones! Dozens of them! If you hide from them, make a <span class="check">Sneak (-2) check</span>. If you fight, make a <span class="check">Fight (-2) check</span>. If you fail whichever check you attempt, lose 2 Stamina and 2 Sanity. If you pass, draw 1 Unique Item as you escape in the midst of all the chaos.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(287,16,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(287,42,'Walking along the beach, you find an old crate that has been washed ashore. If you decide to open it, make a <span class="check">Luck (-1) check</span>. If you pass, gain 1 Common Item. If you fail, you are <i>delayed</i>, and the contents of the crate prove worthless.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(287,43,'Seeing a wooden box drift by, you seize your chance and cling to it. Only halfway to shore do you realize the box is a coffin. Move to <b>Falcon Point</b>. Once ashore, you may look inside. If you do, lose 2 Sanity and draw 1 Unique Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(287,44,'You''ve got the proof you need, now all you have to do is escape this terrible place! Pass a <span class="check">Luck (-1) [2] check</span> to move to <b>Falcon Point</b>, then remove all tokens from both the Feds Raid Innsmouth and the Deep Ones Rising tracks. In addition, remove 1 doom token from the doom track. If you fail, you are <b>devoured</b>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(288,16,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(288,42,'An old man is trying to sell some trinket that he''s found on the beach. Draw the top three cards from the Common Item deck. Each costs $2 more than its listed price. You may purchase as many of those three items as you wish and discard the rest.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(288,43,'A boat approaches... but who''s on it? Make a <span class="check">Luck (-2) check</span>. If you pass, friendly fishermen offer you a lift to <b>Falcon Point</b>. If you accept, move there and immediately have an encounter. If you fail, the robed figures beat you and rob you. Lose 1 Stamina, 1 Sanity, and 1 item of your choice.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(288,44,'The creatures are engaged in some sort of ritual! You are immediately sucked through an open gate with the most difficult modifier (your choice if there are two equally difficult gates). If there are no open gates, nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(289,16,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(289,42,'You''re conversing with some fishermen down by the water, your back to the waves, when their eyes go wide with fright and they begin to flee. Make a <span class="check">Speed (-1) check</span> to follow them, else strong and rubbery arms grab you from behind and drag you out to <b>Devil Reef</b>. Move there and immediately have an encounter.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(289,43,'A glimpse of something shining in the sun catches your eye. A golden brooch has been left behind here. Gain $3.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(289,44,'You sense powerful, ancient voices attempting to flood your mind with terrible thoughts. Pass a <span class="check">Will (-2) check</span> or lose 2 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(290,16,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(290,42,'A kindly fisherman offers you a ride to any aquatic location, where you have an encounter.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(290,43,'Strange symbols are carved into the black surface of the reef. Pass a <span class="check">Lore (-2) check</span> to gain a Spell as you examine them.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(290,44,'It''s easy to get separated in the winding tunnels. Return one Ally of your choice to the box. If you do not have any Allies, nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(291,16,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(291,42,'Talking with the locals, you hear the curious tale of Enoch Conger, a local man who once claimed to have caught a mermaid. If you pass a <span class="check">Will (-2) check</span> or discard a Whiskey card, you hear the more disturbing version of the story, which ends with webbed footprints leading into the sea. Gain 3 Clue tokens and lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(291,43,'You come across a strange monolith, and a vast shape disturbs the water nearby. If Father Dagon or Mother Hydra are Heralds this game, you must pass a <span class="check">Luck (-1) check</span> or be <b>devoured</b>. In any event, if you survive, gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(291,44,'You find a curious doorway. If you pass through it, move to the <b>Esoteric Order of Dagon</b> and have an encounter there.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(292,1,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(292,2,'An irate orderly shoves a babbling madman at you, shouting "You deal with him!" before storming off. Pass a <span class="check">Will (-2) check</span> to calm him down enough to decipher his ravings and gain 2 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(292,1,'An old woman has just absentmindedly left the envelope the teller gave her behind. Will you return it to her? You may either gain $5 or become <i>Blessed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(292,3,'A gate and a monster appear!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(293,1,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(293,2,'Doctor Mintz has a maniacal gleam in his eye as he approaches. Pass a <span class="check">Fight (-2) check</span> to escape. If you fail, lose 1 Stamina and gain 1 Sanity under this new treatment.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(293,1,'The teller hands you a safety deposit box key. "This is for you." If you choose to open the box, make a <span class="check">Luck (-2) check</span>. If you pass, draw 1 Unique Item. If you fail, lose 2 Sanity and move to the street as you flee the bank in terror.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(293,3,'The gypsies are singing and dancing. You join in. Make a <span class="check">Luck (-1) check</span>. If you pass, you gain 2 Clue tokens as you realize what they''re singing about. If you fail, the gypsy spell is completed and a gate appears!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(294,1,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(294,2,'You sneak into a finger-painting session. Gain 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(294,1,'The money you''ve just withdrawn is not from any country you know. Gain $3, but pass a <span class="check">Will (-1) check</span> or lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(294,3,'Make a <span class="check">Will (-1) check</span>. If you pass it, <b>Anna Kaslow</b> the fortune teller offers her help in your investigation. Take her Ally card if it is still available. Otherwise, gain 2 Clue tokens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(295,1,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(295,2,'You hear Nurse Heather use your name in a discussion with an orderly. They must know you''re here! Make a <span class="check">Sneak (-1) check</span> to eavesdrop. If you pass, gain 1 Clue token. If you fail, you''re thrown out. Move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(295,1,'"Please," says the man outside the bank. "We lost everything. Please help." For every $1 you give him, gain 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(295,3,'The gazebo seems to swell with menace and you dare not approach. Pass a <span class="check">Will (-2) check</span> or move to the street.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(296,2,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(296,5,'"Listen," says Joey "The Rat". "These just fell off the back of a boat, you get me?" Draw 2 Common Items. You may purchase one of them for $1 more than its list price.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(296,6,'You turn to flee from the monster, but as it pursues you the crumbling house gives way beneath it! Pass a <span class="check">Luck (-2) check</span> to either gain 2 Clue tokens or claim 1 monster trophy at random from the cup, ignoring the <b>Endless</b> ability. If you fail, move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(296,4,'You find carvings on a standing stone etched in an ancient tongue but by a modern hand. Make a <span class="check">Lore (-1) check</span> and gain 1 Clue token per success.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(297,2,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(297,5,'The men unloading the boxes have stooped postures and wide, staring eyes. If you try to investigate what they''re doing, make a <span class="check">Sneak (-2) check</span>. If you pass, you find 1 Unique Item in a crate. If you fail, lose 2 Stamina and 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(297,6,'A monster and a gate appear!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(297,4,'Walking into a clearing, you feel that you are at the center of a web of enormous magical energy. You may return one gate marker in play to the bottom of the gate marker pile, replacing it with a new gate marker from the top of the pile. Monsters are returned to the cup as though you had closed the gate you returned to the pile.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(298,2,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(298,5,'Walking along the river at night, you bump into a man smoking a stoagie and wearing a trenchcoat. "You look like a person with problems. It just so happens that my business is making problems go away." You may pay $6 to automatically defeat any one non-spawn monster on the board.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(298,6,'You bump into <b>Eric Colt</b>. He tells you a horrible tale of the Mythos to test your nerve. If you listen, lose 2 Sanity. If this doesn''t drive you insane, take his Ally card if it is available. If it is not available, you may pump him for information instead. Gain 3 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(298,4,'A monster appears! If you do not defeat it, you are <i>Cursed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(299,2,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(299,5,'Your footsteps on the wooden dock are echoed by splashing noises below that keep pace with you. Make a <span class="check">Will (+0) check</span>. If you fail, lose 2 Sanity and move to the street. If you pass, lose 1 Sanity but stay where you are.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(299,6,'A hideous monster appears!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(299,4,'The willows seem to grow closer and more malevolent the longer you linger. Make a <span class="check">Speed (-1) check</span> to make it back to your boat in time. If you fail, you trip over a protruding root and are tangling in grasping boughs. You are <i>delayed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(300,3,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(300,8,'You find yourself engrossed in a conversation with the Dean. He has to get to a fundraising event, but he offers you a ride on his way. Move to a location or street area in Arkham. If you move to a location, immediately have an encounter there.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(300,9,'The book seems to be on every shelf you turn to examine. Finally, seeing no other option, you take it with you. You are <i>Cursed</i>, and take the first <i><b>Tome</b></i> from the Unique Item deck.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(300,7,'A graduate student explains that this is a stable gateway to another world. Theoretically. There are some kinks to work out still, of course. If you go through the gate, make a <span class="check">Luck (+0) check</span>. If you pass, move to the Other World of your choice. If you fail, move to the <b>Woods</b> and immediately have an encounter there.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(301,3,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(301,8,'You sneak into the back of a lecture on <i>New England Coastal Folklore and Its Similarities to That of the South Seas Islanders</i>. Gain 2 Clue tokens, then pass a <span class="check">Will (-1) check</span> or lose 2 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(301,9,'You find a group of students cramming for exams. Help them by making a <span class="check">Lore (-1) check</span>. If you pass, you realize that the students have no idea what they''re truly studying. Draw 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(301,7,'A professor with wild, bushy hair invites you to do the honors! He hurries out of the room and yells for you to pull the lever on his enormous, whirring machine. You may move any open gate from its current location to the unstable location of your choice.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(302,3,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(302,8,'You''re not sure how, but you find yourself interviewing for a guest lecturer position. Pass a <span class="check">Will (-2) check</span> to gain a Retainer.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(302,9,'Idly flipping open a tedious-looking novel, you discover that its binding is false &mdash; this is no novel, but something much more dire! Make a <span class="check">Will (-1) check</span>. If you pass, take the first <i><b>Tome</b></i> from the Unique Item deck. If you fail, lose 2 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(302,7,'A chemistry professor offers you a draught of an experimental new concoction. If you accept, roll a die and set your current Stamina to the result of your die roll or maximum Stamina, whichever is lower. Then do the same for Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(303,3,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(303,8,'Discuss the opportunity to sell a monograph with the President of the University. Pass a <span class="check">Lore (-1) check</span> to make the sale and gain $5.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(303,9,'In a shadowed section of the library, you find a pair of empty shoes lying near a musty, blood-spattered book. Wisely, you turn and leave. Move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(303,7,'You find a muscular, bored-looking man who challenges you to an arm wrestling match. Lose 2 Stamina if you accept. If this does not knock you unconscious, <b>Sir William Brinton</b> laughs and slaps your shoulder, offering to join your investigation. Take his Ally card. If it is not available, gain $5 instead.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(304,4,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(304,10,'An orderly quickly closes the door to the morgue, but not before you catch a glimpse of what''s inside. Make a <span class="check">Speed (-1) check</span> and gain 1 Clue token per success.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(304,12,'You come across a cringing dog. Pass a <span class="check">Speed (-2) check</span> to catch and calm him. If you have <i>Food</i>, you can discard that to automatically pass the check instead of rolling. You see by his collar that he is named <b>Duke</b>. Take his Ally card. If it isn''t available, gain $3 as a reward for returning him to his owner, instead.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(304,11,'Upon discovering a severed &mdash; but twitching &mdash; hand, you find yourself trapped in an interminable time loop. You are <i>delayed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(305,4,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(305,10,'When the nurse returns your clothes after a routine exam, something''s not right. Make a <span class="check">Luck (-1) check</span>. If you fail, one of your items has gone missing (your choice). If you pass, gain $2.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(305,12,'You stealthily watch an old man place something in a hollow tree. Waiting for him to leave, you may reach in to retrieve the item. Make a <span class="check">Luck (+0) check</span> if so. If you pass, draw 1 Common Item. If you fail, something in the tree savages your hand. Lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(305,11,'Miriam Beecher offers to cast a particularly potent and dangerous spell for you... for a price. If you are willing, spend $5, then draw a monster at random from the monster cup. If it has a moon dimensional symbol, discard it and draw again. Otherwise, return that monster and all monsters that share its dimensional symbol to the cup.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(306,4,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(306,10,'You find what appears to be the discarded skin of a human being. Lose 1 Sanity, then draw a monster at random from the cup and place it in the Outskirts.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(306,12,'A Sheldon Gang member tries to rob you. Make a <span class="check">Fight (-1) check</span>. If you fail, lose 1 item of your choice. If you pass, you rob him instead. Gain $3.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(306,11,'A group of concerned citizens have come to harangue the proprietor and customers of the Magick Shoppe. You can calm them down with a <span class="check">Will (-2) check</span>. If you succeed, empty the Outskirts, returning all monsters in it to the cup. If you fail, the terror level is increased by 1.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(307,4,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(307,10,'You notice that a collection of patients in for some sort of skin condition share a loathsome commonality of appearance. Lose 1 Sanity, but gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(307,12,'A gate and a monster appear!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(307,11,'While discussing magic with Miriam Beecher, you mention a spell she doesn''t know and is eager to learn! You may discard 1 Spell to draw 2 Unique Items. Choose 1 to keep, discarding the other.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(308,5,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(308,15,'A monster appears and attacks as you approach the front door!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(308,13,'Ma doesn''t like the look of you and your "gang". Pay $1, plus $1 for each Ally you have, or move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(308,14,'You interrupt an argument between Father Michael and a member of the Esoteric Order of Dagon. If you join on the side of Dagon, gain 2 Clue tokens as you urge the man to talk. If you join in on the side of the Church, Father Michael''s grateful smile restores 2 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(309,5,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(309,15,'A golden tiara on displau is covered in bizarre and unnatural engravings. Make a <span class="check">Lore (-1) check</span> and gain 1 Clue token for each success.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(309,13,'Ma apologizes, but her kitchen is being redone. If you want, she''ll give you a ride to <b>Velma''s Diner</b>. If you go there, immediately have an encounter.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(309,14,'Whatever else might be wrong in Arkham, you feel safe here. Gain 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(310,5,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(310,15,'You encounter a friendly old professor from Miskatonic University. If you spend 1 gate trophy, he introduces himself as <b>Professor Armitage</b> and offers to join forces with you. Take his Ally card if it is available, otherwise draw 1 Unique item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(310,13,'Ma runs a tight ship! You awake refreshed. Gain 2 points split between Stamina and Sanity however you choose.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(310,14,'Knowing that you are engaged in God''s work, Father Michael <i>Blesses</i> you.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(311,5,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(311,15,'The society is discarding what it calls a "taxidermist''s trick". Draw a monster from the cup and claim it as a monster trophy, even if it has the <b>Endless</b> ability.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(311,13,'You''re getting ready to turn in for the night when you discover a corpse lying in your bed. Pass a <span class="check">Will (-1) check</span> to keep your cool. If you fail, the terror level increases by 1. In any case, examining the body yields 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(311,14,'Whe the donation tray comes around you find yourself guiltily contributing. You lose $1.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(312,6,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(312,16,'Carl Sanford has taken an interest in your possessions. If you have a Unique Item, you may sell it for its list price. If you do not sell it, the Lodge''s henchmen will try to take it by force. Pass a <span class="check">Fight (+1) check</span> or discard a Unique Item of your choice. If you do not have a Unique Item, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(312,54,'You may make a <span class="check">Lore (-1) check</span> to assist in a ritual. If you pass, heal every investigator, including yourself, to full Sanity and Stamina. If you attempt to assist and fail, the ritual goes terrible awry, sending nightmares throughout the city. Raise the terror level by 1.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(312,17,'You wake up suddenly after terrible dreams, unsure of how long you have been here. Lose 1 Sanity, and you are <i>delayed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(313,6,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(313,16,'You hear the quiet sounds of an intruder. If you investigate, you find a woman dressed in black. She attacks you as soon as she sees you. Pass a <span class="check">Fight (-1) check</span> to subdue her long enough to explain your investigation. You find out that her name is <b>Ruby Standish</b> and that she was robbing the Lodge. However, upon hearing your tale, she agrees to join you. Take her Ally card. If it is not available, draw a Unique Item instead.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(313,54,'"You must always be studying," Carl Sanford tells you. Make a <span class="check">Lore (-1) check</span>. If you pass, draw 1 Spell. If you fail, you are <i>delayed</i>, and then draw 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(313,17,'You turn to see a small furry form dart quickly out of the room, making off with one of your possessions. Discard 1 Item of your choice. If you have no items, then nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(314,6,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(314,16,'A monster appears, leaping out of the shadows at you!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(314,54,'"In a hurry?" Carl Sanford asks. He offers to guide you through the old tunnels that connect the Lodge to the rest of the city. Move to any location or street area in Arkham. If you move to a location, immediately have an encounter there, drawing 2 cards and encountering either of them.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(314,17,'One of the steps leading upstairs has rotted through. Pass a <span class="check">Speed (-1) check</span> or lose 1 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(315,6,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(315,16,'"Care to join the Order?" Carl Sanford and several of his henchmen ask. If you accept, pay $3 and take a Silver Twilight Membership. If you decline, pass a <span class="check">Will (-1) check</span> or lose 3 Stamina as the henchmen assist you out the door. Whether you pass or not, move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(315,54,'The Inner Sanctum asks for your help in a banishing ritual. Discard one monster trophy with a dimensional symbol other than moon to return all monsters in Arkham with the same dimensional symbol to the cup.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(315,17,'A gate and a monster appear!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(316,7,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(316,19,'A monster appears!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(316,18,'The shopkeeper notices one of the items you''re carrying and his face lights up. "Say, I''ve been looking for one of those. You wouldn''t mind parting with it, would ya? I can pay well." You may sell any one of your Common Items for twice its listed price.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(316,20,'You find a man painting a picture of one of the horrible gargoyles lining the walls of the graveyard. Seeing you, he introduces himself as <b>Richard Upton Pickman</b>, a painter visiting from Boston. If you spend monster trophies that have a total of 5 toughness, Pickman takes a liking to you. Take his Ally card. If it is not available, he teaches you an incantation instead. Draw 1 Spell.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(317,7,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(317,19,'You hope, desperately, that the creature pursuing you is afraid of sunlight. Make a <span class="check">Speed (-2) check</span>. If you fail, a monster appears. If you pass, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(317,18,'The shopkeeper entreats you to cover for him. "My wife was in an accident; can you mind the store for me for a few hours?" If you do your job honestly, he pays you $2. However, you could skim a little of the top... If you do, gain $5 and make a <span class="check">Luck (-1) check</span>. If you fail, you are <i>arrested</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(317,20,'You see a child dancing among the graves. Following her, you find that she has vanished, but she''s led you straight to something interesting. Lose 1 Sanity and make a <span class="check">Luck (-2) check</span>. If you pass, draw 1 Unique Item. If you fail, draw 1 Common Item.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(318,7,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(318,19,'Make a <span class="check">Lore (+0) check</span> to decipher the writings on the wall and consult the chart below:<br /><br />Successes:<br /><table><tr><td>0)</td><td>This is written in blood! Lose 2 Sanity.</td></tr><tr><td>1)</td><td>The writing is in no human tongue. Lose 1 Sanity and gain 1 Clue token.</td></tr><tr><td>2+)</td><td>You decipher the writings. Draw 1 Spell.</td></tr></table>');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(318,18,'A man leaves his purchas eon the counter. You grab it and follow him out the door, but he''s nowhere to be seen. Draw 1 Common Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(318,20,'A monster appears!');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(319,7,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(319,19,'You are attacked by a shadowy being, but a large man leaps out of the darkness and drives it off. He introduces himself as <b>Tom "Mountain" Murphy</b>. Make a <span class="check">Luck (-2) check</span>, or discard a Whiskey card to pass it automatically. If you pass, he joins your investigation. Take his Ally card if it''s available, otherwise he gives you something to protect yourself with. Search the Common Item deck and take the first <b><i>Weapon</i></b> you find. If you fail, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(319,18,'You notice that some of the locals have an odd, fish-like quality to them that sets your teeth on edge. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(319,20,'You fall into an open grave and land upon a corpse that you''re certain is not human. Lose 1 Sanity, but gain 1 Clue token.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(320,8,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(320,23,'An elderly blind man is running his hand among shelves, searching for a mysterious object. If you help him, he will gratefully offer to purchase something else in the store for you. SEarch the Common Item deck for one free item of your choice and be <i>Blessed</i>. Or instead, you can take the mysterious object for yourself. Search the Unique Item deck for one item of your choice to purchase for list price.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(320,22,'Earn $5 for a story.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(320,21,'Bill Washington moves the last of the baggage from his cart onto a truck and offers you a ride as he opens the driver''s door. If you accept, move to any location or street area in Arkham. If you move to a location, immediately have an encounter there.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(321,8,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(321,23,'You come across a blasphemous idol sitting innocently on a shelf. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(321,22,'The staff of the <i>Advertiser</i> are uncharacteristically closemouthed. As you leave, you find yourself surrounded by a sallow-skinned ruffian. Make a <span class="check">Fight (-1) check</span> and lose 3 Stamina. This loss is reduced by 1 for every success (minimum 0).');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(321,21,'"Hey, buddy, you forgot your bag!" You didn''t, but before you can object, the man is gone. You open the bag and find a Common Item inside.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(322,8,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(322,23,'On a high shelf is a puzzle box. You may spend $1 to purchase it and then pass a <span class="check">Lore (-1) check</span> to open it. If you do, make a <span class="check">Luck (-1) check</span> and consult the following chart to determine what''s inside:<br /><br />Successes:<br /><table><tr><td>0)</td><td>Nothing.</td></tr><tr><td>1)</td><td>Gain $3 and a Clue token.</td></tr><tr><td>2+)</td><td>Draw a Spell and gain $5.</td></tr></table>');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(322,22,'While going through the archives you find a yellowed collection of <i>Innsmouth Courier</i> newspaper. Gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(322,21,'You realize too late that the train you boarded is empty. Draw the top gate marker, then travel to that Other World and replace the gate marker on top of the gate marker pile.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(323,8,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(323,23,'The shopkeeper eyes one of your possessions. "I have need of that object. Will you sell it to me?" You may sell any one of your Unique Items for twice its listed price.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(323,22,'You spin a yarn to a group of assembled reporters. Make a <span class="check">Will (-1) check</span> to see how many of them believe you. Gain $1 per success.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(323,21,'The train that just pulled into the station doesn''t look like it''s from around here. Make a <span class="check">Sneak (-1) check</span> to lurk in the shadows. If you pass, you hide from the robed figures that get off the train and gain a Unique Item they left behind. If you fail, you are discovered. Move to the street.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(324,9,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(324,24,'A stranger buys you a drink. You may search the Common Item deck for a Whiskey card and take it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(324,26,'Sheriff Engle eyes you suspiciously. "Hey, you were part of that trouble earlier." Pay him $3 or spend the next turn <i>delayed</i> answering his questions.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(324,25,'An irritable stranger in ragged clothes is demanding money from Velma''s diners. If you do not give him $1, he <i>Curses</i> you before Velma throws him out.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(325,9,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(325,24,'Pass a <span class="check">Speed (-2) check</span> to avoid being bumped into and knocked over. If you pass, nothing happens. If you do not, the priorietor tells you that you''ve had enough for one night and you are moved to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(325,26,'The phone at the front desk is ringing, but no one seems to be answering it. If you pick up the receiver, an unearthly voice whispers awful secrets to you. Lose 1 Sanity, but make a <span class="check">Will (-1) check</span> and gain 1 Clue token for each success.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(325,25,'Whoever sat here before you had been scribbling on his napkin. Pass a <span class="check">Lore (-1) check</span> to gain a Clue token.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(326,9,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(326,24,'A horrible monster appears!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(326,26,'Deputy Dingby has left the keys to the evidence locker sitting on his desk. Make a <span class="check">Sneak (-2) check</span> and, if you succeed, search the Common Item deck for an item of your choice.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(326,25,'Velma is brewing up a fresh pot of her famous coffee. Gain 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(327,9,4);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(327,24,'"Hey, psst. You look like someone who could use a little information." Looking over at the bartender, you see him holding out his hand. You may pay him up to $6, gaining 1 Clue token for every $2 you pay him.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(327,26,'Looking at one of the wanted posters, you realize that you''ve already taken care of that particular threat. You may spend 1 monster trophy with a moon dimensional symbol to gain $5.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(327,25,'Velma comments on how skinny you look and gives you a sandwich on the house. You may search the Common Item deck for a Food card and take it.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(133,1,0,0,0,4);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(133,6,'<p>The light filtering down through the forest trees is fading rapidly, but the clearing gives you an uneasy feeling. Camp here or press on in the dark?</p><p>If you camp, a monster attacks you as you settle down for the night. You automatically fail any <b>Evade checks</b> you make against this monster. However, if you defeat it, draw your choice of 1 Spell, 2 Common Items, or 1 Unique Item.</p><p>If you press on into the night, you get lost in the woods. You are <i>delayed</i>.</p>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(133,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(134,1,0,0,0,4);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(134,2,'<p>Halfway down the cliff, you manage to grab onto a stone outcropping. Looking back up to where you fell from, the question remains &mdash; climb back up or climb down?</p><p>If you climb back up, pass a <span class="check">Fight (-2) check</span> to safely reach the top and return to Arkham. If you fail, you are <i>delayed</i>.</p><p>If you climb down, make a <span class="check">Luck (-1) [2] check</span>. If you pass, you find a great treasure at the bottom. Draw 2 Unique Items. If you fail, a monster awaits you at the bottom.</p>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(134,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(135,1,0,0,0,4);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(135,8,'<p>Backing up against the cliff, you must either face the horrible creature in front of you or leap into the choppy waters below.</p><p>If you face the monster, draw a monster from the cup. If it has less than 3 toughness, return it to the cup and draw again until you either draw a monster with at least 3 toughness or you have drawn 5 times, in which case you fight whatever monster you''ve drawn, regardless of its toughness.</p><p>If you jump, roll a die. On a success, you return to Arkham. On a failure, you are <b>devoured</b>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(135,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(136,0,1,0,0,4);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(136,5,'<p>Meandering down a forgotten aisle of books, you come across an open tome lying on the floor. Do you put it back on the shelf, or read it?</p><p>If you put it back on the shelf, make a <span class="check">Luck (-1) check</span>. If you pass, a piece of paper flutters out as you pick it up. Reading it, you gain 5 Clue tokens. If you fail, the tome has an evil aura surrounding it. You are <i>Cursed</i>.</p><p>If you read the book, you learn a new spell. Draw 1 Spell, discarding it and drawing another if you already have it.</p>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(136,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(137,0,1,0,0,4);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(137,6,'<p>Halfway up the mountain, you come across a dark cave. Do you venture inside, or continue toward the golden city you saw atop the peak?</p><p>If you enter the cave, make a <span class="check">Luck (-2) check</span>. If you pass, the cave wall has a glowing inscription on it. As you read it, it burns itself into your mind, and then you find yourself home once more. Draw 1 Spell, then return to Arkham. If you fail, a monster lurks in the cave.</p><p>If you continue to climb, pass a <span class="check">Fight (-2) check</span> to reach the top, where an order of monks teach you their secrets. Draw 1 Skill. If you fail, you fall and are <i>lost in time and space</i>.</p>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(137,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(138,0,1,0,0,4);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(138,3,'<p>The buzzing creature asks if you would prefer to see your past or your future.</p><p>If you choose to view your past, the creature shows you a kaleidoscope of images from your life, many of which you had forgotten. Roll a die and gain that many Clue tokens.</p><p>If you choose to look at your future, take this card. At any time, instead of rolling for a skill check, you may discard this card to get 3 automatic successes on that skill check.</p>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(138,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(139,0,1,0,0,4);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(139,7,'<p>The icy winds bite at you as you struggle through the deep snow. You have to find shelter, and soon. Do you enter a nearby cave or follow a plume of smoke?</p><p>If you enter the cave, pass a <span class="check">Luck (-2) [2] check</span> or two monsters appear! If you defeat the monsters or they do not appear, draw either 2 Common Items or 1 Unique Item.</p><p>If you follow the smoke, you are led to a small hut. Inside is a strange, dark-skinned corpse wrapped in thick furs. If you take the furs, you are <i>Cursed</i> but return to Arkham. If you do not, you are <i>lost in time and space</i>.</p>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(139,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(140,0,0,1,0,4);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(140,6,'<p>You come across a small bridge across a ravine, guarded by a knight in rusted armor riding a zebra. He demands either a story or rare knowledge to let you pass.</p><p>You may spend 1 gate trophy, 5 toughess worth of monster trophies, or discard 1 Skill to pass. If you do so, you are <i>Blessed</i> and return to Arkham.</p><p>If you decline to pay the toll, the rusted knight attacks you. Pass a <span class="check">Combat (-3) [3] check</span> to defeat him and cross the bridge, returning to Arkham. If you fail, he knocks you into the ravine, and you are <i>lost in time and space</i>.</p>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(140,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(141,0,0,1,0,4);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(141,4,'<p>Several Mi-Go up ahead are working on a strange device. They are blocking your path, so you must either pretend to be a human slave or take the long way around.</p><p>If you pretend to be a slave, make a <span class="check">Will (-2) check</span>. If you pass, they are fooled by your act and you slip past, quietly pickpocketing an odd device as you do so. Draw 1 Unique Item and return to Arkham. If you fail, one of them shoots you with a strange ray-gun. You are <i>lost in time and space</i>.</p><p>If you go around, pass a <span class="check">Luck (-1) check</span> or a monster appears! Either way, you are <i>delayed</i>.</p>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(141,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(142,0,0,1,0,4);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(142,2,'<p>Up ahead, the tunnel branches to the left and to the right.</p><p>If you go left, the tunnel slopes down into darkness, and you hear the strange barking of ghouls up ahead. Make a <span class="check">Luck (-1) [2] check</span>. If you pass, the ghouls are friendly enough, and show you a way out of the tunnels. Return to Arkham. If you fail, they lock you up in a cage. You are <i>delayed</i>.</p><p>If you go right, the tunnel slopes upwards towards a reddish light. Make a <span class="check">Lore (-2) check</span> to notice a magical pattern in the dim light. If you pass, draw 1 Spell. If you fail, nothing happens.</p>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(142,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(143,0,0,1,0,4);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(143,5,'<p>The shrunken old man smiles toothlessly and offers you a choice of two gifts &mdash; either a gilded book or a small box.</p><p>If you choose the book, draw 3 Spells, plus 1 additional Spell for each Clue token you spend. Keep 1 Spell of your choice and discard the others.</p><p>If you select the box, you open it, only to find nothing inside. Confused, you look up, only to find that the man is gone. However, if you are <i>Cursed</i>, you are <i>Blessed</i>. Otherwise, you may discard 1 Madness or Injury.</p>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(143,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(144,0,0,0,1,4);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(144,6,'After meditating, you are prepared to try dreaming up an object. You may search either the Common Item or Unique Item deck for an item of your choice. However, after you''ve selected an item, roll a die and add the result to the item''s list price. Lose a number of points of Sanity and/or Stamina equal to the total, divided however you like. If you are reduced to 0 Sanity or Stamina, the strain is too great, and you tear yourself apart. You are <b>devoured</b>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(144,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(145,0,0,0,1,4);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(145,8,'<p>Your captor subjects you to a terrifying array of mental and physical tortures for his own amusement. You are reduced to 1 Sanity and 1 Stamina. In addition, your maximum Sanity and Stamina are each reduced by 1. Keep this card to remind you.</p><p>However, you have discovered an inner reserve of strength and willpower as a result of the torture. Gain 3 Clue tokens, draw 1 Skill, and increase your Focus by 1.</p>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(145,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(146,0,0,0,1,4);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(146,4,'<p>The spores that the alien creatures implanted beneath your skin are changing you...</p><p>Return to Arkham, but keep this card. Each time a new gate opens, draw 1 Spell and place a Clue token on this card.</p><p>If there are 1-3 Clues on this card, you gain a +1 bonus to all <b>Fight</b> and <b>Lore checks</b>.</p><p>If there are 4 Clues, treat all Sanity costs for spells as 0.</p><p>If there are 5 Clues on this card, you are <b>devoured</b>.</p>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(146,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(147,0,0,0,1,4);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(147,3,'<p>You awaken on a steel table, only to find a strange insect creature performing surgery on you. "Your form is so inefficient," it buzzes, "This one will improve it. Should this one improve your mind or body?"</p><p>If you answer "Mind," draw 3 Skills, keeping 1 and discarding the others. However, your maximum Sanity is reduced by 1.</p><p>If you answer "Body," your maximum Stamina is increased by 1, but you must discard 1 Skill and all of your Spells.</p>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(147,13,'Discard this card and draw again.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(148,1,0,0,0,4);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(148,7,'<p>The traders look you up and down appraisingly as you enter their camp. Ask to join them for dinner, or offer to trade?</p><p>If you ask to join them for dinner, pass a <span class="check">Will (-2) check</span> to impress them. They share their meal generously with you. Restore your Sanity and Stamina to their maximums. If you fail, they drive you away. Nothing happens.</p><p>If you trade, draw 3 Unique Items. You may buy one or more of them for either one of your own Unique Items or 5 toughness worth of monster trophies each.</p>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(148,13,'Discard this card and draw again.');
