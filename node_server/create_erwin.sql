DROP DATABASE IF EXISTS kds;

CREATE DATABASE kds;
USE kds;

DROP TABLE IF EXISTS order_item;

DROP TABLE IF EXISTS dish;

DROP TABLE IF EXISTS `order`;

DROP TABLE IF EXISTS waiter;

CREATE TABLE waiter
(
	id                    INTEGER NOT NULL auto_increment,
	name                  VARCHAR(100) NOT NULL,
	phone_number          VARCHAR(10) NOT NULL,
	 PRIMARY KEY (id)
);
CREATE TABLE `order`
(
	id                    INTEGER NOT NULL auto_increment,
	waiter_id             INTEGER NOT NULL,
	state                 VARCHAR(20) NOT NULL DEFAULT 'inProgress'
		CONSTRAINT  order_state_const CHECK (state IN ('closed', 'inProgress')),
	total                 DECIMAL(8,2) NOT NULL DEFAULT 0
		CONSTRAINT  total CHECK (total >= 0),
	date                  TIMESTAMP NOT NULL DEFAULT current_timestamp,
	 PRIMARY KEY (id),
     FOREIGN KEY R_2 (waiter_id) REFERENCES waiter(id)
);

CREATE UNIQUE INDEX WDGroup ON `order`
(
	date,
	waiter_id
);

CREATE TABLE dish
(
	id                    INTEGER NOT NULL auto_increment,
	price                 DECIMAL(8,2) NOT NULL DEFAULT 0
		CONSTRAINT  dish_price_const CHECK (price >= 0),
	name                  VARCHAR(32) NOT NULL,
	category              VARCHAR(32) NOT NULL,
	 PRIMARY KEY (id)
);

CREATE UNIQUE INDEX CategoryGroup ON dish
(
	category
);

CREATE TABLE order_item
(
	order_id              INTEGER NOT NULL auto_increment,
	dish_id               INTEGER NOT NULL DEFAULT 0,
	state                 VARCHAR(20) NOT NULL DEFAULT 'cooking'
		CONSTRAINT  order_item_state_const CHECK (state IN ('cooking', 'ready', 'served')),
	comment               VARCHAR(255) NOT NULL,
	price                 DECIMAL(8,2) NOT NULL DEFAULT 0
		CONSTRAINT  order_item_price_const CHECK (price >= 0),
	count                 INTEGER NOT NULL DEFAULT 0
		CONSTRAINT  count CHECK (count >= 1),
	 PRIMARY KEY (order_id,dish_id),
     FOREIGN KEY R_48 (order_id) REFERENCES `order`(id)
		ON DELETE CASCADE,
	FOREIGN KEY R_50 (dish_id) REFERENCES dish(id)
);


