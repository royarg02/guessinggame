#! usr/bin/env bash

function number_of_files {
  echo $(ls -l | grep -P "^-.*" | wc -l)
}

total_files=$(number_of_files)

echo -n "How many files are there in the current directory?: "

while [[ $guess -ne $total_files ]]
do
  read guess
  if [[ $guess -lt $total_files ]]
  then
    echo -n "Too low! Try again: "
  elif [[ $guess -gt $total_files ]]
  then
    echo -n "Too high! Try again: "
  else
    echo "Congratulations! You've made a correct guess!"
  fi
done
