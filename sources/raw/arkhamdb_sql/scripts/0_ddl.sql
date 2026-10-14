CREATE TABLE expansion(
    _id integer primary key,
    title text,
    enabled integer
);

CREATE TABLE board(
    _id integer primary key,
    title text, expansionid integer,
    FOREIGN KEY(expansionid) REFERENCES expansion(_id)
);

CREATE TABLE neighbourhood(
    _id integer primary key,
    boardid integer,
    title text,
    FOREIGN KEY(boardid) REFERENCES board(_id)
);

CREATE TABLE location(
    _id integer primary key,
    neighbourhoodid integer,
    title text,
    sort_title text,
    FOREIGN KEY(neighbourhoodid) REFERENCES neighbourhood(_id)
);

CREATE TABLE neighbourhoodcard(
    _id integer primary key,
    neighbourhoodid integer,
    expansionid integer,
    discarded tinyint default 0,
    requiresexpansionid integer NULL,
    FOREIGN KEY(neighbourhoodid) REFERENCES neighbourhood(_id), 
    FOREIGN KEY(requiresexpansionid) REFERENCES expansion(_id)
);

CREATE TABLE locationencounter(
    _id integer primary key,
    locationid integer,
    cardid integer,
    description text,
    pinned tinyint default 0,
    FOREIGN KEY(locationid) REFERENCES location(_id),
    FOREIGN KEY(cardid) REFERENCES neighbourhoodcard(_id)
);

CREATE TABLE otherworld(
    _id integer primary key,
    title text,
    sort_title text,
    red tinyint,
    green tinyint,
    blue tinyint,
    yellow tinyint,
    expansionid integer,
    FOREIGN KEY(expansionid) REFERENCES expansion(_id)
);

CREATE TABLE otherworldcard(
    _id integer primary key,
    red tinyint,
    green tinyint,
    blue tinyint,
    yellow tinyint,
    expansionid integer,
    discarded tinyint default 0,
    requiresexpansionid1 integer,
    requiresexpansionid2 integer,
    FOREIGN KEY(expansionid) REFERENCES expansion(_id)
);

CREATE TABLE otherworldencounter(
    description text,
    otherworldcardid integer,
    otherworldid integer,
    pinned tinyint default 0,
    FOREIGN KEY(otherworldcardid) REFERENCES otherworldcard(_id),
    FOREIGN KEY(otherworldid) REFERENCES otherworld(_id)
);

CREATE TABLE cultencountercard(
    _id integer primary key,
    expansionid integer,
    discarded tinyint default 0,
    title text,
    flavourtext text,
    description text,
    FOREIGN KEY(expansionid) REFERENCES expansion(_id)
);

CREATE TABLE exhibitencountercard(
    _id integer primary key,
    expansionid integer,
    discarded tinyint default 0,
    title text,
    description text,
    moves text,
    FOREIGN KEY(expansionid) REFERENCES expansion(_id)
);

CREATE TABLE reckoningcard(
    _id integer primary key,
    expansionid integer,
    discarded tinyint default 0,
    title text,
    description text,
    FOREIGN KEY(expansionid) REFERENCES expansion(_id)
);
