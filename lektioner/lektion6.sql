
CREATE TABLE customers
(
id INT PRIMARY KEY,
money float
)
;

DELIMITER $$

	CREATE TRIGGER plants_after_insert
    #AFTER UPDATE ON plants
    AFTER INSERT ON plants
    FOR EACH ROW
    BEGIN
    # (OLD innan updatering, NEW efter updatering)
		UPDATE customer
        SET customer_money = customer_money - NEW.item_price
        WHERE NEW.customer_item_id = customer_id;
    END $$

DELIMITER ;