while read one;
do
    echo ${one##*/}
    tar zxvf ${one##*/}
done < $1

