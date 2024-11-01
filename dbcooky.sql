create database cooky;
use cooky;
CREATE TABLE typedish (
    typedishID INT PRIMARY KEY AUTO_INCREMENT,
    typename VARCHAR(255)
);

CREATE TABLE dish (
    dishID INT PRIMARY KEY AUTO_INCREMENT,
    dishName VARCHAR(255) NOT NULL,
    recipe TEXT,
    images VARCHAR(255), -- URL
    rate VARCHAR(20),
    description TEXT,
    typedishID INT,
    session VARCHAR(255),
    FOREIGN KEY (typedishID) REFERENCES typedish(typedishID)
);

CREATE TABLE ingredients (
    ingredientID INT PRIMARY KEY AUTO_INCREMENT,
    ingredientName VARCHAR(255)
);

CREATE TABLE dishdetail (
    dishID INT,
    ingredientID INT,
    quantity DECIMAL(10, 2),
    unit VARCHAR(50),
    PRIMARY KEY (dishID, ingredientID),
    FOREIGN KEY (dishID) REFERENCES dish(dishID),
    FOREIGN KEY (ingredientID) REFERENCES ingredients(ingredientID)
);
create table imagedetail(
imageid int primary key auto_increment,
dishid int,
imagelink varchar(255),
FOREIGN KEY(dishid) REFERENCES dish(dishid)			
);
