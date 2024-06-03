USE kds;
DROP TRIGGER IF EXISTS order_item_price;

DELIMITER $$

CREATE TRIGGER order_item_price
BEFORE INSERT
ON kds.order_item FOR EACH ROW
BEGIN
	DECLARE dish_price DECIMAL(8,2);
    
	SELECT d.price INTO dish_price
	FROM dish d 
	WHERE d.id = NEW.dish_id;
	
	UPDATE order_item oi
	SET oi.price = dish_price
	WHERE oi.dish_id = NEW.dish_id;
    
    UPDATE `order`
    SET total = 666.0
    WHERE id = NEW.order_id;
END $$

DELIMITER ;