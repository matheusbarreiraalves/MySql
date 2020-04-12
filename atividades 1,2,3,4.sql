
create database agenda;
show databases;

use agenda;
create table tbcontatos(
	id int primary key, 
    nome varchar(50) not null, 
    fone varchar(15) not null, 
    email varchar(50)
   
);
show tables;
describe tbcontatos;

/*************************************************************************/
/********************************* CRUD **********************************/
/*************************************************************************/


insert into tbcontatos(id,nome,fone,email)
values(1, 'Matheus Barreira Alves', '9999-9991' , 'matheus@gmail.com');

insert into tbcontatos(id,nome,fone,email)
values(2, 'Linus Torvalds', '9999-9992' , 'linus@gmail.com');

insert into tbcontatos(id,nome,fone,email)
values(3, 'Bill Gates', '9999-9993' , 'bill@gmail.com');


select * from tbcontatos;


update tbcontatos set fone= '99123-4567' where id = 1;

delete from tbcontatos where id = 1;