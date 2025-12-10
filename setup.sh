echo "CREATE DATABASE IF NOT EXISTS db;" | mysql -uroot db
mysql --local-infile=1 -uroot db < /var/lib/data/sql/load.sql