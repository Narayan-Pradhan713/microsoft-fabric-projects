# Power BI Report

## Overview

This folder contains the Power BI reporting layer for the Sales & Returns Analytics project.

The Power BI report is connected live to the Microsoft Fabric Semantic Model using Direct Lake.

The report provides interactive analytics for sales, returns, customers, and products.

## Data Connection

The Power BI report uses a live connection to the Microsoft Fabric Semantic Model.

**Semantic Model:**
- SM_IncrementalLoad

The semantic model provides the following tables:

### Dimension Tables

- DimCustomer
- DimDate
- DimProduct

### Fact Tables

- FactSales
- FactReturns

## Measures Table

A dedicated Measures Table is used to organize and centralize DAX measures.

This helps maintain:

- Better report organization
- Reusable calculations
- Easier measure management
- Consistent business logic

## Report Pages

### 1. Executive Overview

Provides a high-level overview of business performance.

### 2. Sales Analysis

Provides detailed analysis of sales performance and trends.

### 3. Returns Analysis

Provides analysis of product returns and return trends.

### 4. Customer & Product

Provides analysis of customers and product performance.

## Architecture

The Power BI report consumes data through the Microsoft Fabric Semantic Model.

```text
Azure SQL Database ──┐
                     │
                     ▼
              Fabric Lakehouse
                     │
Azure Blob Storage ──┤
                     ▼
              Fabric Warehouse
                     │
                     ▼
              Semantic Model
                     │
                     ▼
                Power BI
