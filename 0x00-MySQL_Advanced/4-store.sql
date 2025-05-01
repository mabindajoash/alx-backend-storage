-- Create a trigger
-- Statement to create a trigger that decreases quantity after new order
DELIMITER $$
DROP TRIGGER IF EXISTS reduce_quantity;
CREATE TRIGGER buy_items AFTER INSERT ON `order`
FOR EACH ROW
BEGIN
UPDATE items
SET quantity = quantity - NEW.number
WHERE name = NEW.item_name;
END$$
DELIMITER ;
