CREATE TABLE [Staging].[Airtime_DimMobileOperator] (
    [SourceKey]             VARCHAR (255) NOT NULL,
    [Name]                  VARCHAR (255) NOT NULL,
    [Code]                  VARCHAR (50)  NOT NULL,
    [OrganizationSourceKey] VARCHAR (255) NOT NULL,
    [IsActive]              BIT           NULL,
    [change_operation]      CHAR (1)      NULL
);





