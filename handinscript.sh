#!bin/bash 

while true; do
    echo  "Enter CS ID:"
    read ID
    case $ID in
        [a-z][0-9][a-z][0-9] ) break;;
    *) echo "Invalid CS ID";;
esac
done
while true; do
    echo  "Enter the path of file/folder you wish to copy:"
    read ARG
    exitval=0
    goback="I entered the wrong file/folder. Go back!"
    echo "Please choose one of the options below"
    eval ARG=\*$ARG
    declare -a lodir
    lodir=( $(find ~ -path "${ARG}") )
    PS3='Type in a number: '
    select ff in "${lodir[@]}" "$goback"; do
        num=${#lodir[@]}
        min=1
        if (($REPLY>=$min)) && (($REPLY<=$num)); then
            ARG=$ff  
            ARG2=$ff
            break
        fi
            case $ff in 
                "$goback" ) exitval=1 
                    break;;
                * ) echo "Invalid selection" ;;
            esac
        done
        if (( $exitval == 0 )); then
            break
        fi
    done
    
    echo  "Enter the destination folder. This will also be used as the first argument to handin, usually the course number (Will be created in the home directory if it doesn't exist)" 
    read DEST
    echo  "Enter assignment/lab folder. This will be the second argument to handin, usually the assignment/lab folder"
    read ASSIGN

    if [ -d "$ARG" ]; then
        scp -r "$ARG" "$ID"@remote.ugrad.cs.ubc.ca:~/$DEST 
    else 
        scp "$ARG" "$ID"@remote.ugrad.cs.ubc.ca:~/$DEST  
    fi 

    ssh  -t "$ID"@remote.ugrad.cs.ubc.ca  "cd \$HOME/$DEST; /cs/local/bin/handin '$DEST' '$ASSIGN'"

    exit 0


