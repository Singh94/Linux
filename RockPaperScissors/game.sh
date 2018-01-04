#!/bin/bash

clear
printf "Rock, Paper Scissors (Best of 3)\n"
printf "1: Play Against Computer \n"
printf "2: Play Against Player 2 \n"
echo "Enter Option: "
read option

until [ $option == "1" ] || [ $option == "2" ]; do
	clear
	echo "Invalid Option"
	printf "1: Play Against Computer \n"
	printf "2: Play Against Player 2 \n"
	echo "Enter Option: "
	read option
done

#COMPUTER
if [ $option == "1" ]; then
	cgw="0"
	pgw="0"
	cmove=0
	clear
	until [ $cgw == 3 ] || [ $pgw == 3 ]; do
		printf "1: Rock \n"
		printf "2: Paper \n"
		printf "3: Scissors \n"
		echo "Enter your move: "
		read pmove
		until [ $pmove == "1" ] || [ $pmove == "2" ] || [ $pmove == "3" ]; do
			clear
			printf "Invalid Option \n"
			printf "1: Rock \n"
			printf "2: Paper \n"
			printf "3: Scissors \n"
			echo "Enter your move: "
			read pmove
		done
		
		cmove=$((1 + $RANDOM % 3))
		clear

		if [ $pmove == "1" ] && [ $cmove == 1 ]; then
			printf "ROCK vs ROCK \n"
			printf "DRAW \n"
			printf "Player: $pgw \t Computer: $cgw \n\n"
		fi

		if [ $pmove == "2" ] && [ $cmove == 2 ]; then
			printf "PAPER vs PAPER \n"
			printf "DRAW \n"
			printf "Player: $pgw \t Computer: $cgw \n\n"
		fi

		if [ $pmove == "3" ] && [ $cmove == 3 ]; then
			printf "SCISSORS vs SCISSORS \n"
			printf "DRAW \n"
			printf "Player: $pgw \t Computer: $cgw \n\n"
		fi

		##############################################

		if [ $pmove == "1" ] && [ $cmove == 3 ]; then
			printf "ROCK vs SCISSORS \n"
			printf "Player Wins \n"
			pgw=$(($pgw+1))
			printf "Player: $pgw \t Computer: $cgw \n\n"
		fi

		if [ $pmove == "2" ] && [ $cmove == 1 ]; then
			printf "PAPER vs ROCK \n"
			printf "Player Wins \n"
			pgw=$(($pgw+1))
			printf "Player: $pgw \t Computer: $cgw \n\n"
		fi

		if [ $pmove == "3" ] && [ $cmove == 2 ]; then
			printf "SCISSORS vs PAPER \n"
			printf "Player Wins \n"
			pgw=$(($pgw+1))
			printf "Player: $pgw \t Computer: $cgw \n\n"
		fi

		##############################################

		if [ $pmove == "1" ] && [ $cmove == 2 ]; then
			printf "ROCK vs PAPER \n"
			printf "COMPUTER Wins \n"
			cgw=$(($cgw+1))
			printf "Player: $pgw \t Computer: $cgw \n\n"
		fi

		if [ $pmove == "2" ] && [ $cmove == 3 ]; then
			printf "PAPER vs SCISSORS \n"
			printf "COMPUTER Wins \n"
			printf "Player: $pgw \t Computer: $cgw \n\n"
		fi

		if [ $pmove == "3" ] && [ $cmove == 1 ]; then
			printf "SCISSORS vs ROCK \n"
			printf "COMPUTER Wins \n"
			cgw=$(($cgw+1))
			printf "Player: $pgw \t Computer: $cgw \n\n"
		fi

		printf "Press Enter For Next Round!"
		read nextRound
		clear
	done

	if [ $pgw == 3 ]; then
		printf "PLAYER WINS GAME! \n\n"
		exit
	fi

	if [ $cgw == 3 ]; then
		printf "COMPUTER WINS GAME! \n\n"
		exit
	fi
fi

##############################################

