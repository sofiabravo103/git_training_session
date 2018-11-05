rm -rf ~/bot_update || exit 1
mkdir ~/bot_update || exit 1
cd ~/bot_update || exit 1
git clone git@github.com:sofiabravo103/git_training_session.git || exit 1
cd git_training_session || exit 1
git checkout exercise_5 || exit 1


count=42
while true
do

    echo "2018-W$count;$RANDOM;US;classic_box" >> box_counts/boxes_delivered.csv || exit 1
    git add box_counts/boxes_delivered.csv || exit 1
    git commit -m "Updated csv from bot" || exit 1
    git pull || exit 1
    git push || exit 1
    let "count++" || exit 1
    sleep 6
done