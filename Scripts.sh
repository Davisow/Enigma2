#!/bin/sh
cp /home/odroid/.wg++/categoria/guide.xml.gz /home/odroid/.wg++enigma2/guide.xml.gz
gzip -f --keep /home/odroid/.wg++enigma2/Canales.enigma2.xml
cd /home/odroid/.wg++enigma2
git init
git config --global user.email "davisow2004@yahoo.es"
git config --global user.name "Davisow"
git remote add origin git@github.com:Davisow/Enigma2.git
git add *
git commit -a -m "message"
git commit -m "First commit"
git commit -m "First commit"
git push --set-upstream Enigma2 master
#git push Enigma2
git checkout --orphan TEMP_BRANCH
git add -A
git commit -am "Initial commit"
git branch -D master
git branch -m master
git push -f origin master
