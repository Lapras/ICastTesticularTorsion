~/bin/bash
#basic flag persistence script that will maintain itself in the background

echo "establishing flag persistence"
FLAG="abcdefg"
NUM = 0

WHILE[]
Do
    sleep 2
    cat $FLAG > flag.txt
    cp flagPersistence${NUM}.sh flagPersistence${NUM+1}.sh
    nohup ./flagPersistence${num}.sh &
    if [ $NUM == 50]; then
        NUM = 0
    else
        NUM = $NUM+1
    fi

done
