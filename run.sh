#! /bin/sh 
PROJECT=webSimplePOS
GIT_USER=catyku
git clone git@github.com:${GIT_USER}/${PROJECT}.git
cd ${PROJECT} 
mvn -Dfile.encoding=UTF-8 -Pproduct clean install
cp  -rf ./target/${PROJECT}-*.war  /root/target/${PROJECT}.war
