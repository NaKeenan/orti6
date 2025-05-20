echo "Which devices?"
read devices
echo "Which File?"
read file
echo "Where?"
read where

for device in ${devices[@]};
do
    if [[ $device == 0 ]]; then
        dir="root@timecrystal.sl.cloud9.ibm.com:/root/"
        subdir="$dir$where"
    else
        add1="root@timecrystal"
        add2=".sl.cloud9.ibm.com:/root/"
        dir=$add1$device$add2
        subdir="$dir$where"
    fi
    scp -r "$file" "$subdir"
done