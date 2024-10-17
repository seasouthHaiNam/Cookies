
CREATE TABLE TypeDish (
    typedishID INT PRIMARY KEY IDENTITY(1,1),
    typename NVARCHAR(255)
);
CREATE TABLE Dish (
    dishID INT PRIMARY KEY IDENTITY(1,1),	
    dishName NVARCHAR(255) NOT NULL, 
    recipe text,
    images NVARCHAR(MAX), --URL--
    rate DECIMAL(2, 1), 
    description text, 
    typedishID INT, 
    session NVARCHAR(255),  
    FOREIGN KEY (typedishID) REFERENCES TypeDish(typedishID)  
);

CREATE TABLE Ingredients (
    ingredientID INT PRIMARY KEY,
    ingredientName NVARCHAR(255) 
);

CREATE TABLE DishDetail (
    dishID INT IDENTITY(1000,1),
    ingredientID INT,
    quantity DECIMAL(10, 2),
    unit NVARCHAR(50),
    PRIMARY KEY (dishID, ingredientID),
    FOREIGN KEY (dishID) REFERENCES Dish(dishID),
    FOREIGN KEY (ingredientID) REFERENCES Ingredients(ingredientID)
);
