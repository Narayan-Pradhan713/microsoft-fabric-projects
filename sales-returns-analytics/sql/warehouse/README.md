# Fabric Warehouse

This folder contains the SQL scripts used to create, load, and validate the Microsoft Fabric Warehouse for the Sales & Returns Analytics project.

## Overview

The Fabric Warehouse is the curated reporting layer of the solution.

Data is loaded from the Lakehouse into the Warehouse using stored procedures. Dimension tables are fully refreshed, while fact tables use incremental MERGE logic.

## Folder Structure

### initial-setup

Contains SQL scripts used to create the Warehouse tables:

- DimCustomer
- DimDate
- DimProduct
- FactSales
- FactReturns

### stored-procedures

Contains stored procedures used to load data from the Lakehouse into the Warehouse:

- usp_LoadDimCustomer
- usp_LoadDimProduct
- usp_MergeFactSales
- usp_MergeFactReturns

### validation

Contains SQL queries used to validate Warehouse data after loading.

The validation checks include:

- Total row counts
- Minimum date
- Maximum date
- Data availability across dimension and fact tables

## Data Loading Flow

Azure SQL Database / Azure Blob Storage
↓
Microsoft Fabric Lakehouse
↓
Lakehouse Delta Tables
↓
Fabric Warehouse
↓
Semantic Model
↓
Power BI Report

## Loading Strategy

### Dimension Tables

DimCustomer and DimProduct are refreshed using a truncate and reload approach.

### Fact Tables

FactSales and FactReturns are loaded incrementally using MERGE statements.

New records are inserted, and existing records are updated when the source UpdatedDate is newer than the Warehouse record.

## Warehouse Tables

| Table | Type | Loading Method |
|---|---|---|
| DimCustomer | Dimension | Full Refresh |
| DimDate | Dimension | Initial Setup |
| DimProduct | Dimension | Full Refresh |
| FactSales | Fact | Incremental MERGE |
| FactReturns | Fact | Incremental MERGE |
