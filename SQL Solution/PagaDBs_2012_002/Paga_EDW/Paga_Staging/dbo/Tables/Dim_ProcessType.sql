CREATE TABLE [dbo].[Dim_ProcessType] (
    [DimProcessTypeID] INT          IDENTITY (1, 1) NOT NULL,
    [SourceKey]        VARCHAR (50) NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimProcessType_SourceKey]
    ON [dbo].[Dim_ProcessType]([SourceKey] ASC);

