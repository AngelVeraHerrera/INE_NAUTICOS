NáuticaBarata
===========

##Summary
 
This repository contains the sources of NáuticaBarata, the online shop with the best selection of nautical equipment.

##Requisites
* Ruby 2.1.2
* Rails 4.1.1
* MySQL 5.5.

##Installation
To run this eshop follow this steps:

1.- Create the following databases: 
```
 create database eshop06_development;
 create database eshop06_test;
```

2.- Create the user 'eshop06' and grant all permits on the databases you just created using the following commands:
```
grant all on eshop06_development.* to
'eshop06'@'localhost' identified by 'cisco';
grant all on eshop06_test.* to
'eshop06'@'localhost' identified by 'cisco';
```
3.- Install all the gems listed on the gemfile by running:
```
bundle install
```
4.- Set up your server by running `rails server` and paste the following adress en your broswer `http://localhost:3000`



