CREATE TABLE dbo.WatermarkControl(SourceTable VARCHAR(100) PRIMARY KEY,WatermarkColumn VARCHAR(100),LastWatermark DATETIME2,TargetTable VARCHAR(100),LakehouseTarget VARCHAR(100),WarehouseTarget VARCHAR(100),LoadType VARCHAR(50),IsActive BIT);
CREATE TABLE dbo.MetadataControl(EntityName VARCHAR(100) PRIMARY KEY,SourceType VARCHAR(50),SourceObject VARCHAR(200),TargetTable VARCHAR(100),WatermarkColumn VARCHAR(100),BusinessKey VARCHAR(100),LoadType VARCHAR(50),TargetType VARCHAR(50),IsActive BIT);

