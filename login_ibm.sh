echo 'Which device?'
read device
add1="root@timecrystal"
add2=".sl.cloud9.ibm.com"
if [[ $device == 0 ]]; then
    ssh root@timecrystal.sl.cloud9.ibm.com
else
    full_name="$add1$device$add2"
    ssh $full_name
fi

