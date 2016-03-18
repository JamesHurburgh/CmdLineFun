@echo off
echo The Maths Game

set highestNumber=100
set plays=1

set /p totalPlays=How many times do you want to play?

:PLAY

set /a number1=(%RANDOM%*%highestNumber%/32768)+1
set /a number2=(%RANDOM%*%highestNumber%/32768)+1
set /a answer=%number1%+%number2%

:ANSWER
set /p guess=Q%plays%: What is %number1% + %number2%:

if %guess%==%answer% (
	echo You are correct!
	set /a plays=plays + 1
	if %plays%==%totalPlays% (
		GOTO END
	) else (
		GOTO PLAY
	)	
) else (
	echo Incorrect!
	GOTO ANSWER
)
:END
set /p finally=Thanks for playing