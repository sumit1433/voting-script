#!/bin/bash

echo "**WELCOME VOTER**"
sleep 2

rm -f /root/new_voterlist_name

for user in `cat voterlist.txt`
do

      if grep $user /etc/passwd &>/dev/null

then

	echo "**$user user exist not adding**" >/dev/null
else

   useradd $user 
   echo $user >>new_voterlist_name

echo "x" | passwd --stdin $user &>/dev/null

echo "*******user added successful:$user" &>/dev/null  
sleep 2

      fi
done

echo "Please enter your name"

read name

if grep -wq "$name" votebank.txt;
then 
	echo "you have already voted.Duplicate voting is not allowed."
	exit 1
fi

echo +++++++++++++++++++++++++++++++++++++++++++++++++++
echo "**Verifying your name from the list please wait..."
echo +++++++++++++++++++++++++++++++++++++++++++++++++++
sleep 4

if grep -w $name /etc/passwd &>/dev/null

then 
echo "your name is in the list"
echo ++++++++++++++++++++++++++
echo "you can vote"
echo ++++++++++++++

else
echo "Sorry your name is not in the list,you cannot vote."
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++
exit 1

fi

echo "Please enter your choice [ A for BJP ] [ B for CONGRESS ] [ C for AAP ]"

read choice 

case $choice in

	A|a) echo "Thank you for choosing BJP!";;
	B|b) echo "Thank you for choosing CONGRESS!";;
	C|c) echo "Thank you for choosing AAP!";;
	*) echo "invalid choice,please enter { A , B , C }";;

esac

echo "$name voted to (choice:$choice)" &>>votebank.txt

echo "Your vote has been recorded."

