#!/bin/bash
#ByB2G
RED=`echo -e '\033[31m'`
GREEN=`echo -e '\033[0;32m'`
bvar=1
var=`sudo dpkg-query -l | grep lynx | wc -l `
if [ $var -le $bvar ]
then
sudo apt-get install lynx -y
else
echo "$GREEN By B2G"
echo "Check Open Bug Bounty Sites "
echo "https://www.openbugbounty.org"
read -p "Enter Website to Found: " www
curl --silent --output check1.html https://www.openbugbounty.org/search/\?search\=$www >/dev/null
lynx -dump check1.html > check1.txt
svar=`grep $www check1.txt`
echo "$GREEN Domains With Reports"
echo "$RED $svar"
fi

