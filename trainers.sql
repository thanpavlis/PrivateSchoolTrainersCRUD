drop database if exists assignment2;
create database assignment2;

use assignment2; 

drop table if exists trainers;
create table trainers(
    id int unsigned auto_increment not null,
    firstname varchar(100) not null,
    lastname varchar(100) not null,
    tsubject text not null, 
    primary key(id)
);

insert into trainers(firstname,lastname,tsubject) values
('Γιώργος','Καλογύρου','Διδάσκει μόνο Java.'),
('Γιάννης','Παπαδόπουλος','Διδάσκει μόνο C#.'),
('Χαρά','Γκρίτσι','Διδάσκει Sql και C++.'),
('Κωνσταντίνα','Κοπανάρη','Διδάσκει HTML, CSS και JS.'),
('Δημήτρης','Νικολάου','Διδάσκει Python και Php.');

select * from trainers;
