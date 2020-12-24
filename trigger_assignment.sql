CREATE TABLE trigger_test(
    message VARCHAR(100)
);

/*
Write below code in terminal
---------------------------------------------------------------
DELIMITER $$
CREATE
    TRIGGER my_trigger BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES('added new employee');
    END$$
DELIMITER ;
----------------------------------------------------------------
*/

INSERT INTO employee
VALUES(109, 'Oscar', 'Martinez', '1968-02-19', 'M', 69000, 106, 3);

SELECT * FROM trigger_test;

/*
Write below code in terminal
---------------------------------------------------------------
DELIMITER $$
CREATE
    TRIGGER my_trigger2 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES(NEW.first_name);
    END$$
DELIMITER ;
----------------------------------------------------------------
*/

INSERT INTO employee
VALUES(110, 'Kevin', 'Malone', '1978-02-19', 'M', 69000, 106, 3);

SELECT * FROM trigger_test;