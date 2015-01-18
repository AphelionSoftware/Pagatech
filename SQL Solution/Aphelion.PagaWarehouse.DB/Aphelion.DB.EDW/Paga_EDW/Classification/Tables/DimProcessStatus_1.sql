﻿CREATE TABLE [Classification].[DimProcessStatus] (
    [DimProcessStatusID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]          VARCHAR (255) NOT NULL,
    [Name]               VARCHAR (255) NOT NULL,
    [SourceKeyHash]      BIGINT        NULL,
    [DeltaHash]          BIGINT        NULL,
    [sys_ModifiedBy]     VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]     DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]      VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]      DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimProcessStatusID] PRIMARY KEY CLUSTERED ([DimProcessStatusID] ASC)
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimProcessStatus_SourceKey]
    ON [Classification].[DimProcessStatus]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'DeltaHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.ProcessStatus', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessStatus';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessStatus';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessStatus';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2000', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessStatus';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'ProcessStatusID', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessStatus';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT  			SourceKey , 			base_query.name 		FROM  		  	(SELECT 	ProcessStatusID AS SourceKey,  	 CONVERT(VARCHAR(255),ProcessStatusID) AS Name FROM dbo.ProcessStatus) as base_query', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessStatus';



