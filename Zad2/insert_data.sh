#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
while IFS=',' read -r year round winner opponent winner_goals opponent_goals; do
    if [[ $year != 'year' ]]
    then
      WINNERS_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$winner'")
      if [[ -z $WINNERS_ID ]]
      then
        WINNERS_INSERT_RESPONSE=$($PSQL "INSERT INTO teams(name) VALUES('$winner')")
        if [[ $WINNERS_INSERT_RESPONSE == "INSERT 0 1" ]]
        then
          echo "Inserted into teams, $winner"
        fi
        WINNERS_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$winner'")
      fi

      OPPONENTS_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$opponent'")
      if [[ -z $OPPONENTS_ID ]]
      then
        OPPONENTS_INSERT_RESPONSE=$($PSQL "INSERT INTO teams(name) VALUES('$opponent')")
        if [[ $OPPONENTS_INSERT_RESPONSE == "INSERT 0 1" ]]
        then
          echo "Inserted into teams, $opponent"
        fi
        OPPONENTS_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$opponent'")
      fi

      GAME_INSERT_RESPONSE=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES('$year', '$round', $WINNERS_ID, $OPPONENTS_ID, $winner_goals, $opponent_goals)")
      if [[ $WINNERS_INSERT_RESPONSE == "INSERT 0 1" ]]
      then
        echo "Inserted into games, $year', '$round', $WINNERS_ID, $OPPONENTS_ID"
      fi

    fi
done < games.csv
