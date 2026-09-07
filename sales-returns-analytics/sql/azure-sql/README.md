# Azure SQL Database Scripts

This folder contains SQL scripts used for the Azure SQL Database source system.

## Source Tables

The Azure SQL Database contains the following business tables:

- DimCustomer
- DimProduct
- FactSales

## Control Tables

The ETL process uses control and monitoring tables:

- MetadataControl
- WatermarkControl
- ETLAuditLog
- ETLErrorLog

## Purpose

These SQL scripts support:

- Source table creation
- Initial data setup
- Metadata-driven processing
- Incremental loading
- Watermark tracking
- ETL audit logging
- Error logging

The data from Azure SQL Database is loaded into the Microsoft Fabric Lakehouse using the Initial Load and Incremental Load pipelines.
