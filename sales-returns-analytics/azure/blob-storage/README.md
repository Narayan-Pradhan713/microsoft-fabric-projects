# Azure Blob Storage

Azure Blob Storage is used as the source for Returns CSV files in this project.

## Source Files

The Azure Blob Storage container contains monthly Returns CSV files:

- Returns_2026_01.csv
- Returns_2026_02.csv
- Returns_2026_03.csv
- Returns_2026_04.csv
- Returns_2026_05.csv
- Returns_2026_06.csv

## Processing Flow

1. A new Returns CSV file arrives in Azure Blob Storage.
2. Microsoft Fabric Activator detects the new file.
3. The Returns Processing pipeline is triggered.
4. The CSV file is copied to the Lakehouse Files area.
5. A PySpark notebook cleans and transforms the data.
6. The processed data is stored as Delta tables in the Lakehouse.
