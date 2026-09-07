CREATE TABLE [dbo].[DimDate] (

	[DateKey] int NOT NULL, 
	[FullDate] date NOT NULL, 
	[DayNumber] int NULL, 
	[MonthNumber] int NULL, 
	[MonthName] varchar(20) NULL, 
	[QuarterNumber] int NULL, 
	[YearNumber] int NULL, 
	[DayName] varchar(20) NULL, 
	[IsWeekend] bit NULL
);