 create database mathias;
 use mathias;

drop table if exists persons;

create table persons (
	persid int auto_increment primary key,
    fullname varchar(50) not null,
    email varchar(50) not null,
    note varchar(150),
    student boolean default false,
    lastupdate timestamp default now() on update now()
);

insert into persons (
	fullname,
	email,
	note
)
    values 
    (
	'Ella Stick',
	'ella@mail.dk',
	'Strækker sig langt...'
	),
    (
	'Steen Aldermann',
	'steen@mail.dk',
	'Kan godt løfte store sten'
	);
    
    select * from persons;
    
-- drop user if exists 'test123'@'localhost';
create user 'test123'@'localhost' identified by 'test123';

grant select, insert, update, delete on mathias.persons to 'test123'@'localhost';