
USE l12_databaseuser;

CREATE	TABLE users (
	id			INT(3)			NOT NULL AUTO_INCREMENT,
    name		VARCHAR(120)	NOT NULL,
    email		VARCHAR(220)	NOT NULL,
    country		VARCHAR(120),
    PRIMARY KEY		(id)
);

INSERT	INTO	users (name, email, country)
				VALUES
						('Phong', 'Phong@gmail.com', 'Việt Nam'),
						('Lương', 'Luong@gmail.com', 'Việt Nam'),
						('Bảnh', 'Banh@gmail.com', 'Việt Nam');