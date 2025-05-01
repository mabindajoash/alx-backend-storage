-- create function SafeDiv
-- divides two numbers and return the quotient

DELIMITER $$
CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
DECLARE c FLOAT DEFAULT 0;
IF b != 0 THEN
    SET c = a / b;
END IF;
return c;
END$$

DELIMITER ;
