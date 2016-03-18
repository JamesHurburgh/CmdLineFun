@echo off
echo William's Number Guessing Game

echo No pictures yet
set highestNumber=100

set /a number=(%RANDOM%*%highestNumber%/32768)+1
set numberOfGuesses=0 

echo I've thought of a number between 1 and %highestNumber%.

:GUESS
set /p guess=Guess what it is:
set /a numberOfGuesses=%numberOfGuesses% + 1
if %guess%==%number% (
	echo You are correct! It took you %numberOfGuesses% turns to guess it.
) else (
	if %guess% GTR %number% (
		echo Lower.
	) else (
		echo Higher.
	)
	GOTO GUESS
)
set /p finally=Thanks for playing