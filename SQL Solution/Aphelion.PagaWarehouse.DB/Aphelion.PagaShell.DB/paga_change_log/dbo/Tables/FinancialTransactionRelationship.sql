CREATE TABLE [dbo].[FinancialTransactionRelationship] (
    [SYS_CHANGE_VERSION]                 BIGINT           NULL,
    [SYS_CHANGE_CREATION_VERSION]        BIGINT           NULL,
    [SYS_CHANGE_OPERATION]               NCHAR (1)        NULL,
    [SYS_CHANGE_COLUMNS]                 VARBINARY (4100) NULL,
    [SYS_CHANGE_CONTEXT]                 VARBINARY (128)  NULL,
    [FinancialTransactionRelationshipId] INT              NOT NULL
);




GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT * FROM CHANGETABLE(CHANGES dbo.FinancialTransactionRelationship,0)  AS change_log', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialTransactionRelationship';


GO
CREATE CLUSTERED INDEX [ix_FinancialTransactionRelationship_FinancialTransactionRelationshipId]
    ON [dbo].[FinancialTransactionRelationship]([FinancialTransactionRelationshipId] ASC);

