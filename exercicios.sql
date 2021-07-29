-- ** CRIAR O BANCO **

create database exercicios;

use exercicios;
  
-- 1) Criar tabela com o nome de ALUNO com colunas para armazenar o nome (texto), data de nascimento (date), sobrenome (texto), endereço (texto).

create table aluno(
	id int not null auto_increment,
	nome varchar(100),
	data_de_nascimento date,
	sobrenome varchar(100),
	endereco varchar(100),
	primary key(id)
);

-- 2) Delete tabela de ALUNO
    
drop table aluno ;

-- 3) Criar tabela com o nome de ALUNO com colunas para armazenar o nome (texto, obrigatório), sobrenome (texto, obrigatório),
-- nome do pai (texto), nome da mãe (texto), endereço (texto), número da casa (numero), nome da cidade (texto), sigla do estado (texto)

create table aluno(
	id int not null auto_increment,
	nome varchar(100) not null,
	sobrenome varchar(100) not null,
	nome_do_pai varchar(100),
	nome_da_mae varchar(100),
	endereco varchar(100),
	numero int(6),
	cidade varchar(100),
	estado varchar(2),
	primary key(id)
);

-- 4) Criar tabela com o nome de INSTITUICAO_ENSINO com colunas para armazenar nome da instituição (texto, obrigatório),
-- endereço (texto, obrigatório), razão social (texto, obrigatório), telefone (número obrigatório), observação (texto, obrigatório)

create table instituicao_ensino(
	id int not null auto_increment,
	nome varchar(100) not null,
	endereco varchar(100) not null,
	razao_social varchar(100) not null,
	telefone int(20) not null,
	observacao varchar(100) not null,
	primary key(id)
);

-- 5) Excluir coluna observação da tabela INSTITUICAO_ENSINO

alter table instituicao_ensino drop column observacao;

-- 6) Adicionar colunas para armazenar nome do reitor (texto) e vice-reitor (texto).

alter table instituicao_ensino add column nome_reitor varchar(100);
alter table instituicao_ensino add column nome_vice_reitor varchar(100);

-- 7) Alterar tabela INSTITUICAO_ENSINO adicionar coluna na data de inauguração (timestamp obrigatório)

alter table instituicao_ensino add column data_inauguracao datetime not null;

-- 8) Excluir coluna de nome de reitor e vice-reitor.

alter table instituicao_ensino drop column nome_reitor;
alter table instituicao_ensino drop column nome_vice_reitor;

-- 9) Criar tabela para armazenar PROFESSOR com as colunas de nome (texto, obrigatório), titularidade (texto, obrigatório),
-- endereço (text, obrigatório)

create table professor(
	id int not null auto_increment,
	nome varchar(100) not null,
	titularidade varchar(100) not null,
	endereco varchar(100) not null,
	primary key(id)
);

-- 10) Alterar tabela de PROFESSOR para deletar a coluna de endereço e adicionar as colunas de cidade que reside (texto, obrigatório),
-- cidade que nasceu (texto, obrigatório) e salário (número, obrigatório)

alter table professor drop column endereco;
alter table professor add column cidade varchar(100) not null;
alter table professor add column cidade_nascimento varchar(100) not null;
alter table professor add column salario float(6,2) not null;

-- 11) Alterar tabela de PROFESSOR para alterar a coluna de salário para um valor que aceita o valor no máximo de 999 999,00 reais.
    
alter table professor modify salario float(8,2) not null;

-- 12) Renomear a tabela de INSTITUCAO_ENSINO para FACULDADE.

rename table instituicao_ensino to faculdade;

-- 13) Criar tabela para DEPARTAMENTO com as colunas nome do departamento (texto, obrigatório), nome do presidente (texto, obrigatório),
-- localização (texto, obrigatório), orçamento mensal (numérico).

create table departamento(
	id int not null auto_increment,
	nome varchar(100) not null,
	nome_presidente varchar(100) not null,
	localizacao varchar(100) not null,
	orcamento_mensal float(11,2),
	primary key(id)
);

-- 14) Renomear a tabela de DEPARTAMENTO  para CENTRO

rename table departamento to centro;

-- -----------------------------------------------------------------------------------------------------------------------
-- 15) Criar uma tabela para armazenar as informações de Livro.
-- Esta tabela deve possuir as informações de nome do livro, ano de lançamento, autor, quantidade de páginas.

