input=$1
cd /root/app
for f in $(dpkg -L "$input")
do
    if [ -d "$f" ]
    then
        mkdir -p "./$f"
    elif [ -f "$f" ]
    then
        cp "$f" "./$f"
    fi
done

