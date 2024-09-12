use momento

 SELECT * FROM Produtos;
 SELECT * FROM Setor;

 SELECT IDENT_CURRENT('Produtos');

 SELECT Codigo_produto, nome FROM Produtos;

 SELECT nome, valor FROM Produtos 
 where Valor>=2;

 -- Uma consulta que nos trar� o resultado esperado, para analise
 SELECT p.Nome_setor, s.Resp_Setor  FROM Produtos p
INNER JOIN Setor s ON p.Codigo_produto=s.Codigo_produto; 

-- Na consulta a seguir iremos fazer uma jun��o onde ter� um resultado que nos trar� uma falha do resultado, tendo em vista que no mesmo setor teremos varios codigos de repons�vel
SELECT p.Nome_setor, s.Resp_Setor  FROM Produtos p
INNER JOIN Setor s ON p.ID_Produto=s.ID_Setor; -- Nessa consulta leva ao erro de analise, po�s observa que temos mais de um reponsavel por setor

-- Nessa consulta veremos a jun��o melhor de todas as colunas tanto de Produtos, quanto de Setor. Os Registros apenas o que est� contido em ambas.
SELECT * FROM Produtos p
INNER JOIN Setor s ON p.Codigo_produto=s.Codigo_produto;

SELECT * FROM Produtos p
FULL OUTER JOIN Setor s ON p.Codigo_produto=s.Codigo_produto;
-- Nesse caso especifico, tanto o full quanto o Right ir�o trazer o mesmo resultado
SELECT * FROM  Produtos p
RIGHT JOIN Setor s ON p.Codigo_produto=s.Codigo_produto;

SELECT * FROM  Produtos p
LEFT JOIN Setor s ON p.Codigo_produto=s.Codigo_produto;





