@echo off
echo Computer's Number Guessing Game

set highestNumber=1000


echo Please think of a number between 1 and %highestNumber%. (But don't tell me what it is!)

set lowest=1
set /a highest=highestNumber
set numberOfGuesses=0 

:GUESS
echo So I know it's between %lowest% and %highest%.
set /a guess=(%highest%-%lowest%)/2+%lowest%
set /p correct=My guess is %guess%. Is it (h)igher, (l)ower or (c)orrect?
set /a numberOfGuesses=%numberOfGuesses% + 1

if /I %correct%==c (
	echo Hooray! It only took %numberOfGuesses% turns to guess it.
	goto END
)

if /I %correct% ==h (
	echo Higher huh?
	set lowest=%guess%
	goto GUESS
)

if /I %correct% ==l (
	echo Lower huh?
	set highest=%guess%
	goto GUESS
)

echo I'm not sure what that means.
goto GUESS

:END
set /p finally=Thanks for playing