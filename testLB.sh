hosts="10.0.2.5 10.0.2.6 10.0.2.7 10.0.2.8"

nHosts=`echo $hosts | wc -w`

i=1

clear

while [ 1 ]; do
	if [ $i -eq 4 ]; then
		i=1
	fi

h=`echo $hosts | cut -f$i -d" "`
echo "Web Server: $h"
curl --connect-timeout 3 http://$h:5001
sleep 3
clear
((i++))
done
