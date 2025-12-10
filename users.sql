CREATE USER 'AlexSmith'@'localhost' IDENTIFIED BY 'asmith2013flikka!';

-- grant admin privileges to AlexSmith
GRANT ALL PRIVILEGES ON *.* TO 'AlexSmith'@'localhost' WITH GRANT OPTION;


CREATE USER 'JamieLee'@'localhost' IDENTIFIED BY 'jlee2021kvinna!';
-- grant read-only privileges to JamieLee
GRANT SELECT ON *.* TO 'JamieLee'@'localhost';

FLUSH PRIVILEGES;