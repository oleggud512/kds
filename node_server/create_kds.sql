CREATE DATABASE kds;

CREATE TABLE IF NOT EXISTS `dishes` (
	`id` INTEGER NOT NULL auto_increment , 
    `name` VARCHAR(256) NOT NULL, 
    `category` VARCHAR(32) NOT NULL, 
    `createdAt` DATETIME NOT NULL, 
    `updatedAt` DATETIME NOT NULL, 
    PRIMARY KEY (`id`)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `waiters` (
	`id` INTEGER NOT NULL auto_increment , 
    `name` VARCHAR(100) NOT NULL, 
    `phone_number` VARCHAR(10) NOT NULL, 
    `createdAt` DATETIME NOT NULL, 
    `updatedAt` DATETIME NOT NULL, PRIMARY KEY (`id`)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `orders` (
	`id` INTEGER NOT NULL auto_increment , 
	`waiter_id` INTEGER, `state` ENUM('inProgress', 'closed') NOT NULL DEFAULT 'inProgress', 
	`total` DECIMAL(8,2), `createdAt` DATETIME NOT NULL, `updatedAt` DATETIME NOT NULL, 
	PRIMARY KEY (`id`), 
	FOREIGN KEY (`waiter_id`) REFERENCES `waiters` (`id`) 
		ON DELETE SET NULL 
        ON UPDATE CASCADE
) ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS `order_items` (
	`order_id` INTEGER , 
    `dish_id` INTEGER , 
    `comment` VARCHAR(256) NOT NULL DEFAULT '', 
    `state` ENUM('cooking', 'ready', 'inProgress') DEFAULT 'cooking', 
    `count` INTEGER NOT NULL DEFAULT 1, `price` DECIMAL(8,2) NOT NULL, 
    `createdAt` DATETIME NOT NULL, `updatedAt` DATETIME NOT NULL, 
    UNIQUE `order_items_dishId_orderId_unique` (`order_id`, `dish_id`), 
    PRIMARY KEY (`order_id`, `dish_id`), 
    FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) 
		ON DELETE CASCADE 
        ON UPDATE CASCADE, 
	FOREIGN KEY (`dish_id`) REFERENCES `dishes` (`id`) 
		ON DELETE CASCADE 
        ON UPDATE CASCADE
) ENGINE=InnoDB;