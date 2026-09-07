# Fabric Sales & Returns Platform – Case Study

## Overview

This folder contains the complete case study for the **Fabric Sales & Returns Platform**, an end-to-end data engineering project built using Microsoft Azure and Microsoft Fabric.

The project demonstrates how sales and returns data moves from multiple source systems through ingestion, transformation, storage, and modeling layers.

---

## Project Architecture

Azure SQL Database ──┐
                    ├──> Microsoft Fabric Lakehouse ──> Fabric Warehouse ──> Semantic Model ──> Power BI
Azure Blob Storage ──┘

---

## Technologies Used

- Azure SQL Database
- Azure Blob Storage
- Microsoft Fabric
- Fabric Data Factory Pipelines
- Fabric Lakehouse
- PySpark Notebook
- Delta Lake
- Fabric Warehouse
- Power BI Semantic Model
- Direct Lake

---

## Data Pipelines

The project includes four main pipelines:

### 1. Azure SQL Initial Load

Performs a one-time full load of historical data from Azure SQL Database into the Fabric Lakehouse.

The pipeline:

- Reads source table metadata
- Loads all historical records
- Stores the initial watermark value
- Prepares the platform for future incremental loads

---

### 2. Azure SQL Incremental Load

Loads only new or modified records from Azure SQL Database.

The pipeline uses:

- Metadata-driven processing
- Watermark-based incremental loading
- Dynamic table iteration
- ETL audit logging
- Error logging

---

### 3. Blob Returns Event to Lakehouse

Automatically processes returns data when a new file arrives in Azure Blob Storage.

The pipeline:

- Detects new files
- Loads data into the Lakehouse
- Executes transformation logic
- Updates ETL audit information
- Logs errors when failures occur

---

### 4. Warehouse Load

Loads curated data from the Fabric Lakehouse into the Fabric Warehouse.

The Warehouse layer uses a star schema containing:

**Fact Tables**

- FactSales
- FactReturns

**Dimension Tables**

- DimCustomer
- DimProduct
- DimDate

---

## Data Processing

Data processing is performed using a PySpark notebook.

The notebook supports:

- Schema validation
- Data transformation
- Delta Lake processing
- MERGE operations
- Insert and update handling

This approach supports repeatable and reliable data loading into the Lakehouse.

---

## ETL Monitoring and Logging

The project includes centralized operational logging.

### ETL Audit

Tracks pipeline execution details such as:

- Pipeline name
- Table name
- Start time
- End time
- Status
- Rows read
- Rows inserted
- Rows updated
- Rows rejected

### Error Logging

Captures pipeline failures including:

- Pipeline name
- Table name
- Error time
- Error message

This provides better visibility into pipeline execution and failures.

---

## Semantic Model

A Power BI Semantic Model is created using the Fabric Warehouse data.

The model uses:

- Direct Lake
- Fact and dimension tables
- Table relationships
- Star schema design

The semantic model is connected to Power BI and is ready for report development.

---

## Case Study

The complete project implementation, architecture, pipeline walkthroughs, data processing, Warehouse design, and semantic model are documented in the case study PDF included in this folder.

---

## Key Features

- End-to-end data engineering architecture
- Azure SQL initial load
- Watermark-based incremental loading
- Event-driven Blob ingestion
- Metadata-driven pipelines
- PySpark transformation
- Delta Lake MERGE operations
- ETL audit logging
- Error logging
- Fabric Lakehouse
- Fabric Warehouse
- Star schema data model
- Direct Lake Semantic Model
- Power BI connectivity

---

## Repository Structure

The complete project repository includes:

```text
sales-returns-analytics/
│
├── architecture/
│
├── azure/
│
├── sql/
│   ├── azure-sql/
│   └── warehouse/
│
├── pipelines/
│   ├── PL_AzureSQL_InitialLoad
│   ├── PL_AzureSQL_IncrementalLoad
│   ├── PL_Blob_Returns_Event_To_Lakehouse
│   └── PL_Warehouse_Load
│
├── notebooks/
│
├── semantic-model/
│
└── case-study/
    ├── README.md
    └── Fabric_Project_CaseStudy.pdf
