PRAGMA foreign_keys=1;

INSERT INTO "expansion" VALUES(5,'The Lurker at the Threshold',1);

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(328,1,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(328,2,'A patient becomes irrationally possessive over one of your belongings. Make a <span class="check">Fight (-3) check</span>. If you fail choose 1 Common Item or Unique Item and discard it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(328,1,'A child is struggling to bring an enormous jar of pennies to the teller. You may make a <span class="check">Fight (-1) check</span> to help him out. If you pass, gain 1 Sanity and $1 for your efforts. If you fail, lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(328,3,'You start digging in a patch of ground where, as long as you can recall, no grass has ever grown. Make a <span class="check">Luck (-2) check</span>. If you pass, gain 2 Clue tokens as you unearth a pocket watch inscribed with the name of a man who went missing decades ago. If you fail, lose 1 Stamina for exhausting yourself fruitlessly.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(329,1,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(329,2,'The doctors allow you to observe the therapy session of one of the asylum''s most disturbed patients. Make a <span class="check">Will (-1) check</span> to maintain your wits enough to garner useful information from his story. If you pass, gain 2 Clue tokens. Then, whether you pass or not, lose 1 Sanity after learning of his bone-chilling experiences.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(329,1,'A large painting of historic Arkham hangs in the bank. Examining it, you notice an unnerving circle of stones barely visible on the edge of the city. Lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(329,3,'A bronze plate near Founder''s Rock commemorates the establishing of the city. You notice that a line of odd symbols runs along the border of the marker. Make a <span class="check">Lore (-1) check</span> to interpret their meaning. If you pass, gain 1 Spell.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(330,1,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(330,2,'A seemingly-sane inmate is willing to pay you to help him escape. If you agree to help, you may make a <span class="check">Sneak (-1) check</span>. If you succeed, gain $3. If you fail, you are <i>arrested</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(330,1,'A young woman is examining the contents of a safe deposit box bequeathed to her by her late mother. It is an ancient book written in a language she doesn''t understand, and she asks you if you recognize the language. Make a <span class="check">Lore (-1) [2] check</span>. If you pass, gain 2 Clue tokens as you decipher the text.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(330,3,'An old gypsy man is being attacked by a mysterious robed figure. Make a <span class="check">Fight (-2) check</span> to help fend off the assailant. If you pass, the gypsy insists you accept a token of his gratitude. Gain 1 Unique Item.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(331,1,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(331,2,'You discover that the patient you''ve been looking for has been lobotomized. He can''t answer your questions now. Draw one Ally card from the Ally deck and return it to the box.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(331,1,'You find a penny with a strange sigil carved into it. Amused, you flip it in the air, but then gasp as you feel the sudden gathering of magical forces around you. Make a <span class="check">Luck (-2) check</span>. If you pass, the penny comes up heads. You are <i>Blessed</i>. If you fail, it comes up tails. You are <i>Cursed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(331,3,'You hoped to get near enough to the gypsy camp to eavesdrop, but a dog bark has alerted them that there is an intruder. Make a <span class="check">Sneak (-1) check</span> to escape! If you fail, you are <i>Cursed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(332,2,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(332,5,'Items in an abandoned warehouse are being auctioned off. The selection is quite good, but prices are running high. Draw the top 3 Common Items from their deck. You may purchase 1 of them for $1 more than the listed price. Discard any items that are not purchased.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(332,6,'A box full of documents in the closet has grown damp and moldy. Make a <span class="check">Luck (+1) check</span> to see if anything of value has been spared. If you pass, gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(332,4,'The ground is covered with a strange luminescent substance. Make a <span class="check">Lore (+0) check</span> to keep yourself safe from its damaging effects. If you fail, you are <i>Cursed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(333,2,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(333,5,'This area has always smelled foul, but today something in the river smells absolutely noxious. Make a <span class="check">Speed (-2) check</span> to reach fresher air. If you fail, lose 1 Stamina. Whether you pass or not, move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(333,6,'Things seem to just disappear here. Choose 1 Common Item and discard it. If you do not have a Common Item, lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(333,4,'You must have fallen into the water. A passerby managed to pull you out and resuscitate you. He claims you were dead for a brief time. Perhaps you did go to the other side and return with new knowledge. Make a <span class="check">Will (-2) check</span> to recollect your experience. If you pass, gain 2 Spells. If you fail, lose 2 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(334,2,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(334,5,'As a truck is driving away from the warehouse, you see a crate fall off the back. Unfortunately, Joey "The Rat" saw it too. Make a <span class="check">Speed (+1) check</span> to beat him to the crate. If you pass, gain 1 Common Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(334,6,'A pen and paper rest on a table next to your chair. Picking up the pen, you black out for an uncertain amount of time. When you regain your senses, the paper is covered with strange messages, not written in your handwriting. Make a <span class="check">Lore (-1) check</span> and gain 1 Clue token for each success. Then, whether you pass or not, lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(334,4,'The seclusion on the island is making you more withdrawn and paranoid. Make a <span class="check">Will (+0) check</span> to keep your wits. If you fail, lose 2 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(335,2,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(335,5,'A terrified young student from Miskatonic University seems to have wound up here by accident. Make a <span class="check">Will (+1) check</span> to keep him calm enough to safely guide him back to more familiar streets. If you pass, he gratefully offers you $2 for your assistance.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(335,6,'A repellent, tar-like appendage is dragging an item of interest quickly through the halls. Make a <span class="check">Speed (-2) check</span>. If you pass, draw 2 Unique Items and keep 1. If you fail, lose 2 Stamina as you are dragged across the floor.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(335,4,'You see Carl Sanford covertly trying to find a place on the island to recite a ritual. Make a <span class="check">Sneak (-2) check</span>. If you pass, you get close enough to hear what he is saying and gain 3 Clue tokens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(336,3,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(336,8,'You encounter a student trying unsuccessfully to get a refund on tuition he overpaid. He''s having a hard time getting anyone to listen to him. Make a <span class="check">Will (-2) check</span> to help him out. If you pass, he gets his refund and gratefully gives you $2.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(336,9,'A particularly ancient and tattered text provides vital information. Make a <span class="check">Lore (-2) check</span> and gain 1 Clue token for each success. Regardless of the result, lose 1 Stamina as the mold infiltrates your lungs.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(336,7,'The Psychology Department would like to perform some deep hypnosis experiments on you. If you agree, make a <span class="check">Will (-1) check</span>. If you pass, you make contact with a strange alien intelligence and gain 1 Spell. If you fail, the incident traumatizes you and you lose 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(337,3,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(337,8,'A student is angrily complaining about his research being called "too radical". He needs funds badly and would be willing to sell you his work. You may pay $5 to draw 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(337,9,'You think you''ve found valuable information in this reference book, but a loud conversation near you is making it hard to concentrate. Make a <span class="check">Will (-2) check</span> and gain 2 Clue tokens if you pass.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(337,7,'A loud roaring noise emanates from a laboratory. Rushing to investigate, you see a swirling vortex collapsing in on itself, giving you a quick glimpse of the worlds beyond. Make a <span class="check">Will (-2) check</span>. If you fail, lose 2 Sanity. Whether you succeed or not, if you are not driven insane, gain 1 Unique Item that the spiralling anomaly transports into the room.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(338,3,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(338,8,'You catch sight of one of the professors chanting quietly over talismans she had hidden in her desk. Make a <span class="check">Sneak (-1) check</span> or she <i>Curses</i> you!');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(338,9,'The library has come into possession of an unidentified gramophone record. It is a recording of a strange language no one on the staff can interpret. Make a <span class="check">Lore (-2) check</span> to see if you can make sense of the message. If you pass, you gain 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(338,7,'The staff is looking for exhausted or unhealthy subjects for medical experiments. If you are currently at less than your maximum Stamina, you may choose to gain $3. You must then make a <span class="check">Luck (+0) [2]</span> check. If you succeed, you are restored to full Stamina. If you fail, lose 1 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(339,3,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(339,8,'You own copies of some of the books being used this semester. Make a <span class="check">Luck (+1) check</span> to find students willing to purchase your used copies of the texts. If you pass, gain $2.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(339,9,'Someone left the door to the basement unlocked! There''s an abundance of texts and artifacts hidden away down here, but most of it is useless to you. Make a <span class="check">Luck (-1) [2]</span> check. If you pass, gain 1 Unique Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(339,7,'Baffled scientists show you a wax cylinder which has apparently recorded the voices of people in the future, warning of what is to come. Make a <span class="check">Lore (-2) check</span>. If you pass, you may look at the top three cards of the Mythos deck and then return them to the top of the deck in any order you choose.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(340,4,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(340,10,'You sit next to a small boy in the waiting room while his mother is in surgery. He tells you that his mommy protected him from a big monster with scary fangs. You tell him everything will be fine. Gain 1 Clue token and lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(340,12,'You stumble upon an old shack, but it looks like animals got inside and have torn up just about everything. Make a <span class="check">Luck (-2) check</span> to see if any reading material survived. If you pass, search the Common Item deck for the first <i><b>Tome</b></i> you find and take it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(340,11,'The item you had been hoping to purchase has already been sold. Make a <span class="check">Sneak (-1) check</span> to sneak a peek at the ledger to see who purchased it. If you pass, gain 2 Clue tokens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(341,4,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(341,10,'The doctors insist on treating you! Ignoring any protests, they anesthetize you and start patching you up. When you come to, you''re physically fine but your thoughts are pretty foggy. Gain 2 Stamina but lose a Clue token if you have any.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(341,12,'You notice an odd symbol carved into a tree. It leads you to another tree with a symbol carved into it. Make a <span class="check">Lore (-1) check</span> to follow a path of symbols. If you pass, you discover it leads to an unusual object hidden under a rock. Gain 1 Unique Item. If you fail, lose 1 Stamina as you become increasingly exhausted.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(341,11,'Speaking with Miriam Beecher, she tells you she would be willing to trade for items, if you have anything of interest. Look at the top card of the Unique Item deck. If you want to keep it, discard one of your Unique Items or Spells.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(342,4,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(342,10,'You find a doctor''s bag sitting unattended. Inside, there''s bandages, rubbing alcohol, and medicines. Gain 2 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(342,12,'A sudden clearing reveals a prehistoric circle of carved stones. Standing here, your thoughts are filled with the angry and fearful voices of those who perished or were taken to other worlds here. Make a <span class="check">Will (+0) check</span>. If you fail, you are <i>Cursed</i>.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(342,11,'You accidentally bump into a glass bottle filled with a strange grey powder. Make a <span class="check">Speed (-2) check</span> to catch it before it breaks. If you fail, lose 1 Stamina as you break out into a fit of unexplained sneezing and itching.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(343,4,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(343,10,'You think a man in the waiting room is having a more serious emergency than he realizes. Make a <span class="check">Lore (-2) check</span> to make a correct diagnosis. If you pass, gain 1 Sanity. If you fail, move to the streets as you are curtly asked to leave.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(343,12,'A car has smashed into a tree. The driver, a member of the Sheldon Gang, is unconscious and a bag of stolen valuables sits next to him. You can hear other members of the gang coming through the woods looking for him. Make a <span class="check">Sneak (-2) check</span>. If you pass, gain $3. If you fail, you are <i>delayed</i> while hiding from the gang.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(343,11,'Miriam Beecher offers to cleanse your aura and restore your mental well-being, for a price. If you discard 1 Unique Item and pay $3, you are <i>Blessed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(344,5,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(344,15,'A guest lecturer provides a lengthy but informative presentation about his explorations of ancient sites. You may make a <span class="check">Lore (-1) [2] check</span> and stay here next turn. If you pass, gain 1 Skill.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(344,13,'If you''re healthy enough, Ma could sure use some help rebuilding the porch. If you have 3 or more Stamina, take a Retainer card.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(344,14,'If you can show Father Michael proof of the doom that threatens Arkham, he will agree to lead the congregation in a prayer to purge the streets of evil. If you spend one Gate trophy, you may remove all monsters from the Southside neighbourhood.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(345,5,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(345,15,'"After my husband passed away, I thought the Society would be interested in his documents. He was very influential in Arkham." Make a <span class="check">Luck (-2) check</span> to see if the curator recognizes their arcane significance. If you pass, gain 1 Spell as the Society passes these papers off to you.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(345,13,'You sneak down to Ma''s kitchen for a midnight snack. Make a <span class="check">Luck (+0) check</span> to see if there''s any leftovers waiting for you. Gain 1 Stamina per success.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(345,14,'Someone left a box of donation items at the Church''s doorstep. You notice an odd, grotesque idol. Make a <span class="check">Will (+0) check</span>. If you fail, you are <i>Cursed</i>.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(346,5,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(346,15,'While researching, you find a story about a series of disappearances that occurred in the earliest days of Arkham. Coincidentally, you notice a newspaper reporting a similar disappearance just last week. Return one Ally at random from the Ally deck to the box. Then gain 3 Clue tokens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(346,13,'As a favor, you volunteer to head to the basement to look at the pipes. The steps are mostly rotten and are starting to fall apart under your weight. Make a <span class="check">Speed (+0) check</span> to avoid injury. If you fail, lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(346,14,'Father Michael''s sermon is comforting, but a little dull, and you''ve dozed off. Stay here next turn and restore your Sanity to its maximum.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(347,5,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(347,15,'You encounter a friendly old professor from Miskatonic University. If you spend 1 gate trophy, he introduces himself as <b>Professor Armitage</b> and offers to join forces with you. Take his Ally card if it is available, otherwise draw 1 Unique item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(347,13,'A portrait of one of Arkam''s founding fathers hangs in Ma''s sitting room. On the back of the painting is a series of symbols and numbers. Pass a <span class="check">Lore (-1) check</span> to interpret their meaning and gain a Clue token for each success.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(347,14,'"You! You''re the one who has stood against the evil that plagues this town! We are all so grateful!" A crowd surrounds you, expressing gratitude and adoration. Gain 2 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(348,6,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(348,16,'"Care to join the Order?" Carl Sanford and several of his henchmen ask. If you accept, pay $3 and take a Silver Twilight Membership. If you decline, pass a <span class="check">Will (-1) check</span> or lose 3 Stamina as the henchmen assist you out the door. Whether you pass or not, move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(348,54,'Within their spiritually attuned chamber, you find that if you open your mind to the spirit world, the spirits will bestow eldritch knowledge upon you. Gain up to 3 Spells, then lose 1 Sanity for each Spell chosen.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(348,17,'The room is filled with glowing bubbles! You are having a hard time gaining your bearings and finding the door. Lose 1 Sanity and you are <i>delayed</i>, but then gain 3 Clue tokens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(349,6,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(349,16,'You recognize one of the Lodge Members as a friend from years ago. Make a <span class="check">Will (-2) check</span> to convince him to help you in some way. If you pass, draw 1 Unique Item. Whether you pass or not, move to the street.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(349,54,'"Admiring our library?" Carl Sanford asks you. "Membership has privileges. Borrow one of our texts if you wish." Search the Unique Item deck and take the first <i><b>Tome</b></i> you find.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(349,17,'In the middle of the night, something in the dark is clutching at your chest! Make a <span class="check">Fight (+0) check</span> and lose 2 Stamina if you fail.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(350,6,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(350,16,'You hear the quiet sounds of an intruder. If you investigate, you find a woman dressed in black. She attacks you as soon as she sees you. Pass a <span class="check">Fight (-1) check</span> to subdue her long enough to explain your investigation. You find out that her name is <b>Ruby Standish</b> and that she was robbing the Lodge. However, upon hearing your tale, she agrees to join you. Take her Ally card. If it is not available, draw a Unique Item instead.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(350,54,'The Lodge Members have gathered to perform a powerful banishment ritual. Make a <span class="check">Lore (-2) check</span>. If you pass, you may either gain 2 Clue tokens or choose one monster in the same location as an open Gate and return that monster to the monster cup.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(350,17,'You find an old journal, largely devoured by vermin. Make a <span class="check">Luck (-3) check</span> to see if certain vital pages remain intact. If you pass, draw 2 Spells and keep 1.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(351,6,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(351,16,'Carl Sanford sits in the center of the room chanting while books and other small objects appear to be flying around the room of their own accord! Make a <span class="check">Fight (-1) check</span> to avoid being clobbered by these items and to understand what Sanford is saying. If you pass, gain 2 Clue tokens. If you fail, you awaken bruised and sore. Lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(351,54,'Carl Sanford accuses you of stealing from the Lodge. Make a <span class="check">Will (-1) check</span> to prove that you''ve been framed. If you fail, lose 1 Stamina and your Silver Twilight Membership, and then move to the streets. If you pass, there is no effect.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(351,17,'In the attic, you feel a force in your mind, trying to replace your thoughts with those of another. Make a <span class="check">Speed (-1) check</span> to escape. If you pass, move to the streets. If you fail, lose 1 Spell, or if you have no Spells, lose 2 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(352,7,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(352,19,'Within the cave, you find the remains of a fire, candles, and other signs that a ritual has been attempted there. Whoever it was left some handwritten notes. Make a <span class="check">Lore (+0) [2] check</span>. If you pass, gain 1 Spell.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(352,18,'Sometime in the middle of the night, someone broke into the store and created arcane designs on the floor with lines of salt. Make a <span class="check">Lore (-1) check</span> to recognize the significance. If you pass, gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(352,20,'Miriam Beecher is kneeling by a grave, apparently talking to someone you can neither see nor hear. Make a <span class="check">Sneak (-2) check</span> to hear her half of the conversation. If you pass, gain 2 Clue tokens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(353,7,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(353,19,'Outside the cave, someone hung a package from a tree, presumably to keep it safe from curious wildlife. Make a <span class="check">Luck (-2) check</span> to see if the contents have been left alone. If you pass, gain 1 Common Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(353,18,'A tall set of shelves containing hardware suddenly tips over! Make a <span class="check">Speed (-1) check</span>. If you fail, lose 2 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(353,20,'To your horror, you discover a grave bearing today''s date and the name of someone you know well. Choose one of your Ally cards to discard. If you don''t have any, choose a random card from the Ally deck and discard it. If there are no Ally cards available, there is no effect.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(354,7,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(354,19,'You''ve gone so far in the cave, you fear it will take you a long time to find your way back. There''s a small, difficult-to-navigate passage that may be faster. Make a <span class="check">Fight (-2) check</span> to squeeze through the smaller cave. If you fail, stay here next turn while you go back the long way.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(354,18,'Something has turned all the food in the store rancid. The shopkeeper offers to pay if you help him throw it all away. You may make a <span class="check">Will (-2) check</span> to give it a try. If you pass, gain $2. If you fail, lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(354,20,'You strike up a conversation with a man digging a grave. He''s got a wry wit that helps put all the doom and gloom you''ve experience into perspective. Gain 1 Sanity.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(355,7,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(355,19,'Your presence has upset a large number of bats. As they fly about you, make a <span class="check">Will (-2) check</span>. If you fail, you run blindly through the dark and lose 1 Stamina as you knock into the cave walls.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(355,18,'A customer is angrily demanding his money back for an item he claims is defective. The shopkeeper argues that there''s nothing wrong with it. The customer shoves the item into your hands and storms off in a huff. Gain 1 Common Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(355,20,'One of the headstones has a strange riddle inscribed in it. Make a <span class="check">Lore (-2) check</span> to interpret it. If you pass, you press a button hidden among various symbols adoring the grave to reveal a secret compartment and gain 1 Unique Item. If you fail, nothing happens.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(356,8,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(356,23,'Oliver Thomas has an extremely rare book on display, but it is not for sale. He''s willing to let you have a look at it. Make a <span class="check">Will (-1) check</span> to quickly memorize as much as you can of this informative text. Gain 1 Clue token for each success you roll.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(356,22,'A reporter has disappeared, leaving only cryptic and ominous notes about the story she was investigating. If you can make any sense of them, the editor would gladly pay you. Make a <span class="check">Lore (-3) check</span>. If you pass, gain $2 and 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(356,21,'Hot peanuts are up for sale at a pushcart. You may pay up to $3 and gain 1 Stamina for each $1 you spend.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(357,8,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(357,23,'Oliver Thomas, the shopkeeper, greets you enthusiastically. "There was an item here earlier that I just knew was meant for you. I''m not sure where it went, but I imagine if it was meant to be, you''ll be able to find it." Make a <span class="check">Will (-2) check</span>. If you pass, gain 1 Unique Item. If you fail, gain 1 Common Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(357,22,'"Make yourself useful or get out of here!" You may choose to help load papers onto trucks. If you do, make a <span class="check">Fight (-1) check</span>. If you pass, gain $2. If you fail, lose 1 Stamina. If you choose not to help load the trucks, move to the streets.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(357,21,'You see a familiar face about to get on a train leaving Arkham. Draw an Ally card and then make a <span class="check">Will (-2) [2] check</span>. If you pass, you''ve convinced your friend to stay and may take the Ally card. If you fail, the Ally card is returned to the box.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(358,8,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(358,23,'Other customers are intrigued by your knowledge of the items in the shop. The more you describe the histories of these objects, the more people purchase. Make a <span class="check">Lore (+0) check</span>. If you pass, Oliver Thomas is so grateful for your help with sales that he offers you $3 for your efforts.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(358,22,'Editor Doyle Jeffries is offering top dollar for anyone who can provide a first-hand account of the strange events plaguing Arkham. You may move to the nearest Gate. If you do, take a Retainer card and you drawn through the Gate. If no Gates are open, nothing happens.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(358,21,'A nervous-looking man is moving quickly through the crowd, with Sheriff Engle in pursuit. The anxious man bumps into you, falls to the ground, and drops a package. Make a <span class="check">Speed (-2) check</span> to grab the package and escape before the sheriff arrives. If you pass, gain 1 Unique Item.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(359,8,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(359,23,'"According to legend, this mirror was once used to travel from our world into the lands beyond. Does this interest you?" If you wish, you may discard any Common Item, Unique Item, or Spell to move to the first area of any Other World.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(359,22,'Someone has sent an anonymous package to the paper. Whatever is inside is leaking a dark, sticky fluid. Upon seeing what''s inside, lose 1 Sanity.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(359,21,'You find a key to a locker on the ground, but the tag that shows its number has been removed. Make a <span class="check">Luck (-2) check</span> to find the right locker. If you pass, gain 1 Common Item.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(360,9,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(360,24,'"Care to make a couple extra bucks?" The proprietor needs some help moving in the new pool table. Make a <span class="check">Fight (-1) check</span> and gain $2 if you pass.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(360,26,'Deputy Dingby forgot to bring his lunch today, and if you help him out, he''ll become very friendly and chatty. You may give the Deputy either the Food Common Item card or $1 to gain 1 Clue token in return.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(360,25,'Velma''s got a fire in the kitchen! Make a <span class="check">Speed (-2) check</span> to extinguish it before any damage is done. If you pass, Velma''s grateful expression inspires you and you recover 1 Sanity. If you fail, lose 1 Stamina from some bad burns.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(361,9,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(361,24,'Whoever was sitting here before you used a knife to carve a horrible symbol into the surface of the table. Make a <span class="check">Will (-1) check</span> or lose 1 Sanity if you fail. Then, whether you passed or not, search the Common Item deck for the Knife and take it.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(361,26,'"Please! My husband is innocent! He could never commit those atrocities!" Deputy Dingby refuses to listen to the woman, but her story explains much of what has been going on. Gain 1 Clue token.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(361,25,'Two businessmen are arguing over who will pay the bill, and both have put several dollars on the table. If you can sneak one of the payments off the table, each of the businessmen will think the other relented and will drop the argument. Plus, you''ll make a little money. Make a <span class="check">Sneak (-2) check</span> and gain $3 if you pass.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(362,9,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(362,24,'A man with an accordion is playing tunes and everyone is singing along. If you choose to stay late into the evening, gain 2 Sanity, but lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(362,26,'"You okay, fella? You''re not making sense." Sheriff Engle wants to keep you out of trouble. If you currently have 2 or less Sanity, make a <span class="check">Fight (+0) check</span>. If you fail, lose all your <i><b>Weapons</b></i> and lose 1 Stamina.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(362,25,'Velma''s hot turkey sandwich with potatoes and gravy hits the spot! Gain 1 Stamina.');

INSERT INTO "neighbourhoodcard"(_id, neighbourhoodid, expansionid) VALUES(363,9,5);

INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(363,24,'A barfly sits down next to you and shares boring and incoherent stories. Make a <span class="check">Will (-1) check</span> to endure those dull tales until he''s finished talking. If you pass, he tells you, "You''re a good sort," and offers you a gift. Draw 1 Common Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(363,26,'Sheriff Engle wrestles a prisoner into the lobby of the Police Station. The handcuffed man bumps into you and whispers, "I can''t be found with this." Make a <span class="check">Sneak (-1) check</span>. If you pass, draw 1 Common Item.');
INSERT INTO "locationencounter"(cardid, locationid, description) VALUES(363,25,'You see a veteran, blinded by gas during the Great War, come into the diner. Spend $2 to buy him dinner or lose 1 Sanity.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(149,1,0,0,0,5);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(149,8,'Terrible stone edifices loom above you, horrifying in their non-Euclidean splendor. Make a <span class="check">Will (-1) check</span> and lose 2 Sanity, less 1 for each success.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(149,6,'The zoogs and the cats are at war! You must choose. Either side with the zoogs and make a <span class="check">Sneak (-1) check</span> or side with the cats and make a <span class="check">Fight (-1) check</span>. If you fail your check, lose 2 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(149,13,'A terrifying monster appears!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(150,1,0,0,0,5);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(150,2,'The phosphorescent fungus make this cavern appealing to rest a moment... but the toxic spores they emit prove dangerous! Make a <span class="check">Will (-1) [2] check</span> or lose 2 Sanity and 2 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(150,7,'You find yourself sliding down a sheer sheet of ice! Make a <span class="check">Luck (-2) check</span>. If you pass, you land on 1 Unique Item. If you fail, lose 2 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(150,13,'The door slams shut behind you. You are in total blackness. Pass a <span class="check">Luck (-2) check</span>, otherwise you are <i>delayed</i>.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(151,1,0,0,0,5);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(151,2,'You grope blindly in the darkness, desperately avoiding razor-sharp shards of stone. Make a <span class="check">Luck (+1) check</span>. Lose 4 Stamina, reduced by 1 per success.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(151,6,'Maybe you shouldn''t have eaten that strangely-colored fruit. Lose 1 Sanity, then make a <span class="check">Fight (-1) check</span>. If you fail, lose 2 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(151,13,'The floor is crumbling beneath you! Make a <span class="check">Speed (-1) check</span> or be <i>lost in time and space</i>.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(152,1,0,0,0,5);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(152,8,'The earth shakes &mdash; is the city sleeping? Make a <span class="check">Luck (-1) [2] check</span> to escape. If you fail, you are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(152,2,'A subterranean monster appears!');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(152,13,'Make a <span class="check">Luck (+0) check</span> and consult the chart below:<br /><br />Successes:<br /><table><tr><td class="nowrap">0-1)</td><td>Thousands of minute creatures! Lose 1 Stamina.</td></tr><tr><td class="nowrap">2)</td><td>You find $2 worth of gold ingots.</td></tr><tr><td class="nowrap">3+)</td><td>Anywhere is better than here. Return to Arkham.</td></tr></table>');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(153,1,0,0,0,5);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(153,8,'Only brute strength will get you out of this stone trap. Make a <span class="check">Fight (-2) check</span> or you are <i>delayed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(153,7,'Run! Run for your life! Make a <span class="check">Speed (-1) check</span> and lose 3 Stamina, less 1 per success.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(153,13,'The bruising winds make movement difficult. Lose 1 Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(154,1,0,0,0,5);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(154,7,'It seems you are in an entire forest of webs. Make a <span class="check">Sneak (-2) check</span> to avoid getting ensnared. If you fail, you are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(154,6,'A squat little creature offers to serve as your guide. Make a <span class="check">Luck (+1) check</span> and consult the chart below:<br /><br />Successes:<br /><table><tr><td class="nowrap">0)</td><td>You are <i>lost in time and space</i>.</td></tr><tr><td class="nowrap">1)</td><td>Move to the Abyss.</td></tr><tr><td class="nowrap">2)</td><td>Move to the Plateau of Leng.</td></tr><tr><td class="nowrap">3+)</td><td>Return to Arkham.</td></tr></table>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(154,13,'Nothing but emptiness. No encounter.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(155,0,1,0,0,5);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(155,3,'If you can just climb this bizarre structure, you think you can reach your destination! Make a <span class="check">Fight (-2) check</span> to return to Arkham. If you fail, stay here next turn.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(155,7,'The road divides here. Make a <span class="check">Lore (-2) check</span> to decipher the signposts. If you succeed and are in the first area of the Plateau of Leng, move to the second area. If you are in the second area, return to Arkham. If you fail, you are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(155,13,'Make a <span class="check">Luck (-2) check</span> to come across a Unique Item.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(156,0,1,0,0,5);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(156,6,'Pass a <span class="check">Will (-1) check</span> to gain 1 Common Item from traveling merchants.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(156,7,'It''s cold, windy, and dangerous here. Fortunately, there''s a ship headed for warmer climes. If you like, you may move to the Dreamlands.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(156,13,'You pass the night in animated conversation with an old man sucking on a clay pipe. When you awaken, the man is gone without a trace, but you do gain 1 Clue token from his wisdom.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(157,0,1,0,0,5);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(157,6,'Pass a <span class="check">Luck (-2) check</span> to meet the dreamself of a familiar face from Arkham: Joey "The Rat". Draw 3 Common Items and purchase any of them for $1 less than their listed prices. Discard any you don''t buy.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(157,5,'You find a book in a familiar language. Make a <span class="check">Luck (-1) check</span>. If you pass, the book is useful! Gain 1 Skill. If you fail, it''s useless and poorly-written.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(157,13,'There are two flasks here. You may drink one to gain 1 Sanity and lose 1 Stamina or drink the other to gain 1 Stamina and lose 1 Sanity.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(158,0,1,0,0,5);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(158,3,'Your mind is not your own! Make a <span class="check">Will (-1) [2] check</span> to endure the experience. If you pass, gain 2 Clue tokens when you are restored to your body. If you fail, the mind-wipe is successful. Lose 2 Sanity, less 1 for each Clue token you discard.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(158,5,'The creature that acts as librarian here is asleep. Make a <span class="check">Sneak (-1) check</span> to pilfer important documents and gain 2 Clue tokens!');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(158,13,'Make a <span class="check">Speed (-1) check</span> to run for safety and return to Arkham. If you fail, you are caught and are <i>delayed</i>.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(159,0,1,0,0,5);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(159,6,'You find yourself on a rise overlooking an intricate hedge maze with a fabulous temple at its center. You may enter and make a <span class="check">Lore (-1) [2] check</span> to find the center. If you pass, gain 1 Unique Item from the temple within. If you fail, stay here next turn.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(159,3,'The creature exchanges its mind with yours for a time. You may choose to lose 1 or more Sanity, gaining an equal number of Clue tokens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(159,13,'Silence and warmth, for a change. Gain 1 Sanity.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(160,0,1,0,0,5);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(160,7,'The wide-mouthed men of Leng are curious about your exotic wonders. You may attempt to barter with them. Discard 1 Common Item and make a <span class="check">Will (+0) [2] check</span>. If you pass, draw 1 Unique Item. If you fail, gain $2.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(160,5,'Make a <span class="check">Luck (-1) check</span> to find a scroll containing 1 Spell!');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(160,13,'The loathsome beings are certainly not friendly. Make a <span class="check">Sneak (-1) check</span> to avoid them and gain 1 Clue token. If you fail, lose 1 Sanity and 1 Stamina as you flee!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(161,0,0,1,0,5);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(161,6,'You wander into the Enchanted Forest. Make a <span class="check">Luck (-1) check</span>. If you pass, you find succulent fruit that restores 1 Stamina. If you fail, you get lost and are <i>delayed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(161,4,'What are these strange disks? If you pass a <span class="check">Luck (-1) check</span>, they are <i>tok''l</i> coins worth $3! If you fail, they are hazardous Mi-Go artefacts; lose 1 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(161,13,'It takes you a moment to realize that the horrible screeching noise consists of English words spoken by something monstrous! Lose 1 Sanity, but gain 1 Clue token.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(162,0,0,1,0,5);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(162,2,'You climb a long stone stair towards Sarkomand. Make a <span class="check">Fight (+0) [2] check</span>. If you pass, move to the Dreamlands. If you fail, you become exhausted and must stay here next turn.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(162,5,'The creature here demands tribute. Add to the library by discarding 1 Spell and can be rewarded with 2 Clue tokens. If you do not, the creature''s anger costs you 1 Sanity and 1 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(162,13,'The ground is giving way! Pass a <span class="check">Speed (-1) check</span> to escape; otherwise you are <i>delayed</i>.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(163,0,0,1,0,5);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(163,6,'A bored cat challenges you to a riddle contest. Make a <span class="check">Lore (+0) [2] check</span>. If you pass, the cat leads you to a cache containing 1 Unique Item. If you fail, you are <i>delayed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(163,2,'You stumble down a twisting passage and a monster appears!');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(163,13,'What''s that? Another Gate? Hurry! Make a <span class="check">Speed (-1) check</span>. If you fail, you are <i>lost in time and space</i>. If you pass with 1 success, nothing happens. If you pass with 2 or more successes, return to Arkham.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(164,0,0,1,0,5);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(164,2,'The darkness here is absolute. Pass a <span class="check">Will (-1) check</span> or lose 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(164,4,'This alien city seems recently abandoned. Make a <span class="check">Luck (-1) [2] check</span> to find a Unique Item the former inhabitants left behind. If you fail, you discover why they abandoned the ecity, instead. Lose 2 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(164,13,'You find a $5 bill on the ground here, with no possible explanation for its presence. Gain $5.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(165,0,0,1,0,5);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(165,4,'The buzzing speech of the natives echoes from nearby. Make a <span class="check">Sneak (-2) check</span> to remain hidden. If you fail, the creatures find you. You wake up in St. Mary''s Hospital with no memory of your trip to Yuggoth; discard Clue tokens.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(165,5,'Make a <span class="check">Lore (+0) [2] check</span> to decipher these cryptic runes and find a way out! If you fail, you are <i>delayed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(165,13,'Make a <span class="check">Fight (-2) check</span> to scale that sheer cliff. If you succeed, the view from the top grants you 1 Clue token. If you fail, lose 1 Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(166,0,0,1,0,5);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(166,6,'You find yourself surrounded by unblinking cats. Pass a <span class="check">Will (-1) check</span> to pass by unharmed. If you fail, lose 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(166,5,'An endless bookshelf! Make a <span class="check">Luck (+1) check</span> and consult the chart below:<br /><br />Successes:<br /><table><tr><td class="nowrap">0-1)</td><td>Nothing happens.</td></tr><tr><td class="nowrap">2)</td><td>Gain 1 Spell.</td></tr><tr><td class="nowrap">3+)</td><td>Search the Unique Item deck and take the first <i><b>Tome</b></i> you find.</td></tr></table>');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(166,13,'What was that? Lose 1 Sanity.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(167,0,0,0,1,5);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(167,3,'The thing that enters your mind is particularly interested in your spells. For each Spell you have, gain 1 Clue token but lose 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(167,4,'The three moons confound you. Make a <span class="check">Will (-2) check</span> or lose 2 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(167,13,'A strange serpent-faced person in a hooded tongue speaks at you in an ancient tongue. Make a <span class="check">Lore (-2) check</span> to decipher his words and gain 1 Clue token. If you fail, he bites you, disgusted, and leaves. Lose 1 Stamina.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(168,0,0,0,1,5);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(168,8,'As you turn a corner, a leering idol stares at you. Pass a <span class="check">Will (-2) check</span> or jump back and fall down a steep slope. If you fail, you lose 2 Stamina and are <i>delayed</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(168,6,'Bandits with hooves and horns set upon you! Make a <span class="check">Fight (-2) check</span> to beat them off or lose 2 Items of your choice.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(168,13,'Something small scurries away from you, carrying one of your Common Items with it.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(169,0,0,0,1,5);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(169,8,'"I&auml;! I&auml;! Cthulhu Fhtagn!" Where is that chanting coming from? Make a <span class="check">Luck (-2) check</span>. If you succeed, gain 2 Clue tokens as you follow the robed figures. If you fail, lose 2 Sanity and 2 Stamina!');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(169,4,'The creatures have terrible rayguns! Make a <span class="check">Speed (-1) [2] check</span> to sprint for cover. If you fail, you are <i>lost in time and space</i>.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(169,13,'Make a <span class="check">Luck (-2) check</span> to make it through the twisted forest. If you pass, you find $3 worth of precious baubles! If you fail, you are <i>delayed</i>.');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(170,0,0,0,1,5);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(170,3,'It''s a horrible collection of impossible things! Roll 3 dice. For each success, gain 1 Clue token. For each die that is not a success, lose 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(170,6,'You are surrounded by thousands of tiny blue men. Make a <span class="check">Will (-1) [2] check</span> (or discard a Whiskey card to pass it automatically) to talk them out of robing you, or lose all your Common Items. They seem oddly uninterested in your Unique Items or money.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(170,13,'What''s that behind you?! A monster appears!');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(171,0,0,0,1,5);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(171,8,'The sonorous wind of a sleeping leviathan echoes around you. You rest, but you do not rest easy. Gain 1 Stamina, but lose 1 Sanity.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(171,3,'Somewhere in this room is something valuable! Make a <span class="check">Luck (-2) check</span> to find it and draw 1 Unique Item. If you fail, lose 1 Sanity and 1 Stamina from what you <i>do</i> find.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(171,13,'You''ve never seen nor experienced anything so awful. Roll four dice. For each die that is not a success, lose 1 Sanity or 1 Stamina (your choice).');

INSERT INTO "otherworldcard"(_id, red, green, blue, yellow, expansionid) VALUES(172,0,0,0,1,5);

INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(172,4,'The natives capture you for medical experiments! Make a <span class="check">Luck (-3) check</span> to escape. If you fail, exchange your current Stamina and Sanity totals (any Stamina or Sanity in excess of your maximums are lost.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(172,6,'Something small bites you and flies away. Lose 1 Stamina.');
INSERT INTO "otherworldencounter"(otherworldcardid, otherworldid, description) VALUES(172,13,'One glimpse at the sky and things fall into place for you. Gain 1 Clue token.');

INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(1,5,'The Master of Magic','Each investigator with at least 1 Spell gains 1 Power.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(2,5,'A Humble Servant','Add 1 doom token to the doom track for each investigator with 3 Dark Pacts.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(3,5,'Devil''s Bargain','The investigators must choose: either each investigator with Power must discard a Common or Unique Item, or add 1 doom token to the doom track.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(4,5,'Strange Behavior','Each investigator with a Bound Ally must discard 3 Clue tokens. For each investigator that fails to do this, increase the terror level by 1.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(5,5,'Humanity Lost','The investigator with the most Power is <i>devoured</i> (ties broken by the first player). If no investigators have Power, there is no effect.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(6,5,'Power Corrodes','Each investigator loses 1 Sanity for each Power he has.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(7,5,'Unsettling Aura','If the total Power possessed by the investigators as a group is greater than the total number of investigators in the game, increase the terror level by 1.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(8,5,'Terrible Realization','Each investigator with a Blood Pack loses 2 Sanity.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(9,5,'The Body Decays','Each investigator with a Dark Pack loses 1 Stamina per Dark Pact he has.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(10,5,'Bargain of the Gate','The investigator with the most Power moves to the Other World of his choice (ties broken by the first player).');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(11,5,'Spread the Word','Each investigator may choose to immediately gain one or more Dark Pacts. Then, if there is at least one investigator who does not have a Dark Pact, each investigator who does have a Dark Pact is <i>Cursed</i>.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(12,5,'Prisoner''s Dilemma','The investigators must choose: either the investigator with the most Power is <i>devoured</i>, or the investigator with the least Power is driven insane.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(13,5,'The Body a Temple','Each investigator with a Soul Pact loses 2 Stamina.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(14,5,'Through the Threshold','Every investigator in Arkham with 1 or more Power is drawn through the closest open Gate (his choice if there is a tie).');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(15,5,'Uncertain Future','Shuffle the Reckoning deck and its discard pile together (including this card), then draw a new Reckoning deck.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(16,5,'A Little Taste','The investigator(s) with the least Power gain 1 Power, even if he does not have a Dark Pact. Note, however, that an investigator needs a Dark Pact to spend Power.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(17,5,'The Mind Unravels','Each investigator with a Dark Pact loses 1 Sanity per Dark Pact he has.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(18,5,'Debt Comes Due','For each 3 Power possessed by the investigators as a group, add 1 doom token to the doom track (round down).');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(19,5,'Further Temptation','Each investigator with a Dark Pact draws 1 Spell.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(20,5,'In Too Deep','Each investigator with only 1 Dark Pact must immediately choose and take a second Dark Pact.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(21,5,'Power Begets Power','Each investigator with at least 1 Power gains 1 Power.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(22,5,'Power Corrupts','Each investigator loses 1 Sanity or 1 Stamina for each Power he has.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(23,5,'Power Decays','Each investigator loses 1 Stamina for each Power he has.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(24,5,'Turning On One Another','Discard 1 Ally from the Ally deck for each Bound Ally card in play. For each Ally that you cannot discard (because the deck is empty), increase the terror level by 1.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(25,5,'He Is Everywhere','If every investigator has 1 or more Dark Pacts and/or 1 or more Power, add a doom token to the doom track.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(26,5,'Give the Devil His Due','Each investigator with a Dark Pact must discard 1 Gate trophy or 5 toughness worth of monster trophies or 5 Clue tokens, if able. If he cannot, he must discard all his monster trophies and Clue tokens.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(27,5,'Dark Reward','Each investigator with a Dark Pact gains 1 Power per Dark Pact he has.');
INSERT INTO "reckoningcard"(_id, expansionid, title, description) VALUES(28,5,'An Offer You Can''t Refuse','The first player chooses an investigator. That investigator must take a Dark Pact if able. If not able, that investigator is <i>devoured</i>.');
