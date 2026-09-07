# Sales & Returns Semantic Model

## Overview

This folder contains the Microsoft Fabric Direct Lake semantic model used for the Sales & Returns Analytics project.

The semantic model provides a business-friendly data model for reporting and analysis in Power BI.

## Semantic Model

The semantic model is created using:

- Microsoft Fabric
- Direct Lake storage mode
- OneLake
- Lakehouse tables

The model reads data directly from the Lakehouse using Direct Lake.

## Creating the Semantic Model

The following steps were used to create the semantic model:

1. Create a new semantic model in Microsoft Fabric.
2. Enter the semantic model name.
3. Select the project workspace.
4. Select **Direct Lake on OneLake** as the storage mode.
5. Select the required tables.
6. Confirm to create the semantic model.

The selected tables are:

- DimCustomer
- DimDate
- DimProduct
- FactSales
- FactReturns

## Data Model

The semantic model follows a star schema design.

### Fact Tables

#### FactSales

Contains sales transaction data.

Key information includes:

- SaleID
- CustomerID
- ProductID
- SaleDate
- Amount
- Status

#### FactReturns

Contains product return transaction data.

Key information includes:

- ReturnID
- SaleID
- ReturnDate
- ReturnAmount
- ReturnQuantity
- ReturnReason

### Dimension Tables

#### DimCustomer

Contains customer information.

#### DimProduct

Contains product information.

#### DimDate

Contains date and calendar attributes used for time-based analysis.

## Relationships

The semantic model contains relationships between the fact and dimension tables.

Main relationships include:

- DimCustomer → FactSales
- DimProduct → FactSales
- DimDate → FactSales
- DimDate → FactReturns

The relationships support analysis of sales and returns by customer, product, and date.

## Storage Mode

The semantic model uses:

**Direct Lake on OneLake**

This allows Power BI to read data directly from the Microsoft Fabric Lakehouse without importing the data into a traditional Power BI dataset.

## Usage

The semantic model is used as the reporting layer for:

- Sales analysis
- Returns analysis
- Customer analysis
- Product analysis
- Time-based analysis

## Project Flow

Azure SQL Database ──────┐
                         │
                         ▼
                  Fabric Lakehouse
                         │
Azure Blob Storage ──────┤
                         ▼
                  Fabric Warehouse
                         │
                         ▼
                  Semantic Model
                         │
                         ▼
                     Power BI

## Files

- `semantic-model-creation.png` — Semantic model creation process.
- `semantic-model.png` — Data model and relationships.

## Architecture

The semantic model acts as the business and reporting layer between the data platform and Power BI reports.

Lakehouse / Warehouse → Semantic Model → Power BI
