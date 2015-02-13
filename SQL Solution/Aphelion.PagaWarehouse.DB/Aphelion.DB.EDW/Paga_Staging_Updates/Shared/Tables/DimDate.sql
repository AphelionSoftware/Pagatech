﻿CREATE TABLE [Shared].[DimDate] (
    [DimDateID]               INT           NOT NULL,
    [FullDate]                DATETIME      NULL,
    [FullDateUK]              CHAR (10)     NULL,
    [FullDateUSA]             CHAR (10)     NULL,
    [DayOfMonth]              VARCHAR (2)   NULL,
    [DaySuffix]               VARCHAR (4)   NULL,
    [DayName]                 VARCHAR (9)   NULL,
    [DayOfWeekUSA]            CHAR (1)      NULL,
    [DayOfWeekUK]             CHAR (1)      NULL,
    [DayOfWeekInMonth]        VARCHAR (2)   NULL,
    [DayOfWeekInYear]         VARCHAR (2)   NULL,
    [DayOfQuarter]            VARCHAR (3)   NULL,
    [DayOfYear]               VARCHAR (3)   NULL,
    [WeekOfMonth]             VARCHAR (1)   NULL,
    [WeekOfQuarter]           VARCHAR (2)   NULL,
    [WeekOfYear]              VARCHAR (2)   NULL,
    [Month]                   VARCHAR (2)   NULL,
    [MonthName]               VARCHAR (9)   NULL,
    [MonthOfQuarter]          VARCHAR (2)   NULL,
    [Quarter]                 CHAR (1)      NULL,
    [QuarterName]             VARCHAR (9)   NULL,
    [Year]                    CHAR (4)      NULL,
    [YearName]                CHAR (7)      NULL,
    [MonthYear]               CHAR (10)     NULL,
    [MMYYYY]                  CHAR (6)      NULL,
    [FirstDayOfMonth]         DATE          NULL,
    [LastDayOfMonth]          DATE          NULL,
    [FirstDayOfQuarter]       DATE          NULL,
    [LastDayOfQuarter]        DATE          NULL,
    [FirstDayOfYear]          DATE          NULL,
    [LastDayOfYear]           DATE          NULL,
    [IsWeekday]               BIT           NULL,
    [IsHolidayUSA]            BIT           NULL,
    [HolidayUSA]              VARCHAR (50)  NULL,
    [IsHolidayUK]             BIT           NULL,
    [HolidayUK]               VARCHAR (50)  NULL,
    [IsHolidayNG]             BIT           NULL,
    [HolidayNG]               VARCHAR (50)  NULL,
    [FiscalDayOfYear]         VARCHAR (3)   NULL,
    [FiscalWeekOfYear]        VARCHAR (3)   NULL,
    [FiscalMonth]             VARCHAR (2)   NULL,
    [FiscalQuarter]           CHAR (1)      NULL,
    [FiscalQuarterName]       VARCHAR (9)   NULL,
    [FiscalYear]              CHAR (4)      NULL,
    [FiscalYearName]          CHAR (7)      NULL,
    [FiscalMonthYear]         CHAR (10)     NULL,
    [FiscalMMYYYY]            CHAR (6)      NULL,
    [FiscalFirstDayOfMonth]   DATE          NULL,
    [FiscalLastDayOfMonth]    DATE          NULL,
    [FiscalFirstDayOfQuarter] DATE          NULL,
    [FiscalLastDayOfQuarter]  DATE          NULL,
    [FiscalFirstDayOfYear]    DATE          NULL,
    [FiscalLastDayOfYear]     DATE          NULL,
    [sys_ModifiedBy]          VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]          DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]           VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]           DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimDateID] PRIMARY KEY CLUSTERED ([DimDateID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromStaging', @value = N'true', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimDate';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimDate';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimDate';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimDate';