create table livro(
	id int not null auto_increment,
	nome varchar(100),
	ano_lancamento int(4),
	autor varchar(100),
	qtd_paginas int(6),
	primary key(id)
);

-- Inserir o livros com os seguintes dados:
/*
Nome: Dom Quixote
Ano de lançamento: 1605
Autor: Miguel de Cervantes
Quantidade de página: 378
*/

insert into livro values(1, "Dom Quixote", 1605, "Miguel de Cervantes", 378);

/*
Nome: Guerra e Paz
Ano de lançamento: 1869
Autor: Liev Tolstói
Quantidade de página: 652
*/

insert into livro values(2, "Guerra e Paz", 1869, "Liev Tolstói", 652);

/*
Nome: A Montanha Mágica
Ano de lançamento: 1924
Autor: Thomas Mann
Quantidade de página: 847
*/

insert into livro values(3, "A Montanha Mágica", 1924, "Thomas Mann", 847);

/*
Nome: Ulisses
Ano de lançamento: 1922
Autor: James Joyce
Quantidade de página: 65
*/

insert into livro values(4, "Ulisses", 1922, "James Joyce", 65);

/*
Nome: Cem Anos de Solidão
Ano de lançamento: 1967
Autor: Gabriel García Márquez
Quantidade de página: 987
*/

insert into livro values(5, "Cem Anos de Solidão", 1967, "Gabriel García Márquez", 987);

/*
Nome: A Divina Comédia
Ano de lançamento: 1321
Autor: Dante Alighieri
Quantidade de página: 587
*/

insert into livro values(6, "A Divina Comédia", 1321, "Dante Alighieri", 587);

/*
Nome: Em Busca do Tempo Perdido
Ano de lançamento: 1913
Autor: Marcel Proust
Quantidade de página: 872
*/

insert into livro values(7, "Em Busca do Tempo Perdido", 1913, "Marcel Proust", 872);

/*
Nome: O Som e a Fúria
Ano de lançamento: 1929
Autor: William Faulkner
Quantidade de página: 254
*/

insert into livro values(8, "O Som e a Fúria", 1929, "William Faulkner", 254);

-- a) Trazer apenas livros com data de lançamento maior que 1900.

select * from livro where ano_lancamento > 1900;

-- b) Trazer apenas livros com data de lançamento menor que 1605.

select * from livro where ano_lancamento < 1605;

-- c) Trazer apenas livros com data de lançamento maior igual 1967.

select * from livro where ano_lancamento >= 1967;

-- d) Trazer apenas livros que são do autor Liev Tolstói.

select * from livro where autor = "Liev Tolstói";

 -- e) Trazer apenas livros que são do autor James Joyce ou Marcel Proust
 
select * from livro where autor = "James Joyce" or autor = "Marcel Proust";

 -- f) Trazer apenas livros que a quantidade de páginas for maior/igual que 600 e menor/igual que 1000
 -- (lembrando que pode ser utilizado o (> e <) ou (between)
 
select * from livro where qtd_paginas between 600 and 1000;

-- g) Trazer apenas livros que a quantidade de páginas for maior que 367 ou que sejam do ano de 1605

select * from livro where qtd_paginas > 367 or ano_lancamento = 1605;

-- h) Trazer apenas livros que o nome é Ulisses e quantidade de páginas maior/igual a 65.

select * from livro where nome = "Ulisses" and qtd_paginas >= 65;

-- i) Trazer todos os livros trazendo apenas o nome do livro e ano de lançamento.

select nome, ano_lancamento from livro;

-- j) Trazer apenas os autores que escreveram livros com mais de 400 páginas.

select autor from livro where qtd_paginas > 400;

-- k) Trazer apenas os livros que tenham “Anos” no nome ou que sejam do autor de tenha o nome “Liev”

select * from livro where nome like "%Anos%" or autor like "%Liev%";

-- l) Trazer apenas os livros que tenham o nome do autor que possuam a letra “w“ independente de maiúscula ou minúscula.

select * from livro where autor like "%w%";

 -- m) Trazer apenas livros que comecem com a letra g independente de maiúscula ou minúscula.
 
select * from livro where nome like "g%";

