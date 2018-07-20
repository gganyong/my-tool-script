i=0;
while [ "$i" -lt 20000 ];
do
   /unit_tests/SRTC/rtcwakeup.out -d rtc0 -m mem -s 3; 
   sleep 6
   i=`expr $i + 1`;                      
   echo "==============================="
   echo  suspend $i times                
   echo "==============================="
done
