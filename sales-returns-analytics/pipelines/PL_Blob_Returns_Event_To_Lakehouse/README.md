# PL_Blob_Returns_Event_To_Lakehouse

## Overview

This Microsoft Fabric pipeline processes Returns CSV files received from Azure Blob Storage.

The pipeline is designed to process a returns file and load the processed data into the Fabric Lakehouse.

## Pipeline Flow

Azure Blob Storage
↓
Copy_Returns_Event_File
↓
Lakehouse Files
↓
NB_Process_Returns_Event
↓
Lakehouse Delta Tables
↓
Audit_Blob_Load

On Failure
↓
Log_Error

## Pipeline Parameter

### file_name

The pipeline receives the source Returns CSV file path through the file_name parameter.

The pipeline dynamically extracts the file name before processing.

## Activities

### Copy_Returns_Event_File

Copies the Returns CSV file from Azure Blob Storage to the Fabric Lakehouse Files area.

Source:

Azure Blob Storage

Source Folder:

returns

Target:

Lakehouse Files/Returns

### NB_Process_Returns_Event

Executes the PySpark notebook to process and transform the Returns data.

The notebook receives the file name as a parameter.

The processed data is loaded into Lakehouse Delta tables.

### Audit_Blob_Load

Calls the centralized Azure SQL stored procedure:

usp_InsertETLAudit

This records the successful execution of the Returns processing pipeline.

### Log_Error

Calls the centralized Azure SQL stored procedure:

usp_InsertETLError

This records error details if the Returns processing fails.

## Source

Azure Blob Storage

## Target

Fabric Lakehouse

## Processing Strategy

Returns data follows this process:

1. A new Returns CSV file is received.
2. The file is passed to the pipeline.
3. The CSV file is copied to Lakehouse Files.
4. A PySpark notebook processes the data.
5. Processed data is loaded into Lakehouse Delta tables.
6. Pipeline execution is recorded in the ETL audit log.
