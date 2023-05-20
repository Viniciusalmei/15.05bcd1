use ok;
select * from escola;

#qual a media por municipio entre notas iniciais finais e em 

select id_municipio as MUNICIPIO ,avg(nota_idesp_ef_iniciais) "NOTA INICIAL POR MUN",avg(nota_idesp_ef_finais)"NOTA FINAL POR MUN",avg(nota_idesp_em) "NOTA EM POR MUN"
from escola
group by id_municipio;

#Adicionando ano
select id_municipio as MUNICIPIO ,ano,avg(nota_idesp_ef_iniciais) "NOTA INICIAL POR MUN",avg(nota_idesp_ef_finais)"NOTA FINAL POR MUN",avg(nota_idesp_em) "NOTA EM POR MUN"
from escola
group by id_municipio,ano
order by id_municipio,ano;


#meida da composicao conjunta por municipio.


select id_municipio as MUNICIPIO ,avg(nota_idesp_ef_iniciais) + avg(nota_idesp_ef_finais) + avg(nota_idesp_em)/3 as MEDIA3NOTAS
from escola
group by id_municipio
;


describe escola;
select * from escola;