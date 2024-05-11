//used the Mongosh Terminal

//4. Write a query that returns all the pokemon who can learn ‘Return’.
db.Moves.aggregate(
  {
    $match: {
      "Attack": "Return",
    },
  },
  {
    $lookup: {
      from: "Pokemon",
      localField: "pokemon",
      foreignField: "Pokemons.PokemonID",
      as: "ReturnType",
    },
  },
  {
    $project: {
      "ReturnType.pokemon": 1,
    },
  }
);

//5. Write a query that returns all the moves in the game that are powerful against Grass.
db.Moves.aggregate(
  {
    $match: {
      "Type": {
        $in: ["Flying", "Fire"],
      },
    },
  },
  {
    $project: {
      "Attack": 1,
      "_id": 0,
    },
  }
);
