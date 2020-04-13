create database dbinfox;
/*a linha de baixo escolhe o banco de dados*/
use dbinfox;
/* o bloco de instruções abaixo cria uma tabela*/
create table tbusuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar (15),
login varchar(15) not null unique,
senha varchar(15) not null
);
/*o comando abaixo descreve a tabela*/
describe tbusuarios;
/*a linha abaixo insere dados na tabela(CRUD)*/

insert into tbusuarios(iduser,usuario,fone,login,senha)
values(1,'Matheus Barreira Alves', '9999-9991','matheus','123456');

select * from tbusuarios;

insert into tbusuarios(iduser,usuario,fone,login,senha)
values(2,'Adiministrador', '9999-9991','admin','admin');
insert into tbusuarios(iduser,usuario,fone,login,senha)
values(3,'Bill Gates', '9999-9991','Bill','12345');

/* modificar dados da tabela no CRUD*/
update tbusuarios set fone ='8888-8888' where iduser=2;

/*apagar um registro da tabela*/
delete from tbusuarios where iduser=3;


create table tbclientes(
idcli int primary key auto_increment,
nomecli varchar(50) not null,
endcli varchar(100),
fonecli varchar(50) not null,
emailcli varchar(50),
cidadecli varchar(15),
estadocli varchar(15),
bairrocli varchar(15),
cepcli varchar(50) not null
);

describe tbclientes;

insert into tbclientes(nomecli,endcli,fonecli,emailcli,cidadecli,estadocli,bairrocli,cepcli)
values('linus torvalds', 'rua tux, 2015', '9999-9999', 'linus@linux.com','nova york', 'nova york', 'Brooklyn',11205); 


select * from tbclientes;

use dbinfox;

create table tbos(
os int primary key auto_increment,
data_os timestamp default current_timestamp,
equipamento  varchar(150) not null,
defeito varchar(150) not null,
servico varchar(150),
tecnico varchar(30),
valor decimal(10,2),
idcli int not null,
foreign key(idcli) references tbclientes(idcli)
);

describe tbos;

insert into tbos (equipamento,defeito,servico,tecnico,valor,idcli)
values ('notebook','não liga','troca da fonte','Matheus',87.50,1);

select * from tbos


select 
O.os,equipamento,defeito,servico,valor,
C.nomecli,fonecli
from tbos as O
inner join tbclientes as C
on (O.idcli = C.idcli);

