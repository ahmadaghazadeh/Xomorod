DECLARE @Id UNIQUEIDENTIFIER = N'0A78F7F6-A45E-45CC-BDFD-9FB958CEBF72' -- Portfolio Id 

DELETE FROM Xomorod.dbo.PortfolioCategories
WHERE PortfolioId = @id

UPDATE Xomorod.dbo.Portfolios
SET	IconId = NULL
WHERE Id = @Id

DELETE FROM Xomorod.dbo.Resources
WHERE ElementUniqueId = @id

DELETE FROM Xomorod.dbo.ExtraLinks
WHERE PortfolioId = @Id

DELETE FROM Xomorod.dbo.Portfolios
WHERE Id = @id