# Azure Data Sources

This project uses two Azure data sources for the Sales & Returns Analytics solution.

## Azure SQL Database

Azure SQL Database is the source system for sales data.

The source includes:

- DimCustomer
- DimProduct
- FactSales
- MetadataControl
- WatermarkControl

Two Microsoft Fabric pipelines are used to load data from Azure SQL Database:

- **PL_AzureSQL_InitialLoad** — Performs the initial full load.
- **PL_AzureSQL_IncrementalLoad** — Performs incremental loading using metadata and watermark tracking.

## Azure Blob Storage

Azure Blob Storage is the source for Returns CSV files.

When a new returns file arrives:

1. Microsoft Fabric Activator detects the new file.
2. The returns processing pipeline is triggered.
3. The CSV file is copied to the Lakehouse Files area.
4. A PySpark notebook processes and transforms the returns data.
5. The processed data is loaded into the Lakehouse Delta tables.

## Source Architecture

Azure SQL Database and Azure Blob Storage provide the source data for the Microsoft Fabric Sales & Returns Analytics solution.
