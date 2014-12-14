CREATE TABLE [dbo].[Dim_ProcessStatus] (
    [DimProcessStatusID] INT          IDENTITY (1, 1) NOT NULL,
    [SourceKey]          VARCHAR (50) NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimProcessStatus_SourceKey]
    ON [dbo].[Dim_ProcessStatus]([SourceKey] ASC);

