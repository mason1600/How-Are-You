#!/bin/bash
# The script May.sh was created by mason1600 on GitHub released with the license GNU General Public License v3.0
#set -e tells the shell to close on error and not finish executing code very useful 
set -e

#three echo commands to tell the user what to do
echo "hello i will collect some data paramaters"
echo "lets begin by typing begin"
echo "if you would like to see a pretty artistic flower then type flower"

#this is a function called begin the code inside only executes when begin function is called
begin(){
		#echo and read commands to ask the user things and collect there data as variables
		echo "how are you on a scale of one to ten please type the letters not numbers"
		echo "one being low or little and ten being alot or very or high"
		read NUM_VAR_FEEL
		
		echo "how is your mouth or tooth pain"
		read NUM_VAR_TOOTH

		echo "how hungry are you"
		read NUM_VAR_HUNGRY

		echo "how much food have you even consumed yet today on a scale of one-ten?if you have eaten nothing this variable is clearly a one"
		read NUM_VAR_FOOD

		echo "how many hours of sleep did you get last night"
		read NUM_VAR_SLEEP

		echo "what about energy levels ,how active do you feel?"
		read NUM_VAR_ENERGY

		echo "how about your anxiety level right now"
		read NUM_VAR_ANXIETY

		echo "and finally last but not least how bad do you wanna smoke the dank right now?"
		read NUM_VAR_DANK

#after asking and collecting the results are echoed back as a report through the variables created
echo "awsome lets read back the report"
echo "on a scale of 1-10 you are feeling a :" $NUM_VAR_FEEL
echo "tooth pain is a :" $NUM_VAR_TOOTH
echo "hunger level is a :" $NUM_VAR_HUNGRY
echo "the amount of food consumed today is a :" $NUM_VAR_FOOD
echo "the amount of hours you slept last night is about :" $NUM_VAR_SLEEP
echo "your energy level is a solid :" $NUM_VAR_ENERGY
echo "your anxiety level is a :" $NUM_VAR_ANXIETY
echo "your need to smoke the dank is about a :" $NUM_VAR_DANK
echo "enter to move on"
#a read command is used at the end to keep the program from continuing till enter is pressed
read poo3
	}
#this is another function containing multiple other functions
flower(){
    
#another function inside last function
flower1(){



#the cat << EOF command copys all text between the two EOF statements
	cat << EOF 
---------------------------------
........m......m.......m........
.......mm.....mmm.....mmm.......
.....mmmmm.mmmmmmm...mmmmm......
......mmm....mmmm....mmmm.......
.......mmmmmmmmmmmmmmmmmm.......
........mmmmmmmmmmmmmmmm........
............mmmmmmmm............
..............mmm...............
...............m................
...............m................
...............m................
...............m................
...............m................
---------------------------------
i picked this one fresh just for you
EOF
#echo and read to hold user till ready as before
echo "enter to close"
read poo
#an exit code to close program and not continue code
exit

}
#another function inside 
flower2(){
#cat command being used to show pictures
	cat << EOF 
-----------------------------------
...............xxx...................
.....x.x.....xx...xx.....xx...........
....x.....x.x.......xx.x.....x
....x.......x........x........x......
......x.......x.....x.........x.....
.........x......oooo........x......
............x.ooooooo....x.........
...........x..ooooooo.x............
.........x.....ooooo....x..........
.......x.........x........x.........
......x.........x..x........x......
.......x.......x....x.......x......
.........x.x..x........xx..x.........
...........
EOF
#echo and read to hold user again
echo "enter to close"
read poo2
#exit command to close and not continue
exit
}
#since i want to call a random function in this main function a random number generator is used between 1 and 2 after function name to call randomly
#the number you want plus 1 will let you start at 1 and not zero giving you 1 and 2 not 0 and 1
flower$(( RANDOM % 2 + 1 ))
}
#before a function is called  we must first make sure it is a valid function by gathering it as a variable
read BEGIN
#then using a if then else statement to check if its even a function
if [[ $(type -t $BEGIN) == function ]]; then
    # Function exists, call it
    $BEGIN
else
    # Function does not exist, handle the situation (e.g., print an error)
    echo "Error: $BEGIN does not exist." "do to user error the app will close with press of enter"
    #prints and error and holds user for them to read then closes with press of enter
    read error
#another exit code
    exit
#ends the if statement by typing if backwards or fi
fi


#this will take the report from begin function and append it to a text document for saving only if begin function is called
#since we handled all the functions or lack there of this is the last thing to happen if begin is called
echo "on a scale of 1-10 you are feeling a :" $NUM_VAR_FEEL >> maysreport.txt
echo "tooth pain is a :" $NUM_VAR_TOOTH >> maysreport.txt
echo "hunger level is a :" $NUM_VAR_HUNGRY >> maysreport.txt
echo "the amount of food consumed today is a :" $NUM_VAR_FOOD >> maysreport.txt
echo "the amount of hours you slept last night is about :" $NUM_VAR_SLEEP >> maysreport.txt
echo "your energy level is a solid :" $NUM_VAR_ENERGY >> maysreport.txt
echo "your anxiety level is a :" $NUM_VAR_ANXIETY >> maysreport.txt
echo "your need to smoke the dank is about a :" $NUM_VAR_DANK >> maysreport.txt
#and it dates it at the end with current date and time using date command and >> to text file
date >> maysreport.txt

#last but not least another exit code
exit
