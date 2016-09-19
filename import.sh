#!/bin/bash
#dpkg-scanpackages2 ./ /dev/null |gzip > Packages.gz

dpkg-scanpackages -m . /dev/null >Packages
rm Packages.bz2
bzip2 Packages


# updates the date:
#echo "<html><body>HELLO!<br>Please add this address in Cydia:<br>http://wolfposd.github.io<br><br>Or <a href='cydia://url/https://cydia.saurik.com/api/share#?source=http://wolfposd.github.io'>Click Here</a><br><br><br>Last Update " > index.html
#DATE=`date +%Y-%m-%d_%H:%M:%S`
#echo $DATE >> index.html
#echo "</body></html>" >> index.html


git add *
git ls-files --deleted -z | xargs -0 git rm
git commit -m"udpate $DATE"
git push



echo $DATE
