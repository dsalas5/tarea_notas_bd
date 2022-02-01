

CREATE TABLE Users (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(15) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE Categories(
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(25) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE Notes (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(100),
    creation DATE,
    last_edit DATE,
    description CHAR,
    delete_note BOOLEAN,
    user_id INT NOT NULL,
    category_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES Users (id),
    FOREIGN KEY (category_id) REFERENCES Categories (id)
);
INSERT INTO Categories (id,name)
VALUES (1,'Rock'),(2,'Jazz'),(3,'Pop'),(4,'Classic'),(5,'Rap'),(6,'Electronic'),(7,'Instrumental'),(8,'Punk'),(9,'Metal'),(10,'Country');

INSERT INTO Users (id,name,email)
VALUES (1,'Diego', 'sample.email@dg.com'),
(2,'Diana', 'sample.email@dg.com'),
(3,'Daniel', 'sample.email@dg.com'),
(4, 'Lesly', 'sample.email@dg.com'),
(5, 'Alexis', 'sample.email@dg.com'),
(6, 'Isabella', 'sample.email@dg.com'),
(7,'Roberto', 'sample.email@dg.com'),
(8, 'Melissa', 'sample.email@dg.com'),
(9,'Miguel', 'sample.email@dg.com'),
(10,'Natalie', 'sample.email@dg.com');

INSERT INTO Notes (id, title, creation,last_edit, description, delete_note,user_id,category_id)
VALUES
(1,'Primera Nota',current_date(),current_date(),'Esto es una nota',true,1,5),
(2,'Segunda Nota',current_date(),current_date(),'Esto es una nota',false,3.4),
(3,'Tercera Nota',current_date(),current_date(),'Esto es una nota',true,7,8),
(4,'Cuarta Nota',current_date(),current_date(),'Esto es una nota',false,9,7),
(5,'Quinta Nota',current_date(),current_date(),'Esto es una nota',true,3,5),
(6,'Sexta Nota',current_date(),current_date(),'Esto es una nota',false,6,5),
(7,'Septima Nota',current_date(),current_date(),'Esto es una nota',true,1,9),
(8,'Octava Nota',current_date(),current_date(),'Esto es una nota',false,8,2),
(9,'Novena Nota',current_date(),current_date(),'Esto es una nota',true,6,7),
(10,'Decima Nota',current_date(),current_date(),'Esto es una nota',false,5,5)
