use momento

--adicionando dados imaginários na tabela, que depois faremos outra tabela com os codigos dos funcionarios 
INSERT INTO Setor (ID_Setor,Nome_setor, Resp_Setor, Codigo_produto)
VALUES (1,'Bebidas', 165899, 324),
(2,'Hortifruti', 522669, 779),
(3,'Padaria', 389547, 554),
(4,'Açougue', 789542, 442),
(5,'Peixaria', 735888, 212),
(6,'Laticinios',411423, 285),
(7,'Bebidas',051028, 545),
(8,'Limpeza e Higiene', 011538, 925), (9,'Eletrônicos e Eletrodomésticos', 396645, 851);
GO

INSERT INTO Produtos ( ID_Produto,Codigo_produto,Nome, Nome_setor, Valor)
 values ('',324,'coca Cola', 'Bebidas', 4.5);
 GO

 INSERT INTO Produtos ( ID_Produto,Codigo_produto,Nome, Nome_setor, Valor)
 VALUES (1,324,'suco','Bebidas',7.10),
 (2,779,'Alface', 'hortifruti', 1.89),
 (3,779, 'Alho', 'hortifruti', 2.19),
 (4,779,'Cebola', 'Hortifruti',3.00);
 GO

 INSERT INTO Produtos ( ID_Produto,Codigo_produto,Nome, Nome_setor, Valor)
 VALUES (5,554,'Pao frances','Padaria',14.00);


 -- Os registros foram alimentados, porém o codigo do produto ficou null e não era isso que se esperava, irei precisar deletar 
 DELETE FROM Produtos WHERE ID_Produto=0;

  DELETE FROM Produtos;