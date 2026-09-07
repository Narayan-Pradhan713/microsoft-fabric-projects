CREATE TABLE [dbo].[DimProduct] (

	[ProductID] int NOT NULL, 
	[ProductName] varchar(200) NULL, 
	[Category] varchar(100) NULL, 
	[Price] decimal(18,2) NULL, 
	[ModifiedDate] datetime2(6) NULL, 
	[IsDeleted] bit NULL
);