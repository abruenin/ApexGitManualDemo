# Adds tnsnames entries
# set DBUSER & DBPASS variables for connection test

cat add-tnsnames.ora >> $TNS_ADMIN/tnsnames.ora

sql $DBUSER/$DBPASS@dev1 <<EOF
sho pdbs
quit
EOF

sql $DBUSER/$DBPASS@dev2 <<EOF
sho pdbs
quit
EOF
