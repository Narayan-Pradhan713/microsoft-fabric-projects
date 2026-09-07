-- Run after the five loads
SELECT 'DimCustomer' AS TableName, COUNT(*) AS RowCount FROM dbo.DimCustomer
UNION ALL
SELECT 'DimProduct', COUNT(*) FROM dbo.DimProduct
UNION ALL
SELECT 'FactSales', COUNT(*) FROM dbo.FactSales
UNION ALL
SELECT 'WatermarkControl', COUNT(*) FROM dbo.WatermarkControl
UNION ALL
SELECT 'MetadataControl', COUNT(*) FROM dbo.MetadataControl;

SELECT MIN(ModifiedDate) AS MinModifiedDate, MAX(ModifiedDate) AS MaxModifiedDate
FROM dbo.FactSales;
