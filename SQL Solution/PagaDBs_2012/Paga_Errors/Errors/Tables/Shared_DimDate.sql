﻿CREATE TABLE [Errors].[Shared_DimDate] (
    [QueueID]                 INT           NOT NULL,
    [SSISErrorCode]           INT           NOT NULL,
    [SSISErrorColumn]         INT           NOT NULL,
    [PackageName]             VARCHAR (255) NOT NULL,
    [ErrorType]               VARCHAR (255) NOT NULL,
    [DayName]                 VARCHAR (9)   NULL,
    [DayOfMonth]              VARCHAR (2)   NULL,
    [DayOfQuarter]            VARCHAR (3)   NULL,
    [DayOfWeekInMonth]        VARCHAR (2)   NULL,
    [DayOfWeekInYear]         VARCHAR (2)   NULL,
    [DayOfWeekUK]             CHAR (1)      NULL,
    [DayOfWeekUSA]            CHAR (1)      NULL,
    [DayOfYear]               VARCHAR (3)   NULL,
    [DaySuffix]               VARCHAR (4)   NULL,
    [FirstDayOfMonth]         DATE          NULL,
    [FirstDayOfQuarter]       DATE          NULL,
    [FirstDayOfYear]          DATE          NULL,
    [FiscalDayOfYear]         VARCHAR (3)   NULL,
    [FiscalFirstDayOfMonth]   DATE          NULL,
    [FiscalFirstDayOfQuarter] DATE          NULL,
    [FiscalFirstDayOfYear]    DATE          NULL,
    [FiscalLastDayOfMonth]    DATE          NULL,
    [FiscalLastDayOfQuarter]  DATE          NULL,
    [FiscalLastDayOfYear]     DATE          NULL,
    [FiscalMMYYYY]            CHAR (6)      NULL,
    [FiscalMonth]             VARCHAR (2)   NULL,
    [FiscalMonthYear]         CHAR (10)     NULL,
    [FiscalQuarter]           CHAR (1)      NULL,
    [FiscalQuarterName]       VARCHAR (9)   NULL,
    [FiscalWeekOfYear]        VARCHAR (3)   NULL,
    [FiscalYear]              CHAR (4)      NULL,
    [FiscalYearName]          CHAR (7)      NULL,
    [FullDateUK]              CHAR (10)     NULL,
    [FullDateUSA]             CHAR (10)     NULL,
    [HolidayNG]               VARCHAR (50)  NULL,
    [HolidayUK]               VARCHAR (50)  NULL,
    [HolidayUSA]              VARCHAR (50)  NULL,
    [LastDayOfMonth]          DATE          NULL,
    [LastDayOfQuarter]        DATE          NULL,
    [LastDayOfYear]           DATE          NULL,
    [MMYYYY]                  CHAR (6)      NULL,
    [Month]                   VARCHAR (2)   NULL,
    [MonthName]               VARCHAR (9)   NULL,
    [MonthOfQuarter]          VARCHAR (2)   NULL,
    [MonthYear]               CHAR (10)     NULL,
    [Quarter]                 CHAR (1)      NULL,
    [QuarterName]             VARCHAR (9)   NULL,
    [WeekOfMonth]             VARCHAR (1)   NULL,
    [WeekOfQuarter]           VARCHAR (2)   NULL,
    [WeekOfYear]              VARCHAR (2)   NULL,
    [Year]                    CHAR (4)      NULL,
    [YearName]                CHAR (7)      NULL
);

