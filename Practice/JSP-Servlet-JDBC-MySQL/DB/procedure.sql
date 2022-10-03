SELECT * FROM l12_databaseuser.users;

USE l12_databaseuser;

DELIMITER //
CREATE PROCEDURE get_user_by_id (IN user_id INT)
	BEGIN
		SELECT users.name, users.email, users.country
        FROM users
        WHERE users.id = user_id;
	END //
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE insert_user(
	IN 		user_name 		varchar(50),
    IN		user_email		VARCHAR(50),
    IN		user_country	VARCHAR(50)
    )
	BEGIN
		INSERT INTO		users(name, email, country)
        VALUES			(user_name, user_email, user_country);
	END $$
DELIMITER ;