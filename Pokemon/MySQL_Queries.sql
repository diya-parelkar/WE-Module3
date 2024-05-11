-- 1. Create all the tables needed. (5)
CREATE TABLE Pokemons(
	ID int NOT NULL PRIMARY KEY,
	pokemon_name varchar(20),
	primary_type varchar(20),
	secondary_type varchar(20)
);

CREATE TABLE Moves(
    move_name varchar(20) NOT NULL PRIMARY KEY,
    move_power int,
    move_type varchar(20)
);

CREATE TABLE Pokemon_moves(
    ID int,
    move_name varchar(20),
    PRIMARY KEY(ID, move_name)
);

-- 2. With the following details, populate the tables: (5)
INSERT INTO Pokemons (ID, pokemon_name, primary_type, secondary_type) VALUES 
(1, 'Balbasaur', 'Grass', 'NULL'),
(2, 'Charmander', 'Fire', 'NULL'),
(3, 'Squirtle', 'Water', 'NULL'),
(4, 'Eevee', 'Normal', 'NULL'),
(5, 'Pidgey', 'Normal', 'Flying');

INSERT INTO Moves (move_name, move_power, move_type) VALUES
('Tackle', 35, 'Normal'),
('Water Gun', 40, 'Water'),
('Ember', 40, 'Fire'),
('Vine Whip', 40, 'Grass'),
('Wing Attack', 65, 'Flying'),
('Headbutt', 70, 'Normal'),
('Return', 100, 'Normal');

INSERT INTO Pokemon_moves(ID, move_name) VALUES
(1, 'Tackle'),
(1, 'Vine Whip'),
(1, 'Return'),
(2, 'Tackle'),
(2, 'Ember'),
(2, 'Return'),
(3, 'Tackle'),
(3, 'Water Gun'),
(3, 'Return'),
(4, 'Tackle'),
(4, 'Headbutt'),
(4, 'Return'),
(5, 'Tackle'),
(5, 'Wing Attack'),
(5, 'Return');

-- 3. Write a query that returns all the pokemon who can learn ‘Return’. (5)
SELECT Pokemons.*, Moves.*
FROM Pokemons
JOIN Pokemon_moves ON Pokemons.ID = Pokemon_moves.ID
JOIN Moves ON Pokemon_moves.move_name = Moves.move_name
WHERE Moves.move_name = 'Return';

-- 4. Write a query that returns all the moves in the game that are powerful against Grass. (5)
SELECT Moves.move_name
FROM Moves
WHERE Moves.move_type = 'Fire' OR Moves.move_type = 'Flying';