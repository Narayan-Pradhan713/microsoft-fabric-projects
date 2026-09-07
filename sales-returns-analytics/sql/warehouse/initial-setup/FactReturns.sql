CREATE TABLE [dbo].[FactReturns] (

	[ReturnID] int NOT NULL, 
	[SaleID] int NULL, 
	[ReturnDate] date NULL, 
	[ReturnQuantity] int NULL, 
	[ReturnAmount] decimal(18,2) NULL, 
	[ReturnReason] varchar(100) NULL, 
	[ModifiedDate] datetime2(6) NULL, 
	[CreatedDate] datetime2(6) NULL, 
	[UpdatedDate] datetime2(6) NULL
);