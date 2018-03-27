docker run --rm -d -p 27017:27017 --name mongoserver mongo:latest
docker build -t nodejsimage .
docker run --rm -itd -p 8080:8080 -v c:\projects\private\itcrowd\itcrowd-server\:/nodejs/ --link mongoserver --name nodejs nodejsimage  /bin/bash