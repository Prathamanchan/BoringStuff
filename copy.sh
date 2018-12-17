d="$(date +"%d-%m-%Y")"
a="$(date +"%H-%M-%S")"
if [ -d "$d" ]; then
    echo "Latest Folder exists"
    echo "Creating a new version"
    d="$d $a"
fi

mkdir "$d"
cp -r /root/kdpl31_analog "$d"

if [ $? -eq 0 ]; then
    echo OK
else
    echo FAIL
fi


