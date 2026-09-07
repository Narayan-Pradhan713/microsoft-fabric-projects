# Fabric Sales & Returns Platform

## End-to-End Data Engineering Project

An end-to-end data engineering project built using **Azure SQL Database, Azure Blob Storage, Microsoft Fabric, PySpark, Delta Lake, Fabric Warehouse, and Power BI**.

This project demonstrates how data moves from multiple source systems through ingestion, transformation, storage, and modeling layers to create a governed analytical platform.

---

# Architecture

```text
Azure SQL Database ──┐
                    │
                    ▼
             Fabric Lakehouse
                    │
                    ▼
             Fabric Warehouse
                    │
                    ▼
              Semantic Model
                    │
                    ▼
                Power BI

Azure Blob Storage ──┘
        │
        ▼
 Fabric Lakehouse
