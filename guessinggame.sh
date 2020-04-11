function request {
	echo "How many files are in the current directory? Guess the number, please!"
read resp
let n=$resp
}
request

rn=$(ls -l | wc -l)                     # real number of files not including dot files

while [[ n -ne rn ]] 
do
	if ! [[ $resp =~ ^[0-9]+$ ]]
	then
		echo "Please enter a valid number!!!"
	elif [[ n -lt rn ]]
	then 
		echo "It's too low, try a greather number"
	elif [[ n -gt rn ]]
	then 
		echo "It's too big, try a smaller number"
	else
		echo ""
	fi 
	request	
done 

if [[ n -eq rn ]] 
then 
	echo "That's it, $rn. Congratulations!"
fi
