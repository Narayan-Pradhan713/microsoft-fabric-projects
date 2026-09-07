-- Initial control data for dbo.WatermarkControl
INSERT INTO dbo.WatermarkControl (SourceTable,WatermarkColumn,LastWatermark,TargetTable,LakehouseTarget,WarehouseTarget,LoadType,IsActive) VALUES
('FactSales','ModifiedDate','1900-01-01 00:00:00','FactSales','Lakehouse','Warehouse','UPSERT',1),
('DimCustomer','ModifiedDate','1900-01-01 00:00:00','DimCustomer','Lakehouse','Warehouse','UPSERT',1),
('DimProduct','ModifiedDate','1900-01-01 00:00:00','DimProduct','Lakehouse','Warehouse','UPSERT',1);
