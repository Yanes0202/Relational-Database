#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only -c"

GET_DATA() {
  if [[ $1 ]]
  then
    ATOMIC_NUMBER=$(echo $1 | sed 's/ |/"/')
    ATOMIC_SYMBOL=$($PSQL "SELECT symbol FROM elements WHERE atomic_number = $ATOMIC_NUMBER")
    ATOMIC_SYMBOL=$(echo $ATOMIC_SYMBOL | sed 's/ |/"/')
    ATOMIC_NAME=$($PSQL "SELECT name FROM elements WHERE atomic_number = $ATOMIC_NUMBER")
    ATOMIC_NAME=$(echo $ATOMIC_NAME | sed 's/ |/"/')

    ATOMIC_MASS=$($PSQL "SELECT atomic_mass FROM elements INNER JOIN properties USING(atomic_number) WHERE atomic_number = $ATOMIC_NUMBER")
    ATOMIC_MASS=$(echo $ATOMIC_MASS | sed 's/ |/"/')
    MELTING_POINT=$($PSQL "SELECT melting_point_celsius FROM elements INNER JOIN properties USING(atomic_number) WHERE atomic_number = $ATOMIC_NUMBER")
    MELTING_POINT=$(echo $MELTING_POINT | sed 's/ |/"/')
    BOILING_POINT=$($PSQL "SELECT boiling_point_celsius FROM elements INNER JOIN properties USING(atomic_number) WHERE atomic_number = $ATOMIC_NUMBER")
    BOILING_POINT=$(echo $BOILING_POINT | sed 's/ |/"/')
    TYPE_ID=$($PSQL "SELECT type_id FROM elements INNER JOIN properties USING(atomic_number) WHERE atomic_number = $ATOMIC_NUMBER")

    TYPE=$($PSQL "SELECT DISTINCT type FROM properties INNER JOIN types USING(type_id) WHERE type_id = $TYPE_ID")
    TYPE=$(echo $TYPE | sed 's/ |/"/')
    echo "The element with atomic number $ATOMIC_NUMBER is $ATOMIC_NAME ($ATOMIC_SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $ATOMIC_NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
  fi
}

if [[ $1 && $2 && $3 ]]
then
  if [[ $1 =~ ^[0-9]+$ ]]
  then
    ARG1=$($PSQL "SELECT atomic_number FROM elements WHERE atomic_number = $1")
  else
    ARG1=$($PSQL "SELECT atomic_number FROM elements WHERE symbol = '$1' OR name = '$1'")
  fi

  if [[ $2 =~ ^[0-9]+$ ]]
  then
    ARG2=$($PSQL "SELECT atomic_number FROM elements WHERE atomic_number = $2")
  else
    ARG2=$($PSQL "SELECT atomic_number FROM elements WHERE symbol = '$2' OR name = '$2'")
  fi

  if [[ $3 =~ ^[0-9]+$ ]]
  then
    ARG3=$($PSQL "SELECT atomic_number FROM elements WHERE atomic_number = $3")
  else
    ARG3=$($PSQL "SELECT atomic_number FROM elements WHERE symbol = '$3' OR name = '$3'")
  fi

  if [[ $ARG1 == $ARG2 && $ARG1 == $ARG3 && $ARG2 == $ARG3 ]]
  then
    GET_DATA $ARG1
  else
    echo "I could not find that element in the database."
  fi

elif [[ $1 && $2 ]]
then
  if [[ $1 =~ ^[0-9]+$ ]]
  then
    ARG1=$($PSQL "SELECT atomic_number FROM elements WHERE atomic_number = $1")
  else
    ARG1=$($PSQL "SELECT atomic_number FROM elements WHERE symbol = '$1' OR name = '$1'")
  fi

  if [[ $2 =~ ^[0-9]+$ ]]
  then
    ARG2=$($PSQL "SELECT atomic_number FROM elements WHERE atomic_number = $2")
  else
    ARG2=$($PSQL "SELECT atomic_number FROM elements WHERE symbol = '$2' OR name = '$2'")
  fi

  if [[ $ARG1 == $ARG2 ]]
  then
    GET_DATA $ARG1
  else
    echo "I could not find that element in the database."
  fi
elif [[ $1 ]]
then
  if [[ $1 =~ ^[0-9]+$ ]]
  then
    ATOMIC_NUMBER=$($PSQL "SELECT atomic_number FROM elements WHERE atomic_number = $1")
  else
    ATOMIC_NUMBER=$($PSQL "SELECT atomic_number FROM elements WHERE symbol = '$1' OR name = '$1'")
  fi
  
  if [[ -z $ATOMIC_NUMBER ]]
  then
    echo "I could not find that element in the database."
  else
    GET_DATA "$ATOMIC_NUMBER"
  fi
else 
  echo "Please provide an element as an argument."
fi

