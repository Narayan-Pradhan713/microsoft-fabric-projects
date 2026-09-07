# Azure SQL Stored Procedures

This folder contains reusable Azure SQL stored procedures used for centralized ETL auditing and error logging.

## Stored Procedures

### usp_InsertETLAudit

Used to insert ETL audit information into the ETLAudit table.

This procedure is used by pipelines to record execution details such as:

- Pipeline name
- Table name
- Run start time
- Run end time
- Execution status
- Rows read
- Rows inserted
- Rows updated
- Rows rejected
- Error message

The ETL audit process provides centralized monitoring of pipeline and data load executions.

### usp_InsertETLError

Used to insert error details into the ETLErrorLog table when a pipeline or ETL activity fails.

The error log captures information such as:

- Pipeline name
- Table name
- Error time
- Error message

This provides centralized error tracking and helps troubleshoot failures across the ETL process.

## Usage

These stored procedures are shared across the Sales & Returns Analytics solution and can be used by:

- Azure SQL Initial Load Pipeline
- Azure SQL Incremental Load Pipeline
- Returns Processing Pipeline
- Warehouse Load Pipeline

Centralized audit and error logging helps monitor pipeline execution and troubleshoot failures.