#2PLAYERS
if [ $option == '2' ]; then
	p1gw=0
	p2gw=0
	clear
	until [ $p1gw == 3 ] || [ $p2gw == 3 ]; do
		printf "1: Rock \n"
		printf "2: Paper \n"
		printf "3: Scissors \n"
		echo "Enter your move Player 1: "
		read p1move
		until [ $p1move == "1" ] || [ $p1move == "2" ] || [ $p1move == "3" ]; do
			clear
			printf "Invalid Option \n"
			printf "1: Rock \n"
			printf "2: Paper \n"
			printf "3: Scissors \n"
			echo "Enter your move Player 1: "
			read p1move
		done
		clear
		
		printf "1: Rock \n"
		printf "2: Paper \n"
		printf "3: Scissors \n"
		echo "Enter your move Player 2: "
		read p2move
		until [ $p2move == "1" ] || [ $p2move == "2" ] || [ $p2move == "3" ]; do
			clear
			printf "Invalid Option \n"
			printf "1: Rock \n"
			printf "2: Paper \n"
			printf "3: Scissors \n"
			echo "Enter your move Player 2: "
			read p2move
		done
		clear

		if [ $p1move == "1" ] && [ $p2move == "1" ]; then
			printf "ROCK vs ROCK \n"
			printf "DRAW \n"
			printf "Player 1: $p1gw \t Player 2: $p2gw \n\n"
		fi

		if [ $p1move == "2" ] && [ $p2move == "2" ]; then
			printf "PAPER vs PAPER \n"
			printf "DRAW \n"
			printf "Player 1: $p1gw \t Player 2: $p2gw \n\n"
		fi

		if [ $p1move == "3" ] && [ $p2move == "3" ]; then
			printf "SCISSORS vs SCISSORS \n"
			printf "DRAW \n"
			printf "Player 1: $p1gw \t Player 2: $p2gw \n\n"
		fi

		##############################################

		if [ $p1move == "1" ] && [ $p2move == "3" ]; then
			printf "ROCK vs SCISSORS \n"
			printf "PLAYER 1 Wins \n"
			p1gw=$(($p1gw+1))
			printf "Player 1: $p1gw \t Player 2: $p2gw \n\n"
		fi

		if [ $p1move == "2" ] && [ $p2move == "1" ]; then
			printf "PAPER vs ROCK \n"
			printf "PLAYER 1 Wins \n"
			p1gw=$(($p1gw+1))
			printf "Player 1: $p1gw \t Player 2: $p2gw \n\n"
		fi

		if [ $p1move == "3" ] && [ $p2move == "2" ]; then
			printf "SCISSORS vs PAPER \n"
			printf "PLAYER 1 Wins \n"
			p1gw=$(($p1gw+1))
			printf "Player 1: $p1gw \t Player 2: $p2gw \n\n"
		fi

		##############################################

		if [ $p1move == "1" ] && [ $p2move == "2" ]; then
			printf "ROCK vs PAPER \n"
			printf "PLAYER 2 Wins \n"
			p2gw=$(($p2gw+1))
			printf "Player 1: $p1gw \t Player 2: $p2gw \n\n"
		fi

		if [ $p1move == "2" ] && [ $p2move == "3" ]; then
			printf "PAPER vs SCISSORS \n"
			printf "PLAYER 2 Wins \n"
			p2gw=$(($p2gw+1))
			printf "Player 1: $p1gw \t Player 2: $p2gw \n\n"
		fi

		if [ $p1move == "3" ] && [ $p2move == "1" ]; then
			printf "SCISSORS vs ROCK \n"
			printf "PLAYER 2 Wins \n"
			p2gw=$(($p2gw+1))
			printf "Player 1: $p1gw \t Player 2: $p2gw \n\n"
		fi

		printf "Press Enter For Next Round!"
		read nextRound
		clear
	done

	if [ $p1gw == 3 ]; then
		printf "PLAYER 1 WINS GAME! \n\n"
		exit
	fi

	if [ $p2gw == 3 ]; then
		printf "PLAYER 2 WINS GAME! \n\n"
		exit
	fi
fi

##############################################
