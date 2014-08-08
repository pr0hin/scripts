#!bin/bash -x
echo  "Enter CS ID:"
read ID
echo  "Enter a file/folder you wish to copy:"
read ARG
echo  "Enter the destination folder. This will also be used as the first argument to handin, usually the course number (Will be created in the home directory if it doesn't exist)" 
read DEST
echo  "Enter assignment/lab folder. This will be the second argument to handin, usually the assignment/lab folder"
read ASSIGN


if [ "${ARG:0:1}" == "~" ]; then
ARG=${HOME}${ARG:1}
fi

if [ -d "$ARG" ]; then
    scp -r "$ARG" "$ID"@remote.ugrad.cs.ubc.ca:~/$DEST 
else 
    scp "$ARG" "$ID"@remote.ugrad.cs.ubc.ca:~/$DEST  
fi 

ssh  -t "$ID"@remote.ugrad.cs.ubc.ca  "cd \$HOME/$DEST; /cs/local/bin/handin '$DEST' '$ASSIGN'"

exit

   
