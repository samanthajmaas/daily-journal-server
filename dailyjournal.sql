CREATE TABLE `Mood` (
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `label` TEXT NOT NULL
);

CREATE TABLE `Entry` (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`date`	TEXT NOT NULL,
	`concept`	TEXT NOT NULL,
    `author` TEXT NOT NULL, 
    `entry` TEXT NOT NULL,
    `mood_id` INTEGER,
    FOREIGN KEY(`mood_id`) REFERENCES `Moods`(`id`)
);

CREATE TABLE `Tag` (
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `subject` TEXT NOT NULL
);

CREATE TABLE `EntryTag` (
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `entry_id` INTEGER,
    `tag_id` INTEGER,
    FOREIGN KEY(`entry_id`) REFERENCES `Entries`(`id`),
    FOREIGN KEY(`tag_id`) REFERENCES `Tags`(`id`)
);

INSERT INTO `Mood` VALUES (null, 'Ok');
INSERT INTO `Mood` VALUES (null, 'Happy');
INSERT INTO `Mood` VALUES (null, 'Sad');
INSERT INTO `Mood` VALUES (null, 'Confused');
INSERT INTO `Mood` VALUES (null, 'Frustrated');
INSERT INTO `Mood` VALUES (null, 'Confident');
INSERT INTO `Mood` VALUES (null, 'Stressed');

INSERT INTO `Entry` VALUES (null, '2020-08-17', 'Edit Button', 'Sam', 'We learned how to use an edit button.', 3);
INSERT INTO `Entry` VALUES (null, '2020-10-13', "SQL", 'Sam', 'We have been learning a lot about SQL in Python and it has been a fun yet challenging new concept.', 1);

INSERT INTO `Tag` VALUES (null, 'API');
INSERT INTO `Tag` VALUES (null, 'components');
INSERT INTO `Tag` VALUES (null, 'SQL');
INSERT INTO `Tag` VALUES (null, 'Python');

INSERT INTO `EntryTag` VALUES (null, 1, 1);
INSERT INTO `EntryTag` VALUES (null, 2, 3 );
