-- =============================================
-- Create ETL Audit and Error Log Tables
-- =============================================


-- =============================================
-- ETL Audit Log
-- Tracks pipeline execution details
-- =============================================

CREATE TABLE dbo.ETLAudit
(
    AuditID INT IDENTITY(1,1) PRIMARY KEY,
    PipelineName VARCHAR(200) NOT NULL,
    TableName VARCHAR(200) NOT NULL,
    RunStartTime DATETIME2 NOT NULL,
    RunEndTime DATETIME2 NULL,
    Status VARCHAR(50) NOT NULL,
    RowsRead INT DEFAULT 0,
    RowsInserted INT DEFAULT 0,
    RowsUpdated INT DEFAULT 0,
    RowsRejected INT DEFAULT 0,
    ErrorMessage VARCHAR(MAX) NULL
);


-- =============================================
-- ETL Error Log
-- Tracks pipeline errors
-- =============================================

CREATE TABLE dbo.ETLErrorLog
(
    ErrorLogID INT IDENTITY(1,1) PRIMARY KEY,
    PipelineName VARCHAR(200) NOT NULL,
    TableName VARCHAR(200) NULL,
    ErrorTime DATETIME2 NOT NULL DEFAULT GETDATE(),
    ErrorMessage VARCHAR(MAX) NOT NULL
);