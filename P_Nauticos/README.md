NáuticaBarata
===========

##Resmen
Este repositorio contiene los archivos de NáuticaBarata, la tienda enlinea con la
mejor selección de equipo náutico.

##Requisitos
* Ruby 2.1.2
* Rails 4.1.1
* MySQL 5.5.

##Installación
Para ejecutar NáuticaBarata sigue estos pasos:

1.- Crear las bases de datos de desarollo y test ejecutando los siguientes comandos en tu consola mysql:
```
 create database eshop06_development;
 create database eshop06_test;
```

2.- Crear al usuario 'eshop06' y otorgar todos los perimos a las bases de datos que acabas
de crear con lo siguientes comandos:
```
grant all on eshop06_development.* to 'eshop06'@'localhost' identified by 'cisco';

grant all on eshop06_test.* to 'eshop06'@'localhost' identified by 'cisco';
```
3.- Instalar las gemas listadas en el gemfile ejecutando en tu consola de rails:
```
bundle install
```

4.- Actualiza tu base de datos utilizando:
```
rake db:migrate
```

5.- Echa a andar tu servidor ejecutando `rails server` en tu consola y pega
esta dirección `http://localhost:3000` en tu navegador favorito.

##Gracias!
