- I'm going to need 2 models
  - Player
  - Game

A player can be in many games.
A game can have many players. (for now two)

Player migration:
  - name
  - unique index?

Game migration:
  - Winner. (Maybe just store the player_id)
  - Amount of time it took to win.
  - Game is done or not.

Join Table migration:
  - Game ID
  - Player ID

Prompt the player for their names.
This gets entered into the database.

Routes:

get -/game/new
get -/game/:id
  - This will be a unqiue URL that displays the results of that particular game.


