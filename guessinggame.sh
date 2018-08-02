function n_files {
	ls -l | wc -l
}

echo -n "How many are there do you think in this directory?:"

read guess

while [[ $guess -ne $(n_files) ]]
do

	if [[ $guess -gt $(n_files) ]]
	then
		echo -n "Too much! Guess again: "
	elif [[ $guess -lt $(n_files) ]]
	then
		echo -n "Too few! Guess again: "
	fi
	read guess

done

echo "That is correct! Congratulations!"