-- n) Trazer todos os nomes dos livros com a seguinte estrutura: Nome: <NOME DO LIVRO>, autor <AUTOR> do ano <ANO DO LANÇAMENTO>

select concat("Nome: ",nome,", autor ",autor," do ano ",ano_lancamento) as nome_autor_ano from livro;

-- o) Trazer todos os livros selecionado apenas os nomes e quantos anos tem o livro se baseando neste ano e no ano de 2000.

select nome, 2000-ano_lancamento as anos_ate_2000, 2021-ano_lancamento as anos_ate_hoje from livro;

-- p) Trazer os nomes dos livros com a seguinte estrutura: Nome <NOME> - Ano de lançamento <ANO DO LANÇAMENTO>,
-- somente dos livros que possuem mais/igual de 60 anos e menos/igual de 300 anos.

select concat("Nome ",nome," - Ano de lançamento ",ano_lancamento) as nome_ano from livro where 2021-ano_lancamento between 60 and 300;

-- q) Inserir os seguintes livros na tabela
/*
Nome: Chapeuzinho vermelho
Ano de lançamento: 1899
Autor: Miguel De Cervantes
Quantidade de página: 12
*/

insert into livro values(9, "Chapeuzinho vermelho", 1899, "Miguel De Cervantes", 12);

/*
Nome: Dona florinda
Ano de lançamento: 1968
Autor: Miguel De Cervantes
Quantidade de página: 59
*/

insert into livro values(10, "Dona florinda", 1968, "Miguel De Cervantes", 59);

-- r) Exibir o nome dos livros, autor e ano de lançamento, ordenando pelo nome do autor e ano de lançamento sendo o ano de lançamento descrecente.

select nome, autor, ano_lancamento from livro order by ano_lancamento desc;

-- s) Crie uma coluna para o número de volume do tipo número inteiro

alter table livro add column volume int;

-- t) Altere todos os registros na tabela para o volume 1

update livro set volume = 1;
        
-- u) Crie uma coluna para data da edição do tipo timestamp

alter table livro add column data_edicao datetime;

-- v) Incluir as datas de edição dos livros conforme descrito abaixo:
--            i) Dom Quixote: 23/06/2016

update livro set data_edicao = "2016-06-23" where nome = "Dom Quixote";

--            ii) Guerra e Paz: 28/02/1989

update livro set data_edicao = "1989-02-28" where nome = "Guerra e Paz";

--            iii) A Montanha Mágica: 01/02/2015 14:25

update livro set data_edicao = "2015-02-01 14:25:00" where nome = "A Montanha Mágica";

--            iv) Ulisses: 09/12/1989

update livro set data_edicao = "1989-12-09" where nome = "Ulisses";
          
--            v) Cem Anos de Solidão: 29/08/1902

update livro set data_edicao = "1902-08-29" where nome = "Cem Anos de Solidão";

--            vi) A Divina Comédia: 28/09/1806

update livro set data_edicao = "1806-09-28" where nome = "A Divina Comédia";

--            vii) Alterar todas os demais livros que não possuem data de edição data para a data 08/09/2005

update livro set data_edicao = "2005-09-08" where data_edicao is null;

--        w) Selecionar o nome do livro e autor ordenando pela data de edição do livro de forma descrecente.

select nome, autor from livro order by data_edicao desc ;

 ????       x) Selecionar o nome do livro e a data de edição formatada no formado MM/YY.
        
select nome, month(data_edicao), year(data_edicao) from livro;

--      y) Selecionar os autores que tiveram livros nas edições entre as datas 01/01/1989 e 31/12/1989 (utilizar between ou >= e <=) 
-- Exemplo: WHERE DATA BETWEEN 
--        TO_DATE('01/01/2001', 'DD/MM/YYYY') AND 
--          TO_DATE('31/12/2001');

select autor from livro where data_edicao between '1989-01-01' and '1989-12-31';

--        z) Alterar as colunas de nome do livro, autor e ano da edição para obrigatórios (NOT NULL)
        
alter table livro modify nome varchar(100) not null;
alter table livro modify autor varchar(100) not null;
alter table livro modify data_edicao datetime not null;
        
--        aa) Inserir um livro dos os dados abaixo, verifique que irá exibir um erro no console:
        
-- Nome: Cem Anos de Solidão
-- Autor: Gabriel García Márquez

