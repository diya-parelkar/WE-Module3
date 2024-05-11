### Pokémon Game

We’re going to simplify Pokemon to just a couple of mechanics that are used in the game, and thankfully, you don’t need to know how it works to do this exercise.

Pokemon can have one or two ‘types,’ which decide whether they’re more effective or less effective against other Pokemon types. Every pokemon has a primay type; some also have a secondary type.

The game involves using moves to attack other Pokemon, and each move has a certain power and type. Every move has a set of Pokemon who are capable of learning it; and every Pokemon has a set of moves it can learn.

At the very least, we’d need database tables to store Pokemon, Type, and Move. However, ‘Pokemon’ and ‘Move’ have a classic many-to-many relationship. How do you deal with this?

1. Create all the tables needed. (5)
2. With the following details, populate the tables: (5)

Pokémon Type
+ Bulbasaur is a Pokémon of Grass type.
+ Charmander is a Pokémon of Fire type.
+ Squirtle is a Pokémon of Water type.
+ Eevee is a Pokémon of Normal type.
+ Pidgey is a Pokémon of the Normal/Flying type.

Moves:
+ Bulbasaur can learn Tackle, Vine Whip, and Return.
+ Charmander can learn Tackle, Ember, and Return.
+ Squirtle can learn Tackle, Water Gun, and Return.
+ Eevee can learn Tackle, Headbutt, and Return.
+ Pidgey can learn Tackle, Wing Attack, and Return.

Move Details:
+ Tackle has 35 power and is Normal type.
+ Water Gun has 40 power and is Water type.
+ Ember has 40 power and is Fire type.
+ Vine Whip has 40 power and is Grass type.
+ Wing attack has 65 power and is Flying type.
+ Headbutt has 70 power and is Normal type.
+ Return has 100 power and is Normal type.

Type Advantages:
+ Fire is powerful against Grass but weak to Water.
+ Grass is powerful against Water but weak to both Fire and Flying.
+ Water is powerful against Fire but weak to Grass.
+ Normal is not weak to anything but not powerful against anything either.
+ Flying is powerful against Grass and has no weaknesses.

3. Write a query that returns all the pokemon who can learn ‘Return’. (5)
4. Write a query that returns all the moves in the game that are powerful against Grass. (5)