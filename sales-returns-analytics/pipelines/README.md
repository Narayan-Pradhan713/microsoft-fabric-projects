# Microsoft Fabric Pipelines

This folder contains the Microsoft Fabric pipeline definitions used in the Sales & Returns Analytics solution.

## Pipelines

### PL_AzureSQL_InitialLoad

Performs the initial full load of Azure SQL source tables into the Fabric Lakehouse.

Flow:

Azure SQL Database
↓
Lookup Metadata
↓
ForEach Source Tables
↓
Copy Data to Lakehouse
↓
Get Maximum Watermark
↓
Update Watermark

### PL_AzureSQL_IncrementalLoad

Performs metadata-driven incremental loading from Azure SQL Database into the Fabric Lakehouse.

Flow:

Lookup Metadata and Watermark
↓
ForEach Source Table
↓
Copy Incremental Records
↓
Upsert into Lakehouse
↓
Get Maximum Watermark
↓
Update Watermark
↓
ETL Audit Logging

Errors are recorded using the centralized ETL error logging procedure.

### PL_Blob_Returns_Event_To_Lakehouse

Processes new Returns CSV files received in Azure Blob Storage.

Flow:

Azure Blob Storage
↓
Copy Returns CSV File
↓
Lakehouse Files
↓
PySpark Notebook Processing
↓
Lakehouse Delta Table
↓
ETL Audit Logging

### PL_Warehouse_Load

Loads curated data from the Fabric Lakehouse into the Fabric Warehouse.

Flow:

Load DimCustomer
↓
Load DimProduct
↓
Merge FactSales
↓
Merge FactReturns
↓
Extend DimDate
↓
ETL Audit Logging

A Microsoft Teams notification is sent when the Warehouse load process fails.

## Architecture

Azure SQL Database ──┐
                    ├──> Fabric Lakehouse ──> Fabric Warehouse ──> Semantic Model ──> Power BI
Azure Blob Storage ─┘

## Centralized Monitoring

The pipelines use centralized ETL monitoring in Azure SQL Database:

- ETLAudit
- ETLErrorLog
- usp_InsertETLAudit
- usp_InsertETLError
