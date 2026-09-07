CREATE TABLE [dbo].[FactSales] (

	[SaleID] int NOT NULL, 
	[CustomerID] int NULL, 
	[ProductID] int NULL, 
	[SaleDate] date NULL, 
	[ModifiedDate] datetime2(6) NULL, 
	[Amount] decimal(18,2) NULL, 
	[Status] varchar(50) NULL, 
	[CreatedDate] datetime2(6) NULL, 
	[UpdatedDate] datetime2(6) NULL, 
	[IsDeleted] bit NULL
);