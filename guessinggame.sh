#! usr/bin/env bash

function number_of_files {
  echo $(ls -A | wc -l)
}

function input_check {
  if [[ "$1" =~ ^[0-9]+$ ]]
  then
    echo 0
  else
    echo 1
  fi
}

total_files=$(number_of_files)

echo -n "How many files are there in the current directory?: "

while true
do
  read guess
  if [[ $(input_check $guess) -eq 1 ]]
  then
    echo -n "Invalid input. Try again: "
  else
    if [[ $guess -lt $total_files ]]
    then
      echo -n "Too low! Try again: "
    elif [[ $guess -gt $total_files ]]
    then
      echo -n "Too high! Try again: "
    else
      echo "Congratulations! You've made a correct guess!"
      exit 0
    fi
  fi
done
