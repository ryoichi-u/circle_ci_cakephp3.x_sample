-- mysql -u root
create database ltop;
create database ltop_test;

CREATE USER ltop;
GRANT USAGE ON *.* TO 'ltop'@'%';
GRANT ALL PRIVILEGES ON `auth`.* TO 'ltop'@'%';
GRANT ALL PRIVILEGES ON `ltop`.* TO 'ltop'@'%';
GRANT ALL PRIVILEGES ON `ltop_test`.* TO 'ltop'@'%';

CREATE USER ltop_select;
GRANT USAGE ON *.* TO 'ltop_select'@'%';
GRANT SELECT ON `auth`.* TO 'ltop_select'@'%';
GRANT SELECT ON `ltop`.* TO 'ltop_select'@'%';
GRANT SELECT ON `ltop_test`.* TO 'ltop_select'@'%';
