CREATE TABLE [dbo].[Dim_ProcessChannel] (
    [DimProcessChannelID] INT          IDENTITY (1, 1) NOT NULL,
    [SourceKey]           VARCHAR (50) NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimProcessChannel_SourceKey]
    ON [dbo].[Dim_ProcessChannel]([SourceKey] ASC);

