-- Initial control data for dbo.MetadataControl
INSERT INTO dbo.MetadataControl (EntityName,SourceType,SourceObject,TargetTable,WatermarkColumn,BusinessKey,LoadType,TargetType,IsActive) VALUES
('FactSales','AzureSQL','dbo.FactSales','FactSales','ModifiedDate','SaleID','UPSERT','Lakehouse',1),
('DimCustomer','AzureSQL','dbo.DimCustomer','DimCustomer','ModifiedDate','CustomerID','UPSERT','Lakehouse',1),
('DimProduct','AzureSQL','dbo.DimProduct','DimProduct','ModifiedDate','ProductID','UPSERT','Lakehouse',1),
('SalesFiles','Blob','/incremental/','FactSales','FileDate','SaleID','FILE_INCREMENTAL','Lakehouse',1);
