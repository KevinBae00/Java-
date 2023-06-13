create user 'minky'@'%' identified by 'minky';
grant all privileges on *.* to 'minky'@'%';
create database mydata;
show databases ;

# drop database if exists mydata;