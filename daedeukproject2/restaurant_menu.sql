BEGIN TRANSACTION;
INSERT INTO "restaurant" VALUES (1,'Database');
INSERT INTO "restaurant" VALUES (2,'NetWork');
INSERT INTO "restaurant" VALUES (3,'Clanguage');
INSERT INTO "restaurant" VALUES (4,'Algorithm');
INSERT INTO "restaurant" VALUES (5,'GoodLuck');
INSERT INTO "restaurant" VALUES (6,'Love');

INSERT INTO "menu_item" VALUES ('Database', 1, 'A', 10000, 201601776, 0, 1);
INSERT INTO "menu_item" VALUES ('Network', 2, 'B', 11000, 201701778, 0, 2);
INSERT INTO "menu_item" VALUES ('Network', 3, 'C', 8000, 201501778, 0, 2);
INSERT INTO "menu_item" VALUES ('Clanguage', 4, 'B', 13000, 201501778, 0, 3);
INSERT INTO "menu_item" VALUES ('Algorithm', 5, 'A', 15000, 201801778, 0, 4);
INSERT INTO "menu_item" VALUES ('Love', 6, 'A', 9000, 201601768, 0, 5);
COMMIT;
