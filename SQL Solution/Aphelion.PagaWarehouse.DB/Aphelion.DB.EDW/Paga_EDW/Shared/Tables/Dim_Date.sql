CREATE TABLE [Shared].[DimDate] (
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
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimDate';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromStaging', @value = N'true', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimDate';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimDate';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimDate';


GO
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = N'UPDATE edw 
	SET 
	edw.FullDate = stg.FullDate,edw.FullDateUK = stg.FullDateUK,edw.FullDateUSA = stg.FullDateUSA,edw.DayOfMonth = stg.DayOfMonth,edw.DaySuffix = stg.DaySuffix,edw.DayName = stg.DayName,edw.DayOfWeekUSA = stg.DayOfWeekUSA,edw.DayOfWeekUK = stg.DayOfWeekUK,edw.DayOfWeekInMonth = stg.DayOfWeekInMonth,edw.DayOfWeekInYear = stg.DayOfWeekInYear,edw.DayOfQuarter = stg.DayOfQuarter,edw.DayOfYear = stg.DayOfYear,edw.WeekOfMonth = stg.WeekOfMonth,edw.WeekOfQuarter = stg.WeekOfQuarter,edw.WeekOfYear = stg.WeekOfYear,edw.Month = stg.Month,edw.MonthName = stg.MonthName,edw.MonthOfQuarter = stg.MonthOfQuarter,edw.Quarter = stg.Quarter,edw.QuarterName = stg.QuarterName,edw.Year = stg.Year,edw.YearName = stg.YearName,edw.MonthYear = stg.MonthYear,edw.MMYYYY = stg.MMYYYY,edw.FirstDayOfMonth = stg.FirstDayOfMonth,edw.LastDayOfMonth = stg.LastDayOfMonth,edw.FirstDayOfQuarter = stg.FirstDayOfQuarter,edw.LastDayOfQuarter = stg.LastDayOfQuarter,edw.FirstDayOfYear = stg.FirstDayOfYear,edw.LastDayOfYear = stg.LastDayOfYear,edw.IsWeekday = stg.IsWeekday,edw.IsHolidayUSA = stg.IsHolidayUSA,edw.HolidayUSA = stg.HolidayUSA,edw.IsHolidayUK = stg.IsHolidayUK,edw.HolidayUK = stg.HolidayUK,edw.IsHolidayNG = stg.IsHolidayNG,edw.HolidayNG = stg.HolidayNG,edw.FiscalDayOfYear = stg.FiscalDayOfYear,edw.FiscalWeekOfYear = stg.FiscalWeekOfYear,edw.FiscalMonth = stg.FiscalMonth,edw.FiscalQuarter = stg.FiscalQuarter,edw.FiscalQuarterName = stg.FiscalQuarterName,edw.FiscalYear = stg.FiscalYear,edw.FiscalYearName = stg.FiscalYearName,edw.FiscalMonthYear = stg.FiscalMonthYear,edw.FiscalMMYYYY = stg.FiscalMMYYYY,edw.FiscalFirstDayOfMonth = stg.FiscalFirstDayOfMonth,edw.FiscalLastDayOfMonth = stg.FiscalLastDayOfMonth,edw.FiscalFirstDayOfQuarter = stg.FiscalFirstDayOfQuarter,edw.FiscalLastDayOfQuarter = stg.FiscalLastDayOfQuarter,edw.FiscalFirstDayOfYear = stg.FiscalFirstDayOfYear,edw.FiscalLastDayOfYear = stg.FiscalLastDayOfYear
	FROM Shared.DimDate AS edw
	INNER JOIN Paga_Staging.Updates.Shared_DimDate AS stg ON
		edw.SourceKey = stg.SourceKey;
	GO', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimDate';

