#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=game -t --no-align -c"

echo "Enter your username:"
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USERNAME'")

if [[ -z $USER_ID ]]
  then
    echo "Welcome, $USERNAME! It looks like this is your first time here."
    INSERT_USER_RESULT=$($PSQL "INSERT INTO users(name) VALUES ('$USERNAME')")
  else
    GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games LEFT JOIN users USING(user_id) WHERE user_id ='$USER_ID'")
    BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM games LEFT JOIN users USING(user_id) WHERE user_id='$USER_ID'")
    if [[ -z $BEST_GAME ]]
    then
      BEST_GAME=0
    fi
    echo Welcome back, $USERNAME\! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.
fi

SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

GUESS_NUMBER=0

echo "Guess the secret number between 1 and 1000:"
read GUESS

while [[ $GUESS != $SECRET_NUMBER ]]
do
  ((GUESS_NUMBER++))
  if [[ $GUESS =~ ^[0-9]+$ ]]
    then
      if [[ $GUESS < $SECRET_NUMBER ]]
        then
          echo "It's higher than that, guess again:"
          read GUESS
          
        else 
          echo "It's lower than that, guess again:"
          read GUESS
      fi  
    else
      echo -e "\nThat is not an integer, guess again:"
      read GUESS
  fi
done

((GUESS_NUMBER++))

USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USERNAME'")

INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, secret_number, number_of_guesses) VALUES ($USER_ID, $SECRET_NUMBER, $GUESS_NUMBER)")

echo You guessed it in $GUESS_NUMBER tries. The secret number was $SECRET_NUMBER. Nice job\!

