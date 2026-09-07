# PL_Warehouse_Load

## Overview

This Microsoft Fabric pipeline loads curated data from the Fabric Lakehouse into the Fabric Warehouse.

The pipeline executes Warehouse stored procedures in sequence.

## Pipeline Flow

Load_DimCustomer
↓
Load_DimProduct
↓
Load_FactSales
↓
Load_FactReturns
↓
Extend_DimDate
↓
Audit_Warehouse_Load

On Failure
↓
Teams_Notify_Failure

## Activities

### Load_DimCustomer

Executes:

usp_LoadDimCustomer

Loads DimCustomer into the Fabric Warehouse.

### Load_DimProduct

Executes:

usp_LoadDimProduct

Loads DimProduct into the Fabric Warehouse.

### Load_FactSales

Executes:

usp_MergeFactSales

Uses MERGE logic to load new and updated FactSales records.

### Load_FactReturns

Executes:

usp_MergeFactReturns

Uses MERGE logic to load new and updated FactReturns records.

### Extend_DimDate

Executes:

usp_ExtendDimDate

Extends the DimDate table to support new reporting dates.

### Audit_Warehouse_Load

Calls the centralized Azure SQL stored procedure:

usp_InsertETLAudit

This records the Warehouse pipeline execution.

### Teams_Notify_Failure

Sends a Microsoft Teams notification when the Warehouse load process fails.

The notification includes:

- Pipeline name
- Failure message
- Pipeline trigger time

## Source

Fabric Lakehouse:

LH_IncrementalLoad

## Target

Fabric Warehouse:

WH_IncrementalLoad

## Loading Strategy

### Dimension Tables

- DimCustomer
- DimProduct

Loaded using the Warehouse dimension load procedures.

### Fact Tables

- FactSales
- FactReturns

Loaded using incremental MERGE procedures.

## Monitoring

Successful execution is recorded in the centralized ETL audit table.

Warehouse pipeline failures trigger a Microsoft Teams notification.
