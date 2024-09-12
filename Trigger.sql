use momento

--Iremos adicionar uma trigger para que alguns registros da tabela pai sejá adicionado a tabela filha com o mesmo codigo
CREATE TRIGGER Trg_autocompletacodigo ON produtos
AFTER INSERT
AS
BEGIN 
	UPDATE p
	SET p.Codigo_produto = CONCAT('Setor', s.ID_setor)
	FROM Produtos p 
	INNER JOIN Setor s
		ON s.Codigo_produto=p.Codigo_produto
	WHERE p.Codigo_produto IN (SELECT ID_Setor FROM inserted)
	END;

	drop TRIGGER Trg_autocompletacodigo;
