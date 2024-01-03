
read -p "Enter the Username :" USERNAME
grep $USERNAME /etc/passwd > /dev/null
EXIT=$? 
if [[ $EXIT -le 0 ]]
then 
    echo -e "User $USERNAME already exist"
    echo -e "$USERNAME has been removed"
else
    echo -e "User $USERNAME doess not exist" 
    useradd $USERNAME
    echo -e "User $USERNAME adding successfully"
    read -p "Set password :-" PASSWORD
    echo -e "$USERNAME:$PASSWORD" | chpasswd
    echo -e "Password Set Successfully"
fi
