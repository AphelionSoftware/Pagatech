﻿CREATE TABLE [Errors].[FactAirtimeStockMovement] (
    [QueueID]                         INT             NOT NULL,
    [ErrorCode]                       INT             NOT NULL,
    [ErrorColumn]                     INT             NOT NULL,
    [PackageName]                     VARCHAR (255)   NOT NULL,
    [FactAirtimeStockMovementID]      INT             NULL,
    [CitySourceKey]                   VARCHAR (255)   NULL,
    [DateSourceKey]                   VARCHAR (255)   NULL,
    [DimPagaAccountID]                INT             NULL,
    [MobileOperatorSourceKey]         VARCHAR (255)   NULL,
    [MovementAmount]                  DECIMAL (18, 2) NULL,
    [OrganizationUnitLevel5SourceKey] VARCHAR (255)   NULL,
    [RunID]                           INT             NOT NULL,
    [DimCityID]                       INT             NULL,
    [DimDateID]                       INT             NULL,
    [DimMobileOperatorID]             INT             NULL,
    [DimOrganizationUnitLevel5ID]     INT             NULL
);

