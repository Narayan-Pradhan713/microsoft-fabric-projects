# SQL Scripts

This folder contains all SQL scripts used across the Sales & Returns Analytics solution.

SQL is used in two main areas:

- Azure SQL Database
- Microsoft Fabric Warehouse

It also includes ETL monitoring, audit logging, error logging, and data validation.

---

## Azure SQL Database

Azure SQL Database is the source system for sales data.

SQL scripts are used to create and manage:

- DimCustomer
- DimProduct
- FactSales
- MetadataControl
- WatermarkControl
- ETLAuditLog
- ETLErrorLog

The Azure SQL source supports:

- Initial full data loading
- Incremental data loading
- Metadata-driven processing
- Watermark tracking
- ETL audit logging
- Error logging

---

## ETL Monitoring and Logging

The solution includes ETL monitoring tables to track data pipeline execution and failures.

### ETLAuditLog

The ETLAuditLog captures ETL execution details, including:

- Pipeline name
- Source and target
- Load status
- Start time
- End time
- Records processed

### ETLErrorLog

The ETLErrorLog captures errors that occur during data processing, including:

- Pipeline or process name
- Error details
- Error timestamp
- Execution context

---

## Microsoft Fabric Warehouse

Microsoft Fabric Warehouse is used as the analytical data layer for the project.

SQL scripts are used for:

- Creating Warehouse tables
- Creating dimension tables
- Creating fact tables
- Loading dimensions
- Loading facts
- Stored procedures
- Data validation

Stored procedures are executed as part of the Lakehouse-to-Warehouse processing flow.

---

## Project Data Flow

Azure SQL Database  
→ Microsoft Fabric Pipelines  
→ Fabric Lakehouse  
→ Microsoft Fabric Warehouse  
→ Semantic Model  
→ Power BI

Returns data follows a separate flow:

Azure Blob Storage  
→ Activator  
→ Returns Processing Pipeline  
→ Fabric Lakehouse  
→ Microsoft Fabric Warehouse  
→ Semantic Model  
→ Power BI
