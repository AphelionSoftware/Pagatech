CREATE TABLE [Staging].[Airtime_DimMobileOperator] (
    [Name]                  VARCHAR (255) NOT NULL,
    [Code]                  VARCHAR (50)  NOT NULL,
    [OrganizationSourceKey] INT           NOT NULL,
    [IsActive]              BIT           NULL
);

