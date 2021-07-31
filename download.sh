while read one;
do
    echo $one
    wget "$one"
done < $1

