CREATE TABLE [Staging].[Finance_DimGLCodeGroup] (
    [SourceKey]          VARCHAR (255) NOT NULL,
    [Name]               VARCHAR (255) NOT NULL,
    [Code]               VARCHAR (50)  NOT NULL,
    [GLHeadingSourceKey] INT           NOT NULL,
    [GLCodeRange]        VARCHAR (255) NULL
);



