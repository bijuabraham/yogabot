#!/bin/bash
d=$(date +%d)
w=$(date +%u)
echo "Date: $d"
echo "Week: $w"
if [ $w == 5 ]
  then
    echo "Happy Friday !"
    /home/pi/signal/signal-cli/bin/signal-cli -u +14087824582 send -m "Happy Friday ! No Yoga today..." -g 
fi
if [ $w != 5 ]
  then
    u=$(sed -n "$d"p /home/pi/signal/signal-cli/bin/yogalist.txt)
    echo "Youtube: $u"
    #echo "/home/pi/signal/signal-cli/bin/signal-cli -u +14087824582 send -m "$u" -g 
    /home/pi/signal/signal-cli/bin/signal-cli -u +14087824582 send -m "$u" -g 
fi
/home/pi/signal/signal-cli/bin/signal-cli -u +14087824582 receive
