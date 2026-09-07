# PL_AzureSQL_IncrementalLoad

## Overview

This Microsoft Fabric pipeline performs metadata-driven incremental loading from Azure SQL Database into the Fabric Lakehouse.

The pipeline uses MetadataControl and WatermarkControl tables to identify new or changed records.

## Pipeline Flow

Lookup_Metadata
↓
ForEach_SQLTables
↓
Copy_SQL_To_Lakehouse_Incremental
↓
Lookup_MaxWatermark
↓
Update_Watermark
↓
Audit_SQL_Load

On Failure
↓
Log_Error

## Activities

### Lookup_Metadata

Retrieves active Azure SQL source configuration and the last processed watermark.

The pipeline joins:

- MetadataControl
- WatermarkControl

Only active Azure SQL sources are processed.

### ForEach_SQLTables

Loops through each configured source table.

### Copy_SQL_To_Lakehouse_Incremental

Retrieves records where the watermark column is greater than the previously processed watermark.

The data is loaded into the Fabric Lakehouse using an Upsert operation.

The configured BusinessKey is used as the upsert key.

### Lookup_MaxWatermark

Retrieves the latest maximum watermark value from the source table after processing.

### Update_Watermark

Updates the WatermarkControl table with the latest processed watermark value.

### Audit_SQL_Load

Calls the Azure SQL stored procedure:

usp_InsertETLAudit

The audit process records:

- Pipeline name
- Table name
- Run start time
- Run end time
- Status
- Rows read
- Rows inserted
- Rows updated
- Rows rejected

### Log_Error

Calls the Azure SQL stored procedure:

usp_InsertETLError

This records pipeline errors when processing fails.

## Source

Azure SQL Database

## Target

Fabric Lakehouse:

LH_IncrementalLoad

## Loading Strategy

The pipeline uses:

- Metadata-driven processing
- Watermark-based incremental extraction
- Lakehouse Upsert
- Centralized ETL audit logging
- Centralized error logging
