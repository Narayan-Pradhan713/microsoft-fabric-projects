CREATE TABLE [dbo].[DimCustomer] (

	[CustomerID] int NOT NULL, 
	[CustomerName] varchar(200) NULL, 
	[Region] varchar(100) NULL, 
	[CreatedDate] datetime2(6) NULL, 
	[ModifiedDate] datetime2(6) NULL, 
	[IsDeleted] bit NULL
);