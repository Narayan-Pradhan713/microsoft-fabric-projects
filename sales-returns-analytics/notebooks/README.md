# Returns Processing Notebook

This folder contains the PySpark notebook used to process Returns CSV files in the Microsoft Fabric Sales & Returns Analytics solution.

## Notebook

### returns-processing-notebook.ipynb

The notebook processes Returns CSV files after they are copied from Azure Blob Storage to the Fabric Lakehouse Files area.

## Data Flow

Azure Blob Storage
↓
Returns CSV File
↓
Activator
↓
PL_Blob_Returns_Event_To_Lakehouse
↓
Lakehouse Files
↓
Returns Processing PySpark Notebook
↓
Lakehouse Delta Table
↓
Fabric Warehouse

## Processing Steps

The notebook performs the following operations:

1. Reads the Returns CSV file from the Lakehouse Files area.
2. Processes and transforms the Returns data using PySpark.
3. Applies required data transformations and validations.
4. Loads the processed Returns data into the Lakehouse Delta table.
5. Makes the processed data available for the Warehouse load process.

## Source

Returns CSV files stored in:

Azure Blob Storage

The files are copied to the Fabric Lakehouse Files area by the Blob Returns pipeline.

## Target

Processed Returns data is stored in the Fabric Lakehouse as a Delta table.

## Pipeline Integration

This notebook is executed by:

`PL_Blob_Returns_Event_To_Lakehouse`

The pipeline passes the Returns file for processing after copying it from Azure Blob Storage to the Lakehouse.

## Technology Used

- Microsoft Fabric
- PySpark
- Fabric Lakehouse
- Delta Tables
- Azure Blob Storage
