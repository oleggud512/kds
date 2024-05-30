USE kds;
DROP PROCEDURE IF EXISTS update_order_item_state;

DELIMITER $$

CREATE PROCEDURE update_order_item_state(
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
    
END $$

DELIMITER ;