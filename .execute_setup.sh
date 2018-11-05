count=42
while true
do
    echo "2018-W$count;$RANDOM;US;classic_box" >> box_counts/boxes_delivered.csv
    git add box_counts/boxes_delivered.csv
    git commit -m "Updated csv from bot"
    git pull || exit 1
    git push || exit 1
    let "count++"
    sleep 6
done