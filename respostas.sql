/*Respostas*/
//1 - Buscar o nome e ano dos filmes
select Nome, Ano 
from Filmes 
order by Ano

//2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select Nome, Ano 
from Filmes 
order by Ano

//3 - Buscar pelo filme "De volta para o futuro", trazendo o nome, ano e a duração
select Nome, Ano, Duracao 
from Filmes 
where Nome = "De volta para o futuro"

//4 - Buscar os filmes lançados em 1997
select * 
from Filmes 
where Ano = 1997 

//5 - Buscar os filmes lançados APÓS o ano 2000
select * 
from Filmes 
where Ano > 2000

//6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select Nome, Ano, Duracao 
from Filmes 
where Duracao between 100 and 150 
order by Duracao asc

//7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select Ano, Count (Ano) as "Quantidade de filmes lançados" 
from Filmes 
order by Ano desc

//8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select PrimeiroNome, UltimoNome 
from Atores 
where Genero = "M"

//9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select PrimeiroNome, UltimoNome 
from Atores 
where Genero = "F" 
order by PrimeiroNome

//10 - Buscar o nome do filme e o gênero
select f.Nome as "Nome do filme", fg.Genero as "Genero" 
from Filmes f
inner join FilmesGenero fg on f.id = fg.id
inner join Genero g on g.id = fg.IdGenero

//11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select f.Nome 
from Filmes f
inner join FilmesGenero fg on f.id = fg.id 
inner join Genero g on g.id = fg.IdGenero
where g.Nome = "Mistério"

//12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select f.Nome as "Filme", a.PrimeiroNome as "Nome do ator/ atriz", a.UltimoNome as "Sobrenome do ator/ atriz", e.Papel "Papel"
from Filmes f
inner join ElencoFilmes e on f.id = e.idFilme
inner join Atores a on a.id = e.idAtor