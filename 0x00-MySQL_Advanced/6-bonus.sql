-- create a stored procedure AddBonus
--  procedure add bonus

DELIMITER $$
CREATE PROCEDURE AddBonus(IN user_id INT, IN project_name VARCHAR(255), IN score INT)
BEGIN
DECLARE project_count INT DEFAULT 0;
DECLARE project_id INT;
SELECT COUNT(*) INTO project_count
FROM projects WHERE name = project_name;
IF project_count = 0 THEN
    INSERT INTO projects (name)
        VALUES (project_name);
END IF;
SELECT id INTO project_id
FROM projects WHERE name = project_name
LIMIT 1;
INSERT INTO corrections VALUES(user_id, project_id, score);
END$$
