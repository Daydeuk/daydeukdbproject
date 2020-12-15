DROP TABLE IF EXISTS menu_item;
DROP TABLE IF EXISTS restaurant;

CREATE TABLE restaurant (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(250) NOT NULL
);

CREATE TABLE menu_item (
  cname VARCHAR(80) NOT NULL,
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  description VARCHAR(10), 
  price VARCHAR(8), 
  sell_id integer(10),
  countt integer(10),
  restaurant_id INTEGER,
  FOREIGN KEY(restaurant_id) REFERENCES restaurant(id)
);
