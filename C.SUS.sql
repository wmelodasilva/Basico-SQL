
IF OBJECT_ID('dbo.Cadastro', 'U') IS NOT NULL
DROP TABLE dbo.Cadastro
GO
-- Create the table in the specified schema
CREATE TABLE dbo.Cadastro
(
  CadastroId INT NOT NULL PRIMARY KEY,
Nome [NVARCHAR](50)  NOT NULL,
CPF [NVARCHAR](50)  NOT NULL,
SOBRENOME [NVARCHAR](50) NOT NULL,
EMAIL [NVARCHAR](100) NOT NULL,
CEP [NVARCHAR](15) NOT NULL,

);
GO

INSERT INTO Cadastro
([CadastroId],[Nome],[SOBRENOME],[CPF],[CEP],[EMAIL])
VALUES
( 1010, N'Jessica', N'Dietoviski' ,N'07275495214', N'71885102' ,N'JessicaDietoviski@hotmail.com'),
( 20100, N'Lucas', N'Moreira', N'2012153685', N'58774524', N'l.moreira@gmail.com'),
( 35800, N'Marie', N'jour', N'254896231', N'5879651', N'Marie_jour@outlook.hotmail.com')
GO
-- Query the total count of employees
SELECT COUNT(*) as Cadastro FROM dbo.Cadastro;
-- Query all employee information
SELECT e.CadastroId, e.Nome, e.SOBRENOME, e.CPF, e.CEP ,e.EMAIL
FROM dbo.Cadastro as e
GO