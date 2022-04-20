# stop ORDS before running and restart after
java -jar ords.war setup --database dev1
java -jar ords.war setup --database dev2
java -jar ords.war map-url --type base-path /dev1 dev1
java -jar ords.war map-url --type base-path /dev2 dev2
