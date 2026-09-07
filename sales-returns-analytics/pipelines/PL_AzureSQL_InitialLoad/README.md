# PL_AzureSQL_InitialLoad

## Overview

This Microsoft Fabric pipeline performs the initial full load of Azure SQL source tables into the Fabric Lakehouse.

The pipeline uses the MetadataControl table to dynamically identify the source tables and target Lakehouse tables.

## Pipeline Flow

Lookup_Metadata
↓
ForEach_SQLTables
↓
Copy_SQL_To_Lakehouse
↓
Lookup_MaxWatermark
↓
Update_Watermark

## Activities

### Lookup_Metadata

Retrieves source table configuration from the MetadataControl table.

The metadata includes:

- EntityName
- SourceType
- SourceObject
- TargetTable
- WatermarkColumn
- BusinessKey
- LoadType
- TargetType

### ForEach_SQLTables

Loops through each source table returned by the metadata lookup.

### Copy_SQL_To_Lakehouse

Copies the full source table data from Azure SQL Database to the Fabric Lakehouse.

The target table is dynamically selected using the TargetTable metadata value.

The initial load uses an overwrite approach.

### Lookup_MaxWatermark

Retrieves the maximum value of the configured watermark column from the source table.

### Update_Watermark

Updates the WatermarkControl table with the latest maximum watermark value.

This prepares the source metadata for future incremental loads.

## Source

Azure SQL Database

## Target

Fabric Lakehouse:

LH_IncrementalLoad

## Purpose

This pipeline is used to establish the initial Lakehouse data before incremental processing begins.
