CREATE TABLE [Staging].[Dim_GLCode] (
    [Code]                     INT           NULL,
    [DeltaHash]                BIGINT        NULL,
    [DimGLCodeID]              INT           NULL,
    [IsNormalDebit]            BIT           NULL,
    [Key]                      VARCHAR (100) NULL,
    [Name]                     VARCHAR (255) NULL,
    [SourceKey]                INT           NOT NULL,
    [SourceKeyHash]            BIGINT        NULL,
    [TextDescription]          VARCHAR (100) NULL,
    [Dim_GLCodeGroupSourceKey] INT           NOT NULL
);