insert into livro (id, nome, autor) values(11, "Cem Anos de Solidão", "Gabriel García Márquez");

-- Alterar agora o inser para inserir a data de edição para a data 03/06/1879, e insira novamente o livro. Verifique que irá funcionar o insert.

insert into livro (id, nome, autor, data_edicao) values(11, "Cem Anos de Solidão", "Gabriel García Márquez", '1879-06-03');

--        bb) Efetuar uma consulta trazendo o nome do livro e somente o ano da edição do livro,
--        ordenando de forma desc do ano da edição do livro (ORDER BY TO_CHAR(DATA, ‘YYYY’) DESC

select nome, year(data_edicao) from livro order by data_edicao desc; 

--        cc) Inserir os seguintes livros conforme informações abaixo:
/*        
Nome: A volta dos que não foram
Data de edição: 1789
Autor: Liev Tolstói
*/

insert into livro (id, nome, data_edicao, autor) values(12, "A volta dos que não foram", '1789-01-01', "Liev Tolstói");

/*
Nome: Poeira em alto mar
Data de edição: 1809
Autor: Thomas Mann
*/

insert into livro (id, nome, data_edicao, autor) values(13, "Poeira em alto mar", '1809-01-01', "Thomas Mann");

/*
Nome: Grande visões de um cego
Data de edição: 1968
Autor: James Joyce
*/

insert into livro (id, nome, data_edicao, autor) values(14, "Grande visões de um cego", '1968-01-01', "James Joyce");

/*
Nome: Lucidez de um louco
Data de edição: 1709
Autor: Gabriel García Márquez
*/

insert into livro (id, nome, data_edicao, autor) values(15, "Lucidez de um louco", '1709-01-01', "Gabriel García Márquez");

--        dd) Selecionar apenas os livros sem ano de lançamento e mostrar nos campos o nome do livro e o ano da data de edição

select nome, year(data_edicao) from livro where ano_lancamento is null;

--         ee) Alterar os livros sem ano de lançamento inserindo o ano da data de edição do livro

update livro set ano_lancamento = year(data_edicao) where ano_lancamento is null;

--        ff) Alterar a quantidade de páginas dos livros sem valor informado para 100

update livro set qtd_paginas = 100 where qtd_paginas is null;

--        gg)  Selecionar a quantidade de autores diferentes na tabela livro

select count(distinct autor) from livro;

--        hh)  Selecionar a quantidade de livros que possuem “a” ou “A” no nome

select count(nome) from livro where nome like "%a%";

--        ii) Selecionar a soma de páginas que possuem data de edição maior que 01/01/2005. Incluir apelido na coluna de “Soma de páginas”

select sum(qtd_paginas) as "Soma de páginas" from livro where data_edicao > '2005-01-01';

--        jj) Alterar a tabela para possui a coluna VALOR para armazenar o valor do livro

alter table livro add column valor float(10,2);

--        kk) Alterar o valor dos livros dos autores “Miguel De Cervantes”, “Liev Tolstói”, “Thomas Mann” para 35,99.

update livro set valor = 35.99 where autor = "Miguel De Cervantes" or autor = "Liev Tolstói" or autor = "Thomas Mann";

--        ll) Alterar o valor dos livros de nome “Em Busca do Templo Perdido”, “O Som e a Fúria”, “Chapeuzinho vermelho”, “Dona florinda” para 12,89.

update livro set valor = 12.89 where nome = "Em Busca do Templo Perdido" or nome = "O Som e a Fúria" or nome = "Chapeuzinho vermelho" or  nome = "Dona florinda";

--        mm) Alterar o valor dos livros que ainda não possuem valor e possuem data de edição antes de 01/01/2006 para 19,70.

update livro set valor = 19.70 where valor is null and data_edicao < '2006-01-01';

--        nn) Alterar o valor dos demais livros que não possuem valor para 9,99.

update livro set valor = 9.99 where valor is null;

??        oo) Selecionar a média do preço dos livros presentes das tabelas, inserindo um apelido de “media_de_precos”.

select avg(valor) as "media_de_precos" from livro;

--        pp) Selecionar o nome do livro, e caso o livro tenha data de edição maior que 01/01/2015 mostrar “O livro é de no máximo dois anos”,
-- caso contrário, mostrar “O livro é mais velho que dois anos”.

