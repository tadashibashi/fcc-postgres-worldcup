#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# Get the team_id from name.
function GetTeamID {
	echo "$($PSQL "SELECT team_id FROM teams WHERE name='$*'")"
}

# Inserts team to teams if it does not exist in table, and returns the resulting team_id
function InsertTeam {
	local TEAM="$*"
	local TEAM_ID=$(GetTeamID "$TEAM")
	
	if [[ -z $TEAM_ID ]]
	then
		local RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$TEAM')")
		if [[ $RESULT == "INSERT 0 1" ]]
		then
			TEAM_ID=$(GetTeamID "$TEAM")
		else
			return 1
		fi	
	fi

	echo $TEAM_ID
}


# Reset the database
$PSQL "TRUNCATE teams, games"

# Populate database from games.csv
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINSCORE OPSCORE
do
	# Skip title row
	if [[ $YEAR == year ]]
	then
		continue
	fi

	WINNER_ID=$(InsertTeam "$WINNER")
	OPPONENT_ID=$(InsertTeam "$OPPONENT")
	
	RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINSCORE, $OPSCORE)")
	if [[ $RESULT == "INSERT 0 1" ]]
	then
		echo "Inserted game $YEAR $ROUND: $WINNER v. $OPPONENT: $WINSCORE - $OPSCORE" 
	fi
done


