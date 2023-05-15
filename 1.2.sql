#selects
#retornando quantidade de formularios, visto que somente entro com dados dos alunos caso preencha o formulario
select count(rt.aluno),t.turma from relacaoturma rt
join turma t on t.id = rt.turmaFk
group by t.turma;

#retornando pior item de satisfação de todos os formularios.
#retornando por quantidade (MAXIMO DE CADA 

select i.descricao Nome,s.satisfacao from item i
join itensavaliacao ia on ia.itemFk = i.id
join satisfacao s on s.id = ia.satisfacaoFk
group by ia.id
having s.satisfacao =1
order by i.id;

#RETORNANDO POR ITEM QUE TEVE PIOR AVALIACAO
#Podemos utilizar função SUM QUE SOMA OS VALORES DO IF, O IF RETORNA 1 CASO A SATISFACAO FOR IGUAL A 1 "RUIM", CASO CONTRARIO 0.
SELECT i.descricao Nome,
SUM(IF(s.satisfacao = 1,1,0)) QuantidadeRUIM
FROM item i
JOIN itensavaliacao ia ON ia.itemFk = i.id
JOIN satisfacao s ON s.id = ia.satisfacaoFk
GROUP BY i.id
ORDER BY QuantidadeRUIM desc;


#RETORNANDO POR ITEM QUE TEVE MELHOR AVALIACAO id 4 seria OTIMO 

SELECT i.descricao Nome,
SUM(IF(s.satisfacao = 4,1,0)) QuantidadeOTIMO
FROM item i
JOIN itensavaliacao ia ON ia.itemFk = i.id
JOIN satisfacao s ON s.id = ia.satisfacaoFk
GROUP BY i.id
ORDER BY QuantidadeOTIMO desc;


#RETORNANDO POR ITEM QUE TEVE PIOR AVALIACAO
#AGRUPADO POR TURMA 

SELECT SUM(IF(s.satisfacao = 1,1,0)) QuantidadeRUIM,t.turma
FROM cursoanditens cai
JOIN itensavaliacao ia ON cai.itensFk_fk = ia.id
join item i on i.id = ia.itemFk
JOIN satisfacao s ON s.id = ia.satisfacaoFk
join relacaoturma rt on rt.id = cai.relacaocursoFk
join turma t on t.id = rt.turmafk
GROUP BY  t.id
ORDER BY Turma asc;


#RETORNANDO POR ITEM QUE TEVE MELHOR AVALIACAO
#AGRUPADO POR TURMA 

SELECT SUM(IF(s.satisfacao = 4,1,0)) QuantidadeOTIMAPORTURMA,t.turma
FROM cursoanditens cai
JOIN itensavaliacao ia ON cai.itensFk_fk = ia.id
join item i on i.id = ia.itemFk
JOIN satisfacao s ON s.id = ia.satisfacaoFk
join relacaoturma rt on rt.id = cai.relacaocursoFk
join turma t on t.id = rt.turmafk
GROUP BY  t.id
ORDER BY Turma asc;



#RETORNANDO POR ITEM QUE TEVE MENOS IMPORTANCIA id 3 SERIA BAIXA POR TODOS FORMULARIOS

SELECT i.descricao Nome,
SUM(IF(p.importancia = 3,1,0)) QuantidadeBaixaTodos
FROM item i
JOIN itensavaliacao ia ON ia.itemFk = i.id
JOIN importancia p ON p.id = ia.importanciaFk
GROUP BY i.id
ORDER BY QuantidadeBaixaTodos desc;


#RETORNANDO POR ITEM QUE TEVE MAIS IMPORTANCIA id 1 SERIA ALTA POR TODOS FORMULARIOS

SELECT i.descricao Nome,
SUM(IF(p.importancia = 1,1,0)) QuantidadeAltaTodos
FROM item i
JOIN itensavaliacao ia ON ia.itemFk = i.id
JOIN importancia p ON p.id = ia.importanciaFk
GROUP BY i.id
ORDER BY QuantidadeAltaTodos desc;

#RETORNANDO POR ITEM QUE TEVE MENOR IMPORTANCIA
#AGRUPADO POR TURMA 

SELECT i.descricao Nome,SUM(IF(p.importancia = 3,1,0)) MENORIMPORTANCIAPORTURMA ,t.turma
FROM cursoanditens cai
JOIN itensavaliacao ia ON cai.itensFk_fk = ia.id
join item i on i.id = ia.itemFk
JOIN importancia p ON p.id = ia.importanciaFk
join relacaoturma rt on rt.id = cai.relacaocursoFk
join turma t on t.id = rt.turmafk
GROUP BY  cai.id
having  MENORIMPORTANCIAPORTURMA 
ORDER BY Turma asc;


#RETORNANDO POR ITEM QUE TEVE MAIOR IMPORTANCIA
#AGRUPADO POR TURMA 

SELECT i.descricao Nome,SUM(IF(p.importancia = 1,1,0)) MAIORIMPORTANCIAPORTURMA ,t.turma
FROM cursoanditens cai
JOIN itensavaliacao ia ON cai.itensFk_fk = ia.id
join item i on i.id = ia.itemFk
JOIN importancia p ON p.id = ia.importanciaFk
join relacaoturma rt on rt.id = cai.relacaocursoFk
join turma t on t.id = rt.turmafk
GROUP BY cai.id
having  MAIORIMPORTANCIAPORTURMA
ORDER BY MAIORIMPORTANCIAPORTURMA desc;


#RETORNANDO FORMULARIOS QUE FORAM PREENCHIDOS NAO ANONIMAMENTE ORDENADOR POR TURMA E POR NOME EM ORDEM CRESCENTE
select a.nome, t.turma,i.descricao,s.satisfacao,p.importancia,ia.comentario from cursoanditens cai
JOIN itensavaliacao ia ON cai.itensFk_fk = ia.id
join item i on i.id = ia.itemFk
join satisfacao s on s.id = ia.satisfacaoFk
JOIN importancia p ON p.id = ia.importanciaFk
join relacaoturma rt on rt.id = cai.relacaocursoFk
join alunos a on a.id = rt.aluno
join turma t on t.id = rt.turmafk
group by cai.id
having a.nome like "%"
order by a.nome,t.turma;



#RETORNANDO TURMA QUE TEVE MAIS PARTICIPACAO NA PESQUISA DE SATISFACAO E A QUE TEVE MENOS.

select distinct t.turma , count(a.nome) QuantidadeAlunosParticipacao
from relacaoturma rt
join turma t on t.id =rt.turmaFk
join alunos a on a.id =rt.aluno
GROUP BY rt.turmaFk
HAVING COUNT(a.nome) IN 
(SELECT MAX(mcount) FROM (SELECT COUNT(a.nome) AS mcount FROM relacaoturma rt JOIN alunos a ON a.id = rt.aluno GROUP BY rt.turmaFk) AS MAIOR) or
COUNT(a.nome) IN (SELECT MIN(c) FROM (SELECT COUNT(a.nome) AS c FROM relacaoturma rt JOIN alunos a ON a.id = rt.aluno GROUP BY rt.turmaFk) AS MENOR);
