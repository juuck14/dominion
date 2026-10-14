CREATE TABLE session_expansion(
	sessionid integer,
    expansionid integer,
    FOREIGN KEY(expansionid) REFERENCES expansion(_id),
    FOREIGN KEY(sessionid) REFERENCES session(_id)
);

ALTER TABLE expansion DROP COLUMN enabled;
