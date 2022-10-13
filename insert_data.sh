#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE TABLE games, teams")

cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do

  if [[ $YEAR != "year" ]]
  then

    INSERT_TEAM=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
    INSERT_TEAMO=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")

    TEAMIDWIN=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    TEAMIDOPP=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

    INSERT_GAMES=$($PSQL "INSERT INTO games(year, round, winner_goals, opponent_goals, winner_id, opponent_id) VALUES($YEAR, '$ROUND', $WINNER_GOALS, $OPPONENT_GOALS, $TEAMIDWIN, $TEAMIDOPP)")
    
  
  fi
done
