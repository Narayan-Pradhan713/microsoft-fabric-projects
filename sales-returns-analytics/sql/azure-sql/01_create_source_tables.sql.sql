CREATE TABLE dbo.DimCustomer(CustomerID INT PRIMARY KEY,CustomerName VARCHAR(100),Region VARCHAR(50),CreatedDate DATETIME2,ModifiedDate DATETIME2,IsDeleted BIT);
CREATE TABLE dbo.DimProduct(ProductID INT PRIMARY KEY,ProductName VARCHAR(100),Category VARCHAR(50),Price DECIMAL(18,2),ModifiedDate DATETIME2,IsDeleted BIT);
CREATE TABLE dbo.FactSales(SaleID INT PRIMARY KEY,CustomerID INT,ProductID INT,SaleDate DATE,ModifiedDate DATETIME2,Amount DECIMAL(18,2),Status VARCHAR(30),CreatedDate DATETIME2,UpdatedDate DATETIME2,IsDeleted BIT);

