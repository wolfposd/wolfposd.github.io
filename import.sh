#!/bin/bash
#dpkg-scanpackages2 ./ /dev/null |gzip > Packages.gz

dpkg-scanpackages -m . /dev/null >Packages
rm Packages.bz2
bzip2 Packages



echo "<html><body>HELLO!<br>Please add this address in Cydia:<br>wolfposd.github.io<br><br><br><br><br>Last Update " > index.html


DATE=`date +%Y-%m-%d_%H:%M:%S`
echo $DATE >> index.html
echo "</body></html>" >> index.html



git add *
git ls-files --deleted -z | xargs -0 git rm
git commit -m"udpate"
git push