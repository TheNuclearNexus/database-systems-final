mysql -uroot CREATE DATABASE db;
mysql --local-infile=1 -uroot db < /var/lib/data/sql/schema.sql