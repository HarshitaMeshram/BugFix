EMAIL_ID="harshitameshram07@gmail.com"
DISK_USAGE=`df -h | grep -v Filesystem | awk '{print $5}'| tr -d % </dev/null`
THRESHOLD="75"

if [[ $DISK_USAGE -gt $THRESHOLD ]]
then 
    echo -e " DISK_USAGE is $THRESHOLD "
    mail -s "Alert: your Disk usage is $DISK_USAGE % " "$EMAIL_ID"
else 
    echo -e " Disk is fine"
fi