select nome, if(data_edicao > '2015-01-01', "O livro é de no máximo dois anos", "O livro é mais velho que dois anos") as "tempo" from livro;

--        qq) Selecionar a quantidade de livros por volume.

select volume, count(*) from livro group by volume ;

--        rr) Selecionar a quantidade de livros que possuem pelo mês da edição

select month(data_edicao), count(*) from livro group by month(data_edicao);

--        ss) Selecionar o nome do livro, caso o mesmo possua alguma vogal, mostrar “Possui vogal no nome”,
-- caso contrário mostrar “Não possui vogal no nome”. 

select
nome,
if(nome like "%a%" or nome like "%e%" or nome like "%i%" or nome like "%o%" or nome like "%u%",
"Possui vogal no nome",
"Não possui vogal no nome") as "vogal" from livro;

--        tt) Selecionar a média dos valores dos livros que possuem vogal no nome e que não possuem vogal no nome,
-- utilizado o case do exercício anterior.

select avg(valor) from livro where nome like "%a%" or nome like "%e%" or nome like "%i%" or nome like "%o%" or nome like "%u%";
select avg(valor) from livro where nome not like "%a%" and nome not like "%e%" and nome not like "%i%" and nome not like "%o%" and nome not like "%u%";

--    16) Criar as consultas que retornem os registros conforme o desejado:

create database ex16;

use ex16;

--        a) Executar o arquivo de s exercício_16.sql

--        b) Mostrar os nomes dos filhos
-- e se possuir mãe, mostrar possui mãe, caso contrário mostrar não tem mãe,
-- se possui pai, mostrar possui pai, caso contrário mostrar não tem pai.
/* Resultado esperado:
		Zézinho | Tem mãe 	   | Tem pai
		Tuca 	  | Não tem mãe | Não tem pai
*/

select nome, if(MAE_CODIGO is null, "Não tem mãe", "Tem mãe"), if(PAI_CODIGO is null, "Não tem pai", "Tem pai") from filho;

        c) Mostrar os nomes dos filhos e o nome da mãe. Trazer todos os filhos independente se possui mãe ou não. Se não possuir mãe, mostrar no lugar do nome da mãe, não tem mãe.
        d) Mostrar os nomes dos filhos, nome da mãe e nome do pai. Trazer apenas filhos que tenham mãe. Se não possui pai, mostrar no lugar do nome da pai, não tem pai. 
        e) Mostrar a quantidade de filhos que não possuem mãe ou não possuem pai. 
        f) Mostrar o nome do pai e a quantidade de filhos que o pai possui. 
        g) Mostrar o nome do filho e nome da mãe, ordenando pelo nome da mãe. 
        h) Mostrar o nome dos filhos que tenham a mãe como Gabriela, Juliana (utilizando OR)
        i) Mostrar o nome dos filhos que não tenham o pai como Juca, Juliano (utilizando IN)
        j) Mostrar os nomes dos pais que possuem mais de 1 filho.
        k) Mostrar os nomes dos pais e mãe que possuem mais de 1 filho.
        l) Mostrar o nome do pai e da mãe, mostrando a quantidade de filhos que tem juntos, ordenando a consulta para trazer os que possuem mais filhos juntos.
        m) Mostrar os nomes dos pais e mãe, e caso tenha um filho, mostrar “Tem um filho”, caso possua dois filhos mostrar “Tem um casal”, caso tem mais filhos “Eles não dormem”.
        n) Trazer a quantidade de filhos que não tem pai e nem mãe.
        o) Trazer apenas as mães que não tenham filhos
        p) Trazer os filhos e o nome do pai, dos filhos que possuem “ri” no nome, ordenando pelo nome do pai decrescente
        q) Trazer os nomes dos pais, e outra coluna com a quantidade de caracteres que o nome do pai possui (Exemplo: SELECT LENGTH(‘Pedro’) FROM DUAL)
        r) Executar o  abaixo e verificar o resultado. Tente entender o que a função UNION faz:
SELECT NOME, 'Filho sem pais' AS PAI FROM FILHO
WHERE PAI IS NULL

UNION 

SELECT NOME, 'Filho com pai' FROM FILHO
WHERE PAI IS NOT NULL
ORDER BY PAI;
