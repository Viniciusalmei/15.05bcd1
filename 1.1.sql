#insert bd 2
#insert titulo 
insert into DADOSCURSO(TituloCurso) values("AGRONOMIA");
insert into DADOSCURSO(TituloCurso) values("DIREITO");
insert into DADOSCURSO(TituloCurso) values("PLASTICOS");
insert into DADOSCURSO(TituloCurso) values("ANALISE DE SISTEMAS");
insert into DADOSCURSO(TituloCurso) values("GASTRONOMIA");
insert into DADOSCURSO(TituloCurso) values("FUNILARIA");
insert into DADOSCURSO(TituloCurso) values("MECANICA");
insert into DADOSCURSO(TituloCurso) values("CIENCIAS DE DADOS");

#insert turma
insert into Turma(Turma) values ("A1");
insert into Turma(Turma) values ("B1");
insert into Turma(Turma) values ("C1");
insert into Turma(Turma) values ("A2");
insert into Turma(Turma) values ("B2");
insert into Turma(Turma) values ("C2");
insert into Turma(Turma) values ("A3");
insert into Turma(Turma) values ("B3");
insert into Turma(Turma) values ("C3");
insert into Turma(Turma) values ("A4");
insert into Turma(Turma) values ("B4");
insert into Turma(Turma) values ("C4");

#insert periodo
insert into Periodo(Periodo) values ("MANHÃ");
insert into Periodo(Periodo) values ("TARDE");
insert into Periodo(Periodo) values ("NOITE");

#insert funcionarios
insert into Funcionarios(nome,funcao) values("CLEBER A.","ANALISTA");
insert into Funcionarios(nome,funcao) values("JOAO A.","DIRETOR");
insert into Funcionarios(nome,funcao) values("CARINA C.","ANALISTA");
insert into Funcionarios(nome,funcao) values("VITORIA H.","ANALISTA");
insert into Funcionarios(nome,funcao) values("JUNIOR B.","COORDENADOR");
insert into Funcionarios(nome,funcao) values("VITOR P.","COORDENADOR");

#insert itens
insert into ITEM(descricao) values ("1.Limpeza e conservação da sala de aula e da oficina");
insert into ITEM(descricao) values ("2.Disponibilidade de equipamentos,máquinas e ferramentas para realização do curso");
insert into ITEM(descricao) values ("3.Qualiadade de apostilas,livros e textos, quanto a impressão e a adequação da informação");
insert into ITEM(descricao) values ("4.Cumprimento do horário das aulas");
insert into ITEM(descricao) values ("5.Cumprimenrto dos objetivos propostos para o curso");
insert into ITEM(descricao) values ("6.Preocupação do docente com o aproveitamento dos alunos");
insert into ITEM(descricao) values ("7.Domínio do docente sobre os assuntos tratados");
insert into ITEM(descricao) values ("8.O aprendizado, na teoria e na prática, em relação ao esperado");
insert into ITEM(descricao) values ("9.Conteúdo do curso, em relação ás expectativas");
insert into ITEM(descricao) values ("10.Atendimento da recepção / secretaria da escola");
insert into ITEM(descricao) values ("11.Atendimento telefônico da escola");
insert into ITEM(descricao) values ("12.Atendimento da cantina / lanchonete");
insert into ITEM(descricao) values ("13.Atendimento da Biblioteca");

#insert importancia
insert into IMPORTANCIA(importancia) values ("ALTA");
insert into IMPORTANCIA(importancia) values ("MÉDIA");
insert into IMPORTANCIA(importancia) values ("BAIXA");




#insert satisfacao
insert into SATISFACAO(satisfacao) values ("RUIM(1)");
insert into SATISFACAO(satisfacao) values ("REGULAR(2)");
insert into SATISFACAO(satisfacao) values ("BOM(3)");
insert into SATISFACAO(satisfacao) values ("OTIMO(4)");
insert into SATISFACAO(satisfacao) values ("N/A");



#insert intes avaliacao
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (1,1,3,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (2,2,1,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (3,2,1,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (4,1,3,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (5,1,1,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (6,3,3,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (7,2,3,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (8,1,3,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (9,1,4,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (10,1,4,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (11,2,2,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (12,1,2,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (13,1,2,null);

insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (1,1,2,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (2,2,1,"PRECISA MELHORAR");
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (3,2,2,"GOSTEI MUITO");
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (4,1,1,"NAO SUPORTO A AULA DE OFICINA");
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (5,1,2,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (6,3,3,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (7,2,2,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (8,1,1,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (9,1,2,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (10,1,3,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (11,2,4,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (12,1,4,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (13,1,2,null);


insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (1,1,1,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (2,2,2,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (3,2,3,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (4,1,4,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (5,1,4,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (6,3,4,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (7,2,4,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (8,1,4,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (9,1,3,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (10,1,2,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (11,2,1,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (12,1,2,null);
insert into ITENSAVALIACAO(itemFk,ImportanciaFk,satisfacaoFk,comentario) values (13,1,3,null);

#insert alunos

insert into alunos(Nome,cursoFk_fk,periodoFk_fk) values ("joao",1,2);
insert into alunos(Nome,cursoFk_fk,periodoFk_fk) values ("brunin",2,1);
insert into alunos(Nome,cursoFk_fk,periodoFk_fk) values (null,3,1);

#insert relacao curso aluno 

insert into relacaoturma(aluno,turmaFk) values (1,1);
insert into relacaoturma(aluno,turmaFk) values (2,2);
insert into relacaoturma(aluno,turmaFk) values (3,4);




#insert relacao aluno/ficha

insert into cursoanditens (itensFk_fk,relacaocursoFk) values (1,1);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (2,1);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (3,1);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (4,1);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (5,1);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (6,1);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (7,1);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (8,1);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (9,1);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (10,1);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (11,1);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (12,1);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (13,1);

insert into cursoanditens (itensFk_fk,relacaocursoFk) values (1,2);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (2,2);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (3,2);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (4,2);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (5,2);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (6,2);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (7,2);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (8,2);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (9,2);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (10,2);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (11,2);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (12,2);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (13,2);



insert into cursoanditens (itensFk_fk,relacaocursoFk) values (1,4);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (2,4);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (3,4);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (4,4);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (5,4);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (6,4);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (7,4);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (8,4);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (9,4);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (10,4);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (11,4);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (12,4);
insert into cursoanditens (itensFk_fk,relacaocursoFk) values (13,4);

#create table alunos(
#id bigint auto_increment not null, 
#Nome varchar(75) null,
#turmaFk_fk bigint  null,
#periodoFk_fk bigint  null,
#primary key(id),
#foreign key(turmaFk_fk) references Turma(id),
##foreign key(periodoFk_fk) references periodo(id)
#);