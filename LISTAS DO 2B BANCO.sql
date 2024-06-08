-- LISTA 1 

-- 1
INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
VALUES ('A Fascinante História das Civilizações', 'Antony', 2024, true, 'História', '978-0616540157', 'Bloomsbury', 654, 'Português');


-- 2
UPDATE Livros 
SET disponivel = false
WHERE ano_publicacao < 2000;

-- 3
update Livros
set editora = 'Plume Books'
where titulo = '1984';

-- 4
update Livros
set idioma = 'Inglês'
where editora = 'Penguin Books';

-- 5
update Livros
set titulo = 'Harry Potter e a Pedra Filosofal (Edição Especial)'
where isbn = '978-0439708180';

-- 6
delete 
from Livros
where categoria = 'Terror';

--7
delete 
from Livros
where idioma = 'Francês' and ano_publicacao < 1970;

--8
delete 
from Livros
where titulo = 'As Crônicas de Nárnia';

--9
delete 
from Livros
where  editora = 'Penguin Books';

--10
select *
from Livros
where quantidade_paginas > 500;

-- 11
SELECT categoria, count(categoria)
FROM Livros
GROUP BY categoria;

--12
select titulo
from Livros
order by titulo asc
limit 5;

--13
SELECT SUM(quantidade_paginas) AS total_paginas, AVG(quantidade_paginas) AS media_paginas
FROM Livros
WHERE categoria = 'Drama';


--14
SELECT AVG(ano_publicacao)
FROM Livros;

 -- 15
select titulo, ano_publicacao
from Livros
where ano_publicacao = (select max(ano_publicacao) from livros);

select titulo, ano_publicacao
from Livros
where ano_publicacao = (select min(ano_publicacao) from livros);

-- 16
select *
from Livros
order by ano_publicacao desc;

-- 17
SELECT titulo
FROM Livros
WHERE idioma = 'Inglês'
UNION ALL
SELECT titulo
FROM Livros
WHERE idioma = 'Português';

-- 18
select *
from Livros
where autor = "George Orwell"

-- LISTA 2 

-- 1
SELECT * 
FROM Livros 
WHERE disponivel = TRUE;

-- 2
SELECT * 
FROM Livros 
WHERE editora = 'HarperCollins';

-- 3
SELECT * 
FROM Livros 
WHERE ano_publicacao 
BETWEEN 2000 AND 2010;

-- 4
SELECT autor, COUNT(*) as quantidade_livros
FROM Livros
GROUP BY autor
HAVING quantidade_livros > 3;

-- 5
SELECT * 
FROM Livros 
WHERE titulo LIKE '%Senhor%';

-- 6
SELECT * 
FROM Livros 
WHERE categoria IN ('Fantasia', 'Ficção Científica', 'Fábula');

-- 7
SELECT
DISTINCT idioma 
FROM Livros;

-- 8
SELECT * 
FROM Livros 
WHERE quantidade_paginas 
BETWEEN 200 AND 400;

-- 9
SELECT titulo, ano_publicacao 
FROM Livros 
ORDER BY ano_publicacao;