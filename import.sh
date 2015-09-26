#!/bin/bash
#dpkg-scanpackages2 ./ /dev/null |gzip > Packages.gz

dpkg-scanpackages -m . /dev/null >Packages
rm Packages.bz2
bzip2 Packages