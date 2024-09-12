

CREATE DATABASE momento;
 USE momento
 GO

 CREATE TABLE Produtos 
 (ID_Produto int,
 Codigo_produto varchar(2), 
 Nome VARCHAR(max), 
 Cor NVARCHAR(7),
 Setor int,
 Valor Float);

 ALTER TABLE Produtos
 ALTER COLUMN Setor Varchar(20);

 --Na tabela produtos vou renomear a coluna setor para Nome_setor
 EXEC sp_rename 'Produtos.Setor', 'Nome_setor', 'Column';

 ALTER TABLE produtos
 ALTER COLUMN Codigo_produto int;

 ALTER TABLE produtos
 ALTER COLUMN ID_Produto int NoT NuLL ;



 CREATE TABLE Setor
 (ID_Setor int,
 Nome_setor Varchar (30),
 Resp_Setor int  UNIQUE NOT NULL,
 Codigo_produto int);

 ALTER TABLE Produtos
 ADD CONSTRAINt Pk_Id PRIMARY KEY (ID_Produto);
 --como teve um erro ao adicionar a chave FK, fazendo alterações na tabela SETOR
 ALTER TABLE Setor
 ALTER COLUMN ID_Setor int NoT NuLL ;
 -- depois de alterado vou adicionar a PK na tabela setor na coluna  ID_Setor
 ALTER TABLE Setor
 ADD CONSTRAINt Pk_IdSetor PRIMARY KEY (ID_Setor);

 --será feio a modificação na coluna codigo_produto, poís como tabela pai a coluna precisa ser UNIQUE, já que já que temos uma chave primaria
 ALTER TABLE Setor
 ADD CONSTRAINT UNI_Codigo_produto UNIQUE(Codigo_produto); 

 -- alguns requisitos preciam atender uma FK, tanto a coluna filha, quanto a pai precisam aceitar o mesmo tipo de dados, e quando não usamos a PK entre colunas (não indico)  USamos colunas unicas 
 ALTER TABLE Produtos
 ADD CONSTRAINT Fk_codProduto FOREIGN KEY (Codigo_produto)
 REFERENCES Setor (Codigo_produto); 

  ALTER TABLE Produtos
  ALTER COLUMN Codigo_produto int NOT NULL;

  /*ALTER TABLE Produtos
  ALTER COLUMN ID_Produto int primary key IDENTITY (1,1); */--(nesse comando seria para adicionar um autoincrement na coluna da PK, porém precisa ser feito junto criação da tabela)

   --comando caso preciso derrubar ou melhor dropar uma trigger
 drop TRIGGER Trg_autocompletacodigo;


