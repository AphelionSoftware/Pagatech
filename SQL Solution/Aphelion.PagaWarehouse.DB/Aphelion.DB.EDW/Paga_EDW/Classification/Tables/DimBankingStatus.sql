CREATE TABLE [Classification].[DimBankingStatus] (
    [DimBankingStatusID]   INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]            VARCHAR (255) NOT NULL,
    [Name]                 VARCHAR (255) NULL,
    [sys_CreatedBy]        VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]        DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]       VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]       DATETIME      DEFAULT (getdate()) NOT NULL,
    [IsActive]             BIT           DEFAULT ((1)) NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NOT NULL,
    CONSTRAINT [pk_DimBankingStatus] PRIMARY KEY CLUSTERED ([DimBankingStatusID] ASC)
);










GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimBankingStatus_SourceKey]
    ON [Classification].[DimBankingStatus]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = N'UPDATE edw 
	SET 
	edw.SourceKey = stg.SourceKey,edw.Name = stg.Name
	FROM Classification.DimBankingStatus AS edw
	INNER JOIN Paga_Staging.Updates.Classification_DimBankingStatus AS stg ON
		edw.SourceKey = stg.SourceKey;
	GO', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimBankingStatus';

