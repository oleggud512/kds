-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema kds
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `kds` ;

-- -----------------------------------------------------
-- Schema kds
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `kds` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `kds` ;

-- -----------------------------------------------------
-- Table `dish`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dish` ;

CREATE TABLE IF NOT EXISTS `dish` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(256) NOT NULL,
  `category` VARCHAR(32) NOT NULL,
  `price` DECIMAL(8,2) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 21
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `waiter`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `waiter` ;

CREATE TABLE IF NOT EXISTS `waiter` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `phone_number` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `order`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `order` ;

CREATE TABLE IF NOT EXISTS `order` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `waiter_id` INT UNSIGNED NULL DEFAULT NULL,
  `date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `state` ENUM('inProgress', 'closed') NOT NULL DEFAULT 'inProgress',
  `total` DECIMAL(8,2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `waiter_id` (`waiter_id` ASC) VISIBLE,
  CONSTRAINT `order_ibfk_1`
    FOREIGN KEY (`waiter_id`)
    REFERENCES `waiter` (`id`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `order_item`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `order_item` ;

CREATE TABLE IF NOT EXISTS `order_item` (
  `order_id` INT UNSIGNED NOT NULL,
  `dish_id` INT UNSIGNED NOT NULL,
  `comment` VARCHAR(256) NOT NULL DEFAULT '',
  `state` ENUM('cooking', 'ready', 'inProgress') NULL DEFAULT 'cooking',
  `count` INT NOT NULL DEFAULT '1',
  `price` DECIMAL(8,2) NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`, `dish_id`),
  UNIQUE INDEX `order_item_dishId_orderId_unique` (`order_id` ASC, `dish_id` ASC) VISIBLE,
  INDEX `dish_id` (`dish_id` ASC) VISIBLE,
  CONSTRAINT `order_item_ibfk_1`
    FOREIGN KEY (`order_id`)
    REFERENCES `order` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `order_item_ibfk_2`
    FOREIGN KEY (`dish_id`)
    REFERENCES `dish` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

USE `kds` ;

-- -----------------------------------------------------
-- procedure update_order_item_state
-- -----------------------------------------------------

USE `kds`;
DROP procedure IF EXISTS `update_order_item_state`;

DELIMITER $$
USE `kds`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_order_item_state`(
	IN order_id INT, 
    IN dish_id INT,
    IN new_order_item_state VARCHAR(40)
)
BEGIN
	DECLARE total_order_items INT;
    DECLARE served_order_items INT;
    DECLARE is_order_completed BOOLEAN;
	
    UPDATE order_item oi
    SET oi.state = new_order_item_state
    WHERE oi.order_id = order_id AND
		oi.dish_id = dish_id;
    
    SELECT COUNT(*) INTO total_order_items
    FROM order_item oi
    WHERE oi.order_id = order_id;
    
    SELECT COUNT(*) INTO served_order_items
    FROM order_item oi
    WHERE oi.order_id = order_id AND
		oi.state = 'served';
	
    SET is_order_completed = (total_order_items = served_order_items);
    
    IF is_order_completed THEN 
		UPDATE `order` o
        SET o.state = 'closed'
        WHERE o.id = order_id;
	END IF;
    
END$$

DELIMITER ;
USE `kds`;

DELIMITER $$

USE `kds`$$
DROP TRIGGER IF EXISTS `order_item_price` $$
USE `kds`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `kds`.`order_item_price`
BEFORE INSERT ON `kds`.`order_item`
FOR EACH ROW
BEGIN
      DECLARE dish_price DECIMAL(8,2);
      
      SELECT d.price INTO dish_price
      FROM dish d 
      WHERE d.id = NEW.dish_id;
      
      SET NEW.price = dish_price;
        
      UPDATE `order`
      SET total = IF(total IS NULL, dish_price, total + dish_price)
      WHERE id = NEW.order_id;
    END$$


DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
