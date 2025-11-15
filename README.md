# voting-script
A Linux shell script that allows verified users to vote and stores their selection.

Script: User Voting System (Bash Script)

This script allows only valid users (whose names are already listed in a file) to vote for a candidate.
It checks the user’s name, lets them choose a party, and saves their vote.Remember one voter can vote only one time, if he tries to give vote twice the system will detect and will give you a warning.



---

# What the script does

1. Reads the list of allowed voters

The script uses a file (example: voterlist.txt).
Only names inside this file can vote.

2. Asks the user to enter their name

If the name exists in the list → they can vote.
If not → the script stops and does not continue.

3. Shows voting options

Example:

A → BJP

B → CONGRESS

C → AAP


The user must enter A, B, or C.

4. Stores the vote

After choosing a valid option, the script saves:

Name - Party

inside a file (example: votebank.txt).


---

Q. Why this script is useful

Prevents non-listed people from voting

Makes voting simple

Stores all votes safely

The system can detect a voter thief who tries to vote twice.

Easy to edit and reuse



---

# Files Used

File Name	Purpose

 voterlist.txt	=>Stores valid voter names ( you can edit this file according to your needs)

votebank.txt	=>Stores the votes

vote.sh =>The script file

new_voterlist_name 
=> Use for Append the new voter ( "every time you enter a new name in voterlist.txt the name will Append in this file after you run the script" ) 


---

Q.How to run the script

#bash vote.sh 
