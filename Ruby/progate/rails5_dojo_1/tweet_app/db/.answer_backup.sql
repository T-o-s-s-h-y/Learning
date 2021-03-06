PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
INSERT INTO "schema_migrations" VALUES('20170509053756');
CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "ar_internal_metadata" VALUES('environment','development','2017-05-11 06:37:35.347068','2017-05-11 06:37:35.347068');
CREATE TABLE "posts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "content" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "posts" VALUES(1,'次は何の本を読もうかな。','2017-03-31 05:24:15.529063','2017-03-31 05:24:15.529063');
INSERT INTO "posts" VALUES(2,'今日のランチおいしかった。','2017-03-31 05:24:32.004378','2017-03-31 05:24:32.004378');
INSERT INTO "posts" VALUES(3,'Rails勉強中！','2017-03-31 06:24:32.004378','2017-03-31 06:24:32.004378');
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('posts',3);
COMMIT;
