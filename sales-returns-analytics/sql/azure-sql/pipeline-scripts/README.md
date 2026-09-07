# Pipeline SQL Scripts

This folder contains SQL scripts and dynamic SQL expressions used by Microsoft Fabric pipelines to process data from Azure SQL Database.

## Incremental Load Pipeline

The PL_AzureSQL_IncrementalLoad pipeline uses these scripts to support metadata-driven incremental loading.

### Scripts

- `lookup-metadata.sql`  
  Retrieves active source table configuration from the MetadataControl table.

- `lookup-max-watermark.sql`  
  Retrieves the latest watermark value from the source table after data processing.

- `update-watermark.sql`  
  Updates the WatermarkControl table with the latest processed watermark value.

## Purpose

These scripts support:

- Metadata-driven processing
- Incremental data extraction
- Watermark tracking
- Updating the last processed watermark

## Related Tables

The pipeline scripts interact with:

- MetadataControl
- WatermarkControl
- ETLAudit
- ETLErrorLog
