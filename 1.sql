create database fichaava3;
use fichaava3;
drop database fichaava3;

create table DADOSCURSO(
id bigint not null auto_increment,
TituloCurso varchar(55) not null, 
primary key(id)
);


create table Turma(
id bigint not null auto_increment,
Turma enum("A1","B1","C1","A2","B2","C2","A3","B3","C3","A4","B4","C4") not null, 
primary key(id)
);



create table Periodo(
id bigint not null auto_increment,
Periodo enum("MANHÃ","TARDE","NOITE") not null, 
primary key(id)
);


create table Funcionarios(
id bigint auto_increment not null,
nome varchar(75) not null,
funcao enum("DIRETOR","ANALISTA","COORDENADOR"),
primary key(id)
);


create table IMPORTANCIA(
id int auto_increment not null, 
importancia enum("ALTA","MÉDIA","BAIXA") not null,
primary key(id)
);

create table SATISFACAO(
id int  auto_increment not null, 
satisfacao enum("RUIM(1)","REGULAR(2)","BOM(3)","OTIMO(4)","N/A") not null, 
primary key(id)
);

create table ITEM(
id bigint auto_increment not null,
descricao text not null,
primary key(id)
);



create table ITENSAVALIACAO(
id bigint auto_increment not null, 
#dadosFk bigint not null,
itemFk bigint not null,
importanciaFk int not null,
satisfacaoFk int not null, 
comentario text null,
primary key(id),
#foreign key(dadosFk) references relacaocurso(id),
foreign key(importanciaFk) references IMPORTANCIA(id),
foreign key(satisfacaoFk) references SATISFACAO(id),
foreign key(itemFk) references ITEM(id)
);



create table alunos(
id bigint auto_increment not null,
Nome varchar(75) null,
cursoFk_fk bigint  null,
periodoFk_fk bigint  null,
primary key(id),
foreign key(cursoFk_fk) references DADOSCURSO(id),
foreign key(periodoFk_fk) references periodo(id)
);


create table relacaoturma(
id bigint auto_increment not null,
aluno bigint null,
turmafk bigint not null,
primary key(id),
foreign key(aluno) references alunos(id),
foreign key(turmafk) references Turma(id)
);



create table cursoanditens(
id bigint auto_increment not null,
itensFk_fk bigint not null,
relacaocursoFk bigint not null,
primary key(id),
foreign key(itensFk_fk) references ITENSAVALIACAO(id),
foreign key(relacaocursoFk) references relacaoturma(id)
);





#create table relacaocurso(
#id bigint auto_increment not null,
#nomealuno bigint null,
##cursoFk bigint not null,
##turmaFk bigint not null,
#periodoFk bigint not null,
##primary key(id),
##foreign key(cursoFk) references DADOSCURSO(id),
#foreign key(turmaFk) references turma(id),
#foreign key(periodoFk) references periodo(id)
#);
