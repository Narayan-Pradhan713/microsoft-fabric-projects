# Power BI

## Overview

This folder represents the Power BI reporting layer of the Sales & Returns Analytics project.

Power BI is connected to the Microsoft Fabric Semantic Model and is ready for creating interactive reports and dashboards using the prepared sales and returns data.

---

## Data Connection

The Power BI report is connected to the Microsoft Fabric Semantic Model.

### Semantic Model

**SM_IncrementalLoad**

The semantic model provides the required data for reporting and analysis.

---

## Available Tables

The following tables are available in Power BI.

### Dimension Tables

- DimCustomer
- DimDate
- DimProduct

### Fact Tables

- FactSales
- FactReturns

---

## Measures Table

A dedicated Measures Table is available for organizing and creating DAX measures.

This helps with:

- Centralizing business calculations
- Organizing DAX measures
- Creating reusable calculations
- Maintaining consistent business logic

---

## Reporting Capability

The connected semantic model can be used to create reports and dashboards for:

- Sales analysis
- Returns analysis
- Customer analysis
- Product analysis
- Time-based analysis

Power BI visuals and reports can be created using the available dimension tables, fact tables, and DAX measures.

---

## Data Flow

```text
Azure SQL Database ──────► Fabric Lakehouse ──────► Fabric Warehouse
                                                           │
Azure Blob Storage ──────► Fabric Lakehouse ──────────────┘
                                                           │
                                                           ▼
                                                    Semantic Model
                                                           │
                                                           ▼
                                                       Power BI
